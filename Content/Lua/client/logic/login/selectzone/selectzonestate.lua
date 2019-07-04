local CSelectZoneState = class("CSelectZoneState", CFSMState)

function CSelectZoneState:ctor( stateid )
	CFSMState.ctor( self, stateid )
end

function CSelectZoneState:OnEnter()
	CFSMState.cotr( self )

	if _define._have_server_list == false then
		_fsm:ChangeToState( FSMStateEnum.SELECT_CHANNEL )
	else
		_fsm:ChangeToState( FSMStateEnum.SELECT_ZONE )
	end
end


return CSelectZoneState