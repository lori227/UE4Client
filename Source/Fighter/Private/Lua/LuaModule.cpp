
#include "Public/Lua/LuaModule.h"
#include "HAL/PlatformFileManager.h"
#include "GenericPlatformFile.h"
#include "FighterInstance.h"

void FLuaModule::Init( ENetType nettype )
{
    _state.init();
    if ( nettype == ENetType::Client )
    {
        _lua_path = TEXT( "Lua/Client/" );
    }
    else
    {
        _lua_path = TEXT( "Lua/Server/" );
    }

    // register load function
    _state.setLoadFileDelegate( []( const char* fn, uint32 & len, FString & filepath )->uint8*
    {
        auto& platformfile = FPlatformFileManager::Get().GetPlatformFile();
        FString path = FPaths::ProjectContentDir();
        path += UFighterInstance::Instance()->_lua_module->_lua_path;
        path += UTF8_TO_TCHAR( fn );
        TArray<FString> luaExts = { TEXT( ".luac" ), TEXT( ".lua" ) };
        for ( auto ptr = luaExts.CreateConstIterator(); ptr; ++ptr )
        {
            auto fullPath = path + *ptr;
            auto buff = FUtility::ReadFile( platformfile, fullPath, len );
            if ( buff != nullptr )
            {
                filepath = fullPath;
                return buff;
            }
        }

        return nullptr;
    } );

    // load main file
    slua::LuaVar v = _state.doFile( "main" );
    if ( !v.isNil() && v.getAt( 1 ).asInt() == 0 )
    {
        // call init
        _state.call( "Main.Init" );
        _is_lua_ok = true;
    }
    else
    {
        __LOG_ERROR__( LogLua, "{}", "main init failed!" );
    }
}

void FLuaModule::Tick( float deltatime )
{
    _state.tick( deltatime );
    _state.call( "Main.Tick", deltatime );
}

void FLuaModule::Shutdown()
{
    _state.close();
}

////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////
void FLuaModule::OnLuaEvent( uint32 type, uint64 id, int64 value )
{
    _state.call( "Main.OnEvent", type, id, value );
}

void FLuaModule::HandleNetMessage( uint32 msgid, const int8* data, uint32 length )
{
    _state.call( "Main.HandleMessage", msgid, ( void* )data, length );
}



