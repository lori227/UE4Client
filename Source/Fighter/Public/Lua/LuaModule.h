// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "LuaState.h"
#include "Public/Headers.h"

DECLARE_LOG_CATEGORY_CLASS( LogLua, All, All );

class FLuaModule
{
public:
    // int
    void Init( ENetType nettype );

    // tick
    void Tick( float deltatime );

    // shutdown
    void Shutdown();

public:
    // conenct ok
    void OnNetConnectOk( uint64 id, int32 code );

    // connect failed
    void OnNetFailed( uint64 id, int32 code );

    // disconnect
    void OnNetDisconnect( uint64 id, int32 code );

    // handle message
    void HandleNetMessage( uint32 msgid, const int8* data, uint32 length );

    // init finish
    void OnLuaInitFinish( uint64 value, void* data );

public:
    // lua path
    FString _lua_path;
private:
    // state
    slua::LuaState _state;

    // lua ok
    bool _is_lua_ok = false;
};
