local CUIInternalAuth = require( "logic/login/auth/internalauthui" )
local CInternalAuthState = class( "CInternalAuthState", CFSMState )

function CInternalAuthState:ctor( stateid )
	CFSMState.ctor( self, stateid )
end

function CInternalAuthState:OnEnter()
	CFSMState.OnEnter( self )

	_login._url = ""
	_login._token = ""
	_login._account = ""
	_login._account_id = 0
	_login._channel = 0
	_login._zone = {}

	_ui_manage:Show( CUIInternalAuth, true )
end

function CInternalAuthState:OnLeave()
	CFSMState.OnLeave( self )
	--_ui_manage:Hide( CUIInternalAuth )
end

return CInternalAuthState