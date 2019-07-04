-- UI界面前后枚举
UIViewZOrderEnum = 
{
    NONE = 0,

    BASE = 10000 * 1,       --基础层
    MIDDLE = 10000 * 2,     --中间层
    HIGH = 10000 * 3,       --高层
    PROMPT = 10000 * 4,     --提示层
    GUIDE = 10000 * 5,      --引导层
    Top = 10000 * 100,      --最高层级
}

CUIBase = require( "frame/ui/uibase" )
CUIWidget = require( "frame/ui/uiwidget" )
CUIPanle = require( "frame/ui/uipanle" )
local CUIManage = require( "frame/ui/uimanage" )
_ui_manage = CUIManage.new()

-------------------------------------------------
CNotify = require( "frame/notify/notify" )
local CNotifyManage = require( "frame/notify/notifymanage" )
_notify_manage = CNotifyManage.new()

