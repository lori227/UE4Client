// Fill out your copyright notice in the Description page of Project Settings.

#include "Public/Network/NetSocket.h"
#include "Public/Network/NetConnect.h"
#include "Public/Network/NetSend.h"
#include "Public/Network/NetRecv.h"
#include "Public/Event/EventModule.h"

FNetSocket::FNetSocket()
{
    _is_close = false;
    _is_connect = false;
}

FNetSocket::~FNetSocket()
{
    __SAFE_DELETE__( _net_connect );
    __SAFE_DELETE__( _net_send );
    __SAFE_DELETE__( _net_recv );
    __SAFE_DELETE_FUNCTION__( _socket, ISocketSubsystem::Get( PLATFORM_SOCKETSUBSYSTEM )->DestroySocket );
}

void FNetSocket::Init( const FString& name, ENetType nettype, uint32 sendqueuesize, uint32 recvqueuesize, bool disconnectsend )
{
    _name = name;
    _is_disconnect_send = disconnectsend;
    _message_head_length = ( nettype == ENetType::Server ? sizeof( FServerHead ) : sizeof( FClientHead ) );

    _net_connect = new FNetConnect( this );
    _net_send = new FNetSend( this, sendqueuesize );
    _net_recv = new FNetRecv( this, recvqueuesize );
}

void FNetSocket::Close()
{
    _is_close = true;
    _is_connect = false;

    if ( _net_connect != nullptr )
    {
        _net_connect->StopService();
    }

    if ( _net_send != nullptr )
    {
        _net_send->StopService();
    }

    if ( _net_recv != nullptr )
    {
        _net_recv->StopService();
    }

    if ( _socket != nullptr )
    {
        _socket->Close();
        __SAFE_DELETE_FUNCTION__( _socket, ISocketSubsystem::Get( PLATFORM_SOCKETSUBSYSTEM )->DestroySocket );
    }
}

void FNetSocket::StartConnect( const FString& ip, uint32 port )
{
    Close();

    _is_close = false;
    if ( _socket == nullptr )
    {
        _socket = ISocketSubsystem::Get( PLATFORM_SOCKETSUBSYSTEM )->CreateSocket( NAME_Stream, _name, false );
        if ( _socket == nullptr )
        {
            __LOG_ERROR__( LogNetwork, "create [{}] socket failed!", TCHAR_TO_UTF8( *_name ) );
            return OnFailed();
        }
    }

    // 开启连接服务
    _net_send->StartService();
    _net_recv->StartService();
    _net_connect->StartService( ip, port );
}

void FNetSocket::OnConnect()
{
    _is_close = false;
    _is_connect = true;
    _last_recv_time = FPlatformTime::Seconds();

    UEventModule::GetEventModule()->PushEvent( EEventType::NetConnect );
}

void FNetSocket::OnFailed()
{
    _is_connect = false;
    if ( !_is_close )
    {
        UEventModule::GetEventModule()->PushEvent( EEventType::FailedConnect );
    }
}

void FNetSocket::OnDisconnect()
{
    _is_connect = false;
    if ( !_is_close )
    {
        UEventModule::GetEventModule()->PushEvent( EEventType::Disconnect );
    }
}

bool FNetSocket::SendNetMessage( uint32 msgid, const int8* data, uint32 length )
{
    if ( _is_close || ( !_is_connect && !_is_disconnect_send ) )
    {
        return false;
    }

    _last_send_time = ( uint64 )FPlatformTime::Seconds();
    return _net_send->SendNetMessage( msgid, data, length );
}

void FNetSocket::SendPingMessage()
{
    // 20秒没有消息通讯, 发送一次ping消息
    // keeplive 经常会失灵, 很久才检测到断开 问题待查
    if ( _last_send_time + 20 > ( uint64 )FPlatformTime::Seconds() )
    {
        return;
    }

    SendNetMessage( 0, nullptr, 0u );
}

FNetMessage* FNetSocket::PopNetMessage()
{
    auto message = _net_recv->PopMessage();
    if ( message != nullptr )
    {
        _last_recv_time = FPlatformTime::Seconds();

        // ping 消息不处理
        if ( message->_head._msgid == 0u )
        {
            message = nullptr;
        }
    }
    else
    {
        if ( _is_connect )
        {
            // 超过60秒没有消息,认为已经断线了,
            // 服务器没20秒发送一个ping消息
            if ( _last_recv_time + 60 < ( uint64 )FPlatformTime::Seconds() )
            {
                __LOG_ERROR__( LogNetwork, "disconnect=[can't recv server message]!" );
                OnDisconnect();
            }
        }
    }

    return message;
}
