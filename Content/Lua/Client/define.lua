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
    ACCOUNT_AUTH = "auth",          -- 账号验证
    LOGIN_GAME = "login",           -- 登陆游戏
}
