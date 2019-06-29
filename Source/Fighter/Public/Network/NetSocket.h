#pragma once

#include "Public/Headers.h"
#include "Sockets.h"
#include "SocketSubsystem.h"
#include "NetDefine.h"
#include "Runtime/Networking/Public/Networking.h"


DECLARE_LOG_CATEGORY_CLASS( LogNetwork, All, All );

class FSocket;
class FNetSend;
class FNetRecv;
class FNetConnect;
class FNetMessage;

class FNetSocket
{
public:
    FNetSocket();
    ~FNetSocket();

public:
    // init
    void Init( const FString& name, ENetType nettype, uint32 sendqueuesize, uint32 recvqueuesize, bool disconnectsend );

    // close
    void Close();

public:
    // connect
    void OnConnect();

    // failed
    void OnFailed();

    // disconnect
    void OnDisconnect();

    // connect
    void StartConnect( const FString& ip, uint32 port );

    // send
    bool SendNetMessage( uint32 msgid, const int8* data, uint32 length );

    // 弹出一个消息
    FNetMessage* PopNetMessage();

    // 发送ping消息
    void SendPingMessage();
public:
    // socket
    FSocket* _socket = nullptr;

    // 是否连接
    std::atomic<bool> _is_connect;

    // 是否关闭
    std::atomic<bool> _is_close;

    // 消息头长度
    uint32 _message_head_length = 0u;

    // 断线是否需要加入发送队列
    bool _is_disconnect_send = false;

private:
    // 名字
    FString _name;

    // 连接线程
    FNetConnect* _net_connect = nullptr;

    // 发送线程
    FNetSend* _net_send = nullptr;

    // 接收线程
    FNetRecv* _net_recv = nullptr;

    // 最后一次接受消息时间
    uint64 _last_recv_time = 0;
    uint64 _last_send_time = 0;
};
