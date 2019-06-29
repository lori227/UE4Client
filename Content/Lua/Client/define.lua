-- 认证服务器地址
AuthUrl = 
{
    { name = "小兵研发服", url = "http://192.168.1.71:7001/auth" },
    { name = "内网研发服", url = "http://192.168.2.31:7001/auth" },
    { name = "内网测试服", url = "http://192.168.2.30:7001/auth" },
    { name = "外网测试服", url = "http://139.196.33.35:7001/auth" },
}

-- 状态机的状态
FSMStateEnum = 
{
    CHECK_VERSION = "version",      -- 检查版本
    BATCH_UPDATE = "batch",         -- 补丁更新
    INTERNAL_AUTH = "internal",     -- 内部验证
    STEAM_AUTH = "steam",           -- 内部验证
    WEIXIN_AUTH = "weixin",         -- 内部验证
    LOGIN_GAME = "login",           -- 登陆游戏
}

-- 渠道定义
ChannelEnum =
{
    INTERNAL = 1,        -- 内部测试
    STAEM    = 2,        -- steam
    WEIXIN   = 3,        -- 微信
}

_define = {}
_define._channel = ChannelEnum.INTERNAL        -- 渠道id
