-- 时间枚举
EventEnum = 
{
    NET_CONNECT         = 1,        -- 连接成功
    NET_DISCONNECT      = 2,        -- 连接断开
    NET_FAILEDCONNECT   = 3,        -- 连接失败
    INIT_FINISH         = 4,        -- 初始完成
}


-- 状态机的状态
FSMStateEnum = 
{
    CHECK_VERSION = "version",      -- 检查版本
    BATCH_UPDATE = "batch",         -- 补丁更新
    SELECT_CHANNEL = "channel",     -- 选择渠道
    INTERNAL_AUTH = "internal",     -- 内部验证
    STEAM_AUTH = "steam",           -- 内部验证
    WEIXIN_AUTH = "weixin",         -- 内部验证
    AUTH_SWITCH = "switch",         -- 认证跳转
    LOGIN_GAME = "login",           -- 登陆游戏
    SELECT_ZONE = "zone",           -- 选择小区
    PLAYER_MAIN = "main",           -- 主角界面
}

-- 渠道定义
ChannelEnum =
{
    INTERNAL = 1,        -- 内部测试
    STAEM    = 2,        -- steam
    WEIXIN   = 3,        -- 微信
}

-- 通知定义
NotifyEnum = 
{
    AUTH = 1,       -- 账号认证
}

_define = {}

-- 是否有选服界面     
_define._have_server_list = false

-- 是否需要断线重脸
_define._need_reconnect = true

-- 渠道id
_define._channel = ChannelEnum.INTERNAL   

-- 渠道数据
_define._channel_data = 
{
    [ ChannelEnum.INTERNAL ] =
    {
        { _name = "本地测试服", _url = "http://127.0.0.1:7001/auth" },
        { _name = "内网研发服", _url = "http://192.168.2.31:7001/auth" },
        { _name = "内网测试服", _url = "http://192.168.2.30:7001/auth" },
        { _name = "外网测试服", _url = "http://139.196.33.35:7001/auth" },
    }
}

