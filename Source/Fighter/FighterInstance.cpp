// Fill out your copyright notice in the Description page of Project Settings.


#include "FighterInstance.h"
#include "Public/Network/NetClient.h"
#include "Public/Lua/LuaModule.h"
#include "Public/Event/EventModule.h"

IMPLEMENT_PRIMARY_GAME_MODULE( FDefaultGameModuleImpl, Fighter, "Fighter" );

UFighterInstance* UFighterInstance::_this = nullptr;
UFighterInstance::UFighterInstance( const FObjectInitializer& ObjectInitializer )
    : Super( ObjectInitializer )
{
    _this = this;
}

UFighterInstance::~UFighterInstance()
{
    _this = nullptr;
    __SAFE_DELETE__( _net_client );
    __SAFE_DELETE__( _lua_module );
}

UFighterInstance* UFighterInstance::Instance()
{
    return _this;
}

void UFighterInstance::StartGameInstance()
{
    Super::StartGameInstance();
}

TStatId UFighterInstance::GetStatId() const
{
    return _statid;
}

ETickableTickType UFighterInstance::GetTickableTickType() const
{
    return HasAnyFlags( RF_ClassDefaultObject ) ? ETickableTickType::Never : ETickableTickType::Always;
}

void UFighterInstance::Init()
{
    Super::Init();

#if !UE_SERVER
    // client
    auto nettype = ENetType::Client;
    FString name = TEXT( "client" );
#else
    // server
    auto nettype = ENetType::Server;
    FString name = TEXT( "server" );
#endif


    // net work
    _net_client = new FNetClient();
    _net_client->Init( name, nettype, 200, 200, false );
    _net_client->RegisterMessageFunction( this, &UFighterInstance::HandleNetMessage );

    // lua
    _lua_module = new FLuaModule();
    _lua_module->Init( nettype );

    // event
    _event_module = NewObject< UEventModule >();
    _event_module->Init( nettype );

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    _event_module->PushEvent( EEventType::InitFinish, ( uint32 )nettype );
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    __LOG_INFO__( LogInstance, "[{}] Init...ok!", TCHAR_TO_UTF8( *name ) );
}

void UFighterInstance::Shutdown()
{
    // net
    if ( _net_client != nullptr )
    {
        _net_client->Shutdown();
        _net_client = nullptr;
    }

    // lua
    if ( _lua_module != nullptr )
    {
        _lua_module->Shutdown();
        _lua_module = nullptr;
    }

    if ( _event_module != nullptr )
    {
        _event_module->Shutdown();
        _event_module = nullptr;
    }

    Super::Shutdown();
}

void UFighterInstance::Tick( float deltatime )
{
    // net
    _net_client->Tick( deltatime );

    // event
    _event_module->Tick( deltatime );

    // lua
    _lua_module->Tick( deltatime );
}

void UFighterInstance::LoadComplete( const float loadtime, const FString& mapname )
{
    __LOG_INFO__( LogInstance, "LoadComplete...[{}]!", TCHAR_TO_UTF8( *mapname ) );
}
/////////////////////////////////////////////////////////////////////////////////////
void UFighterInstance::NetConnect( uint64 id, FString& ip, uint32 port )
{
    _net_client->Connect( id, ip, port );
}

bool UFighterInstance::NetSend( uint32 msgid, const int8* data, uint32 length )
{
    return _net_client->SendNetMessage( msgid, data, length );
}

void UFighterInstance::NetClose()
{
    _net_client->Shutdown();
}

void UFighterInstance::HandleNetMessage( uint32 msgid, const int8* data, uint32 length )
{
    _lua_module->HandleNetMessage( msgid, data, length );
}
/////////////////////////////////////////////////////////////////////////////////////
