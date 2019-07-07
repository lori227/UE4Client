// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "Public/Headers.h"
#include "Public/Tickable.h"
#include "Engine/GameInstance.h"
#include "Public/Event/EventModule.h"
#include "FighterInstance.generated.h"

/**
 * @brief 游戏实例
 * 游戏全局的管理器
 */
DECLARE_LOG_CATEGORY_CLASS( LogInstance, All, All );

class FNetClient;
class FLuaModule;

UCLASS( BlueprintType, Blueprintable )
class UFighterInstance : public UGameInstance, public FTickableGameObject
{
    GENERATED_UCLASS_BODY()

public:
    ~UFighterInstance();
    static UFighterInstance* Instance();

    /** Starts the GameInstance state machine running */
    virtual void StartGameInstance() override;

    // init
    virtual void Init() override;

    // shutdown
    virtual void Shutdown() override;

    // Call to preload any content before loading a map URL, used during seamless travel as well as map loading
    virtual void LoadComplete( const float loadtime, const FString& mapname ) override;
    //////////////////////////////////////////////////////////////////////////////

    // tick
    virtual TStatId GetStatId() const;
    virtual void Tick( float deltatime ) override;
    virtual ETickableTickType GetTickableTickType() const;

public:
    // net connect
    void NetConnect( uint64 id, FString& ip, uint32 port );

    // net send
    bool NetSend( uint32 msgid, const int8* data, uint32 length );

    // net close
    void NetClose();
protected:
    // 处理消息函数
    void HandleNetMessage( uint32 msgid, const int8* data, uint32 length );
    ////////////////////////////////////////////////////////////////////////////////

public:
    // 网络客户端
    FNetClient* _net_client = nullptr;

    // lua
    FLuaModule* _lua_module = nullptr;

    // event
    UPROPERTY( Transient )
    UEventModule* _event_module = nullptr;
private:
    // instance
    static UFighterInstance* _this;

    // statid
    TStatId _statid;
};
