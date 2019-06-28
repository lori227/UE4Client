﻿#pragma once

#include "Public/Headers.h"

// 网络事件
class FNetEvent
{
public:
    // 类型
    uint32 _type = 0u;

    // 错误码
    int32 _code = 0u;
};

// 网络时间函数
typedef std::function< void( uint64 id, int32 code ) > NetEventFunction;
