local M = {}

-- 认证服务器地址
M._auth_url = {}
M._auth_url[ "小兵研发服" ] = "http://192.168.1.71:7001/auth"
M._auth_url[ "内网研发服" ] = "http://192.168.2.31:7001/auth"
M._auth_url[ "内网测试服" ] = "http://192.168.2.30:7001/auth"
M._auth_url[ "外网测试服" ] = "http://139.196.33.35:7001/auth"

return M