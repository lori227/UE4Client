local CSelectChannelState = class("CSelectChannelState", CFSMState)

function CSelectChannelState:ctor( stateid )
	CFSMState.ctor( self, stateid )
end

function CSelectChannelState:OnEnter()
	CFSMState.OnEnter( self )
	
	if _define._channel == ChannelEnum.INTERNAL then
		_fsm:ChangeToState( FSMStateEnum.INTERNAL_AUTH )
	end
end


return CSelectChannelState