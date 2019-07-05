local CUIPlayerMain = class( "CUIPlayerMain", CUIPanle )
local _field = _field
local CUISetPlayerName = require( "logic/player/playermain/setplayernameui" )

function CUIPlayerMain:ctor( ... )
	CUIPanle.ctor( self, ... )
end

function CUIPlayerMain:OnCreate()
    CUIPanle.OnCreate( self )
    self._widget = slua.loadUI( '/Game/Blueprints/UI/Widget/UI_PlayerMain.UI_PlayerMain' )

    self._text_name = self._widget:FindWidget( 'TextName' )
    self._button_name = self._widget:FindWidget( 'ButtonSetName' )
    self._button_name.OnClicked:Add( function() self:OnClickButtonOpenSetName() end )

end

function CUIPlayerMain:OnShow()
	CUIPanle.OnShow( self )

	-- name 
	local name = _player:GetObjectValue( _field.basic, _field.name ) or ""
	self:SetNameText( name );
	_player:RegisterUpdateObject( _field.basic, _field.name, function(...) self:OnUpdateName(...) end )
end

function CUIPlayerMain:OnHide()
	CUIPanle.OnHide( self )
	
	_player:UnRegisterUpdateObject( _field.basic, _field.name )
end

function CUIPlayerMain:SetNameText( name )
	self._text_name:SetText( name )
	self._button_name:SetIsEnabled( name == "" )
end

function CUIPlayerMain:OnClickButtonOpenSetName()
	local name = self._text_name:GetText()
	if name ~= "" then
		return
	end

	_ui_manage:Show( CUISetPlayerName, false )
end

function CUIPlayerMain:OnUpdateName( key, oldvalue, newvalue )
	self:SetNameText( newvalue )

	_ui_manage:Hide( CUISetPlayerName )
end

return CUIPlayerMain
