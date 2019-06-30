// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "lua/lua.hpp"
#include "LuaVar.h"
#include "LuaObject.h"
#include "LuaCppBinding.h"
#include "LuaCppBindingPost.h"

namespace slua
{
    class FLuaBind
    {
        LuaClassBody()
    public:
        // create
        static LuaOwnedPtr<FLuaBind> Create();

        // content path
        static FString ProjectContentDir();

        // net connect
        static void Connect( uint64 id, const char* ip, uint32 port );

        // net send
        static bool Send( uint32 msgid, const char* data, uint32 length );

        // log
        static void LogContent( uint32 level, const char* content );

        // ±£¥Ê≈‰÷√
        static void SaveInt( const char* section, const char* key, int32 data );
        static void SaveDouble( const char* section, const char* key, double data );
        static void SaveString( const char* section, const char* key, const char* data );

        // ∂¡»°≈‰÷√
        static int32 ReadInt( const char* section, const char* key );
        static double ReadDouble( const char* section, const char* key );
        static const char* ReadString( const char* section, const char* key );
    };
}

