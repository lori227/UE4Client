local CUIInternalAuth = require( "logic/login/auth/internalauthui" )
local CInternalAuthState = class( "CInternalAuthState", CFSMState )

function CInternalAuthState:ctor( stateid )
	CFSMState.ctor( self, stateid )
end

function CInternalAuthState:OnEnter()
	_ui_manage:Show( CUIInternalAuth, true )
end

function CInternalAuthState:OnLeave()
	--_ui_manage:Hide( CUIInternalAuth )
end

return CInternalAuthState