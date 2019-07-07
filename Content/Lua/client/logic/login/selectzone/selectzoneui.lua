local CUIZoneList = require("logic/login/selectzone/zonelistui")
local CUISelectZone = class( "CUISelectZone", CUIPanle )

function CUISelectZone:ctor( ... )
	CUIPanle.ctor( self, ... )
end

function CUISelectZone:OnCreate()
    CUIPanle.OnCreate( self )

    self._widget = slua.loadUI( '/Game/Blueprints/UI/Widget/UI_SelectZone.UI_SelectZone' )
    self._text_account = self._widget:FindWidget( 'TextAccount' )
    self._text_server_name = self._widget:FindWidget( 'TextServerName' )

    self._button_exit = self._widget:FindWidget( 'ButtonExit' )
    self._button_exit.OnClicked:Add( function() self:OnClickButtonExit() end )

    self._button_login = self._widget:FindWidget( 'ButtonLogin' )
    self._button_login.OnClicked:Add( function() self:OnClickButtonLogin() end )

    self._button_server_list = self._widget:FindWidget( 'ButtonServerList' )
    self._button_server_list.OnClicked:Add( function() self:OnClickButtonServerList() end )
end

function CUISelectZone:OnShow()
	CUIPanle.OnShow( self )

	self._text_account:SetText( _login._account )
	self._text_server_name:SetText( _login._zone.name )
end

function CUISelectZone:OnHide()
	CUIPanle.OnHide( self )
end

function CUISelectZone:OnClickButtonExit()
	_fsm:ChangeToState( FSMStateEnum.SELECT_CHANNEL )
end

function CUISelectZone:OnClickButtonLogin()
	_fsm:ChangeToState( FSMStateEnum.LOGIN_GAME )
end

function CUISelectZone:OnClickButtonServerList()
	_ui_manage:Show( CUIZoneList, false )
end

return CUISelectZone
