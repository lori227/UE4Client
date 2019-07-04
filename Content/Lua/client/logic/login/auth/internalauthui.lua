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

	local authurl = _define._channel_data[ ChannelEnum.INTERNAL ]
	self._combo_url:ClearOptions()
	for _, v in pairs( authurl ) do
		self._combo_url:AddOption( v._name .. " | " .. v._url )
	end

	local selectindex = FLuaBind.ReadInt( "login", "url" )
	if selectindex == nil or selectindex > #authurl then
		selectindex = 0
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
	if selectindex == nil then
		print( "select server auth url!")
		return
	end 
	FLuaBind.SaveString( "login", "url", selectindex )

	local notify = {}
	notify.data = {}
	notify.data.account = account
	notify.data.channel = ChannelEnum.INTERNAL
	notify.url = _define._channel_data[ ChannelEnum.INTERNAL ][ selectindex + 1 ]._url
	print( "account...".. notify.data.account .."...url...".. notify.url )
	
	-- 发送验证消息
	self:SendNotify( NotifyEnum.AUTH, notify )
end

return CUIInternalAuth
