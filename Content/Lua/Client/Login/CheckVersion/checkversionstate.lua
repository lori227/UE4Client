local CCheckVersionState = class("CCheckVersionState", CFSMState)

function CCheckVersionState:OnTick( deltatime )
	if _define._channel == ChannelEnum.INTERNAL then
		_fsm:ChangeToState( FSMStateEnum.INTERNAL_AUTH )
	end
end

return CCheckVersionState