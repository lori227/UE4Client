
#include "Public/Lua/LuaBind.h"
#include "Public/Lua/LuaModule.h"
#include "Public/Headers.h"
#include "FighterInstance.h"
#include "Paths.h"
#include "CoreGlobals.h"

namespace slua
{
    LuaOwnedPtr<FLuaBind> FLuaBind::Create()
    {
        return new FLuaBind();
    }

    FString FLuaBind::ProjectContentDir()
    {
        return FPaths::ProjectContentDir();
    }
    
    uint64 FLuaBind::GetTime()
    {
        return ( uint64 )FPlatformTime::Seconds();
    }
    
    void FLuaBind::NetConnect( uint64 id, const char* ip, uint32 port )
    {
        FString strip = UTF8_TO_TCHAR( ip );
        UFighterInstance::Instance()->NetConnect( id, strip, port );
    }

    bool FLuaBind::NetSend( uint32 msgid, const char* data, uint32 length )
    {
        return UFighterInstance::Instance()->NetSend( msgid, ( const int8* )data, length );
    }
    
    void FLuaBind::NetClose()
    {
        UFighterInstance::Instance()->NetClose();
    }

    void FLuaBind::LogContent( uint32 level, const char* content )
    {
        switch ( level )
        {
        case ELogVerbosity::Log:
            __LOG_INFO__( LogLua, "{}", content );
            break;
        case ELogVerbosity::Warning:
            __LOG_WARN__( LogLua, "{}", content );
            break;
        case ELogVerbosity::Error:
            __LOG_ERROR__( LogLua, "{}", content );
            break;
        }
    }

    void FLuaBind::SaveInt( const char* section, const char* key, int32 data )
    {
        if ( GConfig == nullptr )
        {
            return;
        }

        GConfig->SetInt( ANSI_TO_TCHAR( section ), ANSI_TO_TCHAR( key ), data, GGameIni );
        GConfig->Flush( false, GGameIni );
    }

    void FLuaBind::SaveDouble( const char* section, const char* key, double data )
    {
        if ( GConfig == nullptr )
        {
            return;
        }

        GConfig->SetDouble( ANSI_TO_TCHAR( section ), ANSI_TO_TCHAR( key ), data, GGameIni );
        GConfig->Flush( false, GGameIni );
    }

    void FLuaBind::SaveString( const char* section, const char* key, const char* data )
    {
        if ( GConfig == nullptr )
        {
            return;
        }

        GConfig->SetString( ANSI_TO_TCHAR( section ), ANSI_TO_TCHAR( key ), ANSI_TO_TCHAR( data ), GGameIni );
        GConfig->Flush( false, GGameIni );
    }

    int32 FLuaBind::ReadInt( const char* section, const char* key )
    {
        if ( GConfig == nullptr )
        {
            return 0;
        }

        int32 data;
        GConfig->GetInt( ANSI_TO_TCHAR( section ), ANSI_TO_TCHAR( key ), data, GGameIni );
        return data;
    }

    double FLuaBind::ReadDouble( const char* section, const char* key )
    {
        if ( GConfig == nullptr )
        {
            return 0.0f;
        }

        double data;
        GConfig->GetDouble( ANSI_TO_TCHAR( section ), ANSI_TO_TCHAR( key ), data, GGameIni );
        return data;
    }

    const char* FLuaBind::ReadString( const char* section, const char* key )
    {
        if ( GConfig == nullptr )
        {
            return "";
        }

        static FString data;
        GConfig->GetString( ANSI_TO_TCHAR( section ), ANSI_TO_TCHAR( key ), data, GGameIni );

        return TCHAR_TO_UTF8( *data );
    }

    //////////////////////////////////////////////////////////////////////////////
    //////////////////////////////////////////////////////////////////////////////
    DefLuaClass( FLuaBind )
    DefLuaMethod( ContentDir, &FLuaBind::ProjectContentDir )
    DefLuaMethod( GetTime, &FLuaBind::GetTime )
    DefLuaMethod( Log, &FLuaBind::LogContent )
    DefLuaMethod( NetConnect, &FLuaBind::NetConnect )
    DefLuaMethod( NetSend, &FLuaBind::NetSend )
    DefLuaMethod( NetClose, &FLuaBind::NetClose )
    DefLuaMethod( SaveInt, &FLuaBind::SaveInt )
    DefLuaMethod( SaveDouble, &FLuaBind::SaveDouble )
    DefLuaMethod( SaveString, &FLuaBind::SaveString )
    DefLuaMethod( ReadInt, &FLuaBind::ReadInt )
    DefLuaMethod( ReadDouble, &FLuaBind::ReadDouble )
    DefLuaMethod( ReadString, &FLuaBind::ReadString )
    EndDef( FLuaBind, &FLuaBind::Create )
}

