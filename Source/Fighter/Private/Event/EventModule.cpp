#include "EventModule.h"
#include "FighterInstance.h"
#include "Public/Lua/LuaModule.h"

UEventModule::UEventModule( const FObjectInitializer& ObjectInitializer )
    : Super( ObjectInitializer )
{
}

UEventModule::~UEventModule()
{

}

UEventModule* UEventModule::GetEventModule()
{
    return UFighterInstance::Instance()->_event_module;
}

void UEventModule::Init( ENetType nettype )
{

}

void UEventModule::Tick( float deltatime )
{
    auto eventdata = PullEvent();
    while ( eventdata != nullptr )
    {
        auto function = _event_function.Find( eventdata->_type );
        if ( function != nullptr )
        {
            function->operator()( eventdata->_id, eventdata->_value );
        }
        else
        {
            UFighterInstance::Instance()->_lua_module->OnLuaEvent( ( uint32 )eventdata->_type, eventdata->_id, eventdata->_value );
        }

        eventdata = PullEvent();
    }
}

void UEventModule::Shutdown()
{
    ClearAllEvents();
}

void UEventModule::ClearAllEvents()
{

}

void UEventModule::PushEvent( EEventType type, uint64 id /* = 0 */, int64 value /* = 0 */ )
{
    auto eventdata = NewObject<UEventData>();
    eventdata->_id = id;
    eventdata->_type = type;
    eventdata->_value = value;

    FScopeLock lock( &_mutex );
    _events.Insert( eventdata, 0 );
}

UEventData* UEventModule::PullEvent()
{
    FScopeLock lock( &_mutex );
    if ( _events.Num() == 0 )
    {
        return nullptr;
    }

    auto eventdata = _events.Top();
    _events.Pop();
    return eventdata;
}