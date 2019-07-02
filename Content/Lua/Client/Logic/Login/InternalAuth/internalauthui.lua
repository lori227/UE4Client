local CUIInternalAuth = class( "CUIInternalAuth", CUIPanle )

function CUIInternalAuth:ctor( ... )
	CUIPanle.ctor( self, ... )
end

function CUIInternalAuth:OnCreate()
    CUIPanle.OnCreate( self )

    self._widget = slua.loadUI( '/Game/Blueprints/UI/Widget/Login/UI_InternalAuth.UI_InternalAuth' )

    self._button_auth = self._widget:FindWidget( 'ButtonAuth' )
    self._edit_account = self._widget:FindWidget( 'EditTextAccount' )
 
    self._button_auth.OnClicked:Add( function() self:OnClickButtonAuth() end )
end

function CUIInternalAuth:OnShow()
	CUIPanle.OnShow( self )

	local account = FLuaBind.ReadString( "login", "account" )
	if account ~= nil then
		self._edit_account:SetText( account )
	end
end


function CUIInternalAuth:OnClickButtonAuth()
	local account = self._edit_account:GetText()
	if account == nil or account == "" then
		print( "account is empty!" )
		return
	end

	FLuaBind.SaveString( "login", "account", account )

	-- 发送验证消息

end

return CUIInternalAuth
