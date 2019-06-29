// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "Public/Headers.h"
#include "EventDefine.h"
#include "EventModule.generated.h"

UCLASS( BlueprintType, Blueprintable )
class UEventModule : public UObject
{
    GENERATED_UCLASS_BODY()

public:
    ~UEventModule();

    UFUNCTION( BlueprintPure, Category = "CWG|Game" )
    static class UEventModule * GetEventModule();

    // init
    void Init( ENetType nettype );

    // tick
    void Tick( float DeltaTime );

    // shutdown
    void Shutdown();
    ////////////////////////////////////////////////////////////
    // 添加事件
    void PushEvent( EEventType type, uint64 id = 0, int64 value = 0 );

    // 注册事件函数
    template< class T >
    void RegisterEvent( EEventType type, T* object, void( T::*handle )(  uint64, int64 ) )
    {
        EventFunction function = std::bind( handle, object, std::placeholders::_1, std::placeholders::_2 );
        _event_function.Add( type, function );
    }

protected:
    // clear
    void ClearAllEvents();

    // 弹出事件
    UEventData* PullEvent();

private:
    // 互斥锁
    FCriticalSection _mutex;

    // 事件列表
    TArray< UEventData* > _events;

    // 网络回调
    TMap< EEventType, EventFunction > _event_function;
};
