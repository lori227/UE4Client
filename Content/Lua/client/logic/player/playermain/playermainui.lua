local CUIPlayerMain = class( "CUIPlayerMain", CUIPanle )
local _field = _field

function CUIPlayerMain:ctor( ... )
	CUIPanle.ctor( self, ... )
end

function CUIPlayerMain:OnCreate()
    CUIPanle.OnCreate( self )
    self._widget = slua.loadUI( '/Game/Blueprints/UI/Widget/UI_PlayerMain.UI_PlayerMain' )

    self._text_name = self._widget:FindWidget( 'TextName' )
    self._button_name = self._widget:FindWidget( 'ButtonSetName' )
    self._button_name.OnClicked:Add( function() self:OnClickButtonSetName() end )

end

function CUIPlayerMain:OnShow()
	CUIPanle.OnShow( self )

	-- name 
	self:SetNameText();
end

function CUIPlayerMain:SetNameText()
	local name = _player:GetObjectValue( _field.basic, _field.name ) or ""
	print(name )
	self._text_name:SetText( name )
	self._button_name:SetIsEnabled( name == "" )
end

function CUIPlayerMain:OnClickButtonSetName()
	local name = self._text_name:GetText()
	if name ~= "" then
		return
	end

	local data = 
	{
	   name = "lori",
	}
    _net_client:Send( "MSG_SET_NAME_REQ", "KFMsg.MsgSetNameReq", data )
end



return CUIPlayerMain
