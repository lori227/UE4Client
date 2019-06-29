#include "EventModule.h"
#include "FighterInstance.h"

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
            function->operator()( eventdata->_value, eventdata->_data );
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

void UEventModule::PushEvent( EEventType type, uint64 value /* = 0 */, void* data /* = nullptr */ )
{
    auto eventdata = NewObject<UEventData>();
    eventdata->_type = type;
    eventdata->_value = value;
    eventdata->_data = data;

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