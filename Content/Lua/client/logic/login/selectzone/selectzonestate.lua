local CUISelectZone = require("logic/login/selectzone/selectzoneui")
local CSelectZoneState = class("CSelectZoneState", CFSMState)

function CSelectZoneState:ctor( stateid )
	CFSMState.ctor( self, stateid )
end

function CSelectZoneState:OnEnter()
	CFSMState.OnEnter( self )

	_ui_manage:Show( CUISelectZone, true )
end

function CSelectZoneState:OnLeave()
	CFSMState.OnLeave( self )
end


return CSelectZoneState