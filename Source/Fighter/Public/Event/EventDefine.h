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

    // 数值
    uint64 _value = 0;

    // 数据
    void* _data = nullptr;
};

// 事件函数
typedef std::function< void( uint64 value, void* data ) > EventFunction;
//////////////////////////////////////////////////////////////////////////////////////////////////////////////
UENUM( BlueprintType )
enum class EEventType : uint8
{
    InitFinish UMETA( DisplayName = "Init Finish" ),
};
//////////////////////////////////////////////////////////////////////////////////////////////////////////////