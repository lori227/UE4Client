#pragma once

#include "CoreMinimal.h"
#include "InputCoreTypes.h"
#include "Public/Headers.h"
#include "EventDefine.generated.h"

//DECLARE_DYNAMIC_MULTICAST_DELEGATE_TwoParams( FOnWeatherIdxChange, ECWWeatherType, InWeatherType, ECWWeatherType, InOldWeatherType );

//////////////////////////////////////////////////////////////////////////////////////////////////////////////
UCLASS( BlueprintType, Blueprintable )
class UEventData : public UObject
{
    GENERATED_UCLASS_BODY()
public:
    // 类型
    EEventType _type;

    uint64 _id = 0;

    // 数值
    int64 _value = 0;
};

// 事件函数
typedef std::function< void( uint64 id, int64 value ) > EventFunction;
//////////////////////////////////////////////////////////////////////////////////////////////////////////////
UENUM( BlueprintType )
enum class EEventType : uint8
{
    None UMETA( DisplayName = "None" ),						// 无效值
    NetConnect UMETA( DisplayName = "NetConnect" ),			// 网络连接成功
    Disconnect UMETA( DisplayName = "Disconnect" ),			// 网络连接关闭
    FailedConnect UMETA( DisplayName = "FailedConnect" ),	// 网络连接失败
    InitFinish UMETA( DisplayName = "InitFinish" ),			// 初始化完成
};
//////////////////////////////////////////////////////////////////////////////////////////////////////////////