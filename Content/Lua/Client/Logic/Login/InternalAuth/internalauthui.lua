local CUIInternalAuth = class( "CUIInternalAuth", CUIPanle )

function CUIInternalAuth:ctor( ... )
	CUIPanle.ctor( self, ... )
end

function CUIInternalAuth:OnCreate()
    CUIPanle.OnCreate( self )

    self._widget = slua.loadUI( '/Game/Blueprints/UI/Widget/Login/UI_InternalAuth.UI_InternalAuth' )

    self._button_auth = self._widget:FindWidget( 'ButtonAuth' )
    self._edit_account = self._widget:FindWidget( 'EditTextAccount' )
    self._combo_url = self._widget:FindWidget( 'ComboAuthUrl' )
 
    self._button_auth.OnClicked:Add( function() self:OnClickButtonAuth() end )
end

function CUIInternalAuth:OnShow()
	CUIPanle.OnShow( self )

	local account = FLuaBind.ReadString( "login", "account" )
	if account ~= nil then
		self._edit_account:SetText( account )
	end

	self._combo_url:ClearOptions()
	for _, v in pairs( AuthUrl ) do
		self._combo_url:AddOption( v._name .. " | " .. v._url )
	end

	local selectindex = FLuaBind.ReadInt( "login", "url" )
	if selectindex == nil or selectindex == 0 or selectindex > #AuthUrl then
		selectindex = 1
	end

	self._combo_url:SetSelectedIndex( selectindex )
end

function CUIInternalAuth:OnClickButtonAuth()
	local account = self._edit_account:GetText()
	if account == nil or account == "" then
		print( "account is empty!" )
		return
	end

	FLuaBind.SaveString( "login", "account", account )
	
	local selectindex = self._combo_url:GetSelectedIndex()
	if selectindex == 0 or selectindex == nil then
		print( "select server auth url!")
		return
	end 
	FLuaBind.SaveString( "login", "url", selectindex )

	local url = AuthUrl[ selectindex ]._url
	print( "account...".. account .."...url...".. url )
	-- 发送验证消息

end

return CUIInternalAuth
