local CUIOptionSetting = class( "CUIOptionSetting", CUIPanle )

function CUIOptionSetting:ctor( ... )
	CUIPanle.ctor( self, ... )
end

function CUIOptionSetting:OnCreate()
    CUIPanle.OnCreate( self )

    self._widget = slua.loadUI( '/Game/Blueprints/UI/Widget/UI_OptionSetting.UI_OptionSetting' )

    self._button_close = self._widget:FindWidget( 'ButtonClose' )
    self._button_close.OnClicked:Add( function() self:OnClickButtonClose() end )

    self._button_exit = self._widget:FindWidget( 'ButtonExit' )
    self._button_exit.OnClicked:Add( function() self:OnClickButtonExit() end )
end

function CUIOptionSetting:OnShow()
	CUIPanle.OnShow( self )

end

function CUIOptionSetting:OnHide()
	CUIPanle.OnHide( self )
end

function CUIOptionSetting:OnClickButtonClose()
    _ui_manage:HideUI( self, false )
end

function CUIOptionSetting:OnClickButtonExit()
    _login._is_exit = true

    -- 退出登陆
    local data = {}
    _net_client:Send( "MSG_LOGOUT_REQ", "KFMsg.MsgLogoutReq", data )
end

return CUIOptionSetting
