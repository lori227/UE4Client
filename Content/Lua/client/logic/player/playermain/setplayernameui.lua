local CUISetPlayerName = class( "CUISetPlayerName", CUIPanle )

local defaultname = "请输入名字, 最大长度14..."

function CUISetPlayerName:ctor( ... )
	CUIPanle.ctor( self, ... )
end

function CUISetPlayerName:OnCreate()
    CUIPanle.OnCreate( self )
    self._widget = slua.loadUI( '/Game/Blueprints/UI/Widget/UI_SetPlayerName.UI_SetPlayerName' )

    self._edit_name = self._widget:FindWidget( 'EditTextName' )
    self._button_name = self._widget:FindWidget( 'ButtonSetName' )
    self._button_name.OnClicked:Add( function() self:OnClickButtonSetName() end )
end

function CUISetPlayerName:OnShow()
	CUIPanle.OnShow( self )

	self._edit_name:SetHintText( defaultname )
end

function CUISetPlayerName:OnHide()
	CUIPanle.OnHide( self )
end

function CUISetPlayerName:OnClickButtonSetName()
	local name = self._edit_name:GetText()
	if name == "" or name == defaultname then
		print( "name is empty!" )
		return
	end

	local data = 
	{
	   name = name
	}
    _net_client:Send( "MSG_SET_NAME_REQ", "KFMsg.MsgSetNameReq", data )
end

return CUISetPlayerName
