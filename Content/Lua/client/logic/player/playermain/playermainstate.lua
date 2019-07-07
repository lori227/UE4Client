local CUIPlayerMain = require( "logic/player/playermain/playermainui" )
local CPlayerMainState = class( "CPlayerMainState", CFSMState )

function CPlayerMainState:ctor( stateid )
	CFSMState.ctor( self, stateid )
end

function CPlayerMainState:OnEnter()
	CFSMState.OnEnter( self )
	_ui_manage:Show( CUIPlayerMain, true )
end

function CPlayerMainState:OnLeave()
	CFSMState.OnLeave( self )
end

return CPlayerMainState