﻿// Fill out your copyright notice in the Description page of Project Settings.

#include "Public/Network/NetSend.h"
#include "Public/Network/NetSocket.h"


FNetSend::FNetSend( FNetSocket* socket, uint32 queuesize )
{
    _net_socket = socket;
    _send_queue.Resize( queuesize );
}

FNetSend::~FNetSend()
{
    _send_queue.ClearObject();
}

void FNetSend::StartService()
{
    Init();
    _send_length = 0u;
    Start( TEXT( "NetSend" ), true );

    __LOG_INFO__( LogNetwork, "network send thread start!" );
}

void FNetSend::StopService()
{
    Shutdown();
    _send_queue.ClearObject();
    __LOG_INFO__( LogNetwork, "network send thread stop!" );
}

bool FNetSend::SendNetMessage( uint32 msgid, const int8* data, uint32 length )
{
    bool ok = false;

    // 小于发送的最大buff, 直接添加消息
    if ( length <= ENetDefine::MaxMessageLength )
    {
        ok = SendSingleMessage( msgid, data, length );
    }
    else
    {
        ok = SendMultiMessage( msgid, data, length );
    }

    return ok;
}

bool FNetSend::SendSingleMessage( uint32 msgid, const int8* data, uint32 length )
{
    auto netmessage = FNetMessage::Create( length );
    netmessage->CopyFrom( msgid, data, length );

    return _send_queue.PushObject( netmessage );
}

bool FNetSend::SendMultiMessage( uint32 msgid, const int8* data, uint32 length )
{
    // 消息头
    FServerHead head;
    head._msgid = msgid;
    head._length = length;

    // 子消息个数
    uint32 datalength = length;
    uint32 messagecount = ( datalength + ENetDefine::MaxMessageLength - 1 ) / ENetDefine::MaxMessageLength;

    // 子消息头
    auto headmessage = FNetMessage::Create( FNetMessage::HeadLength() );
    headmessage->_head._child = messagecount;
    headmessage->CopyFrom( ENetDefine::CUT_MSGCHILDBEGIN, reinterpret_cast< int8*>( &head ), FNetMessage::HeadLength() );
    if ( !_send_queue.PushObject( headmessage ) )
    {
        return false;
    }

    // 子消息
    uint32 copydatalength = 0;
    for ( auto i = 0u; i < messagecount; ++i )
    {
        //  需要发送的数据长度
        auto sendlength = __MIN__( datalength, ENetDefine::MaxMessageLength );

        // 消息拷贝
        auto childmessage = FNetMessage::Create( sendlength );
        childmessage->_head._child = i + 1;
        childmessage->CopyFrom( ENetDefine::CUT_MSGCHILD, data + copydatalength, sendlength );
        if ( _send_queue.PushObject( childmessage ) )
        {
            return false;
        }

        // 游标设置
        datalength -= sendlength;
        copydatalength += sendlength;
    }

    return true;
}

void FNetSend::ThreadBody()
{
    // 关闭 或者 断开
    if ( _net_socket->_is_close || !_net_socket->_is_connect )
    {
        return;
    }

    do
    {
        // 消息队列为空
        auto message = _send_queue.Front();
        if ( message == nullptr )
        {
            break;
        }

        // 超过最大长度
        if ( !CheckBuffLength( _send_length, message->_head._length ) )
        {
            break;
        }

        memcpy( _send_buff + _send_length, &message->_head, _net_socket->_message_head_length );
        _send_length += _net_socket->_message_head_length;

        // 不是空消息
        if ( message->_head._length > 0u )
        {
            memcpy( _send_buff + _send_length, message->_data, message->_head._length );
            _send_length += message->_head._length;
        }

        // 释放内存
        _send_queue.PopRemove();
    } while ( true );

    if ( _send_length != 0 )
    {
        SendNetBuff();
    }
}

bool FNetSend::CheckBuffLength( uint32 totallength, uint32 messagelength )
{
    auto sendlength = totallength + _net_socket->_message_head_length + messagelength;
    return ( sendlength <= ENetDefine::MaxReqBuffLength );
}

void FNetSend::SendNetBuff()
{
    int32 sendlength = 0;
    uint32 totallength = 0u;

    do
    {
        auto ok = _net_socket->_socket->Send( ( uint8* )_send_buff + totallength, _send_length, sendlength );
        if ( ok )
        {
            totallength += sendlength;
            _send_length -= sendlength;
            if ( _send_length == 0u )
            {
                break;
            }
        }
        else
        {
            auto state = _net_socket->_socket->GetConnectionState();
            if ( state != SCS_Connected )
            {
                __LOG_ERROR__( LogNetwork, "send failed state=[{}]", ( uint32 )state );

                _send_length = 0u;
                _net_socket->OnDisconnect();
                break;
            }
        }
    } while ( true );
}