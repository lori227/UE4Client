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
    // call event
    void OnLuaEvent( uint32 type, uint64 id, int64 value );

    // handle message
    void HandleNetMessage( uint32 msgid, const int8* data, uint32 length );

public:
    // lua path
    FString _lua_path;
private:
    // state
    slua::LuaState _state;

    // lua ok
    bool _is_lua_ok = false;
};
