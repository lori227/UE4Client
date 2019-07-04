local CCheckVersionState = class("CCheckVersionState", CFSMState)

function CCheckVersionState:ctor( stateid )
	CFSMState.ctor( self, stateid )
end

function CCheckVersionState:OnEnter()
	CFSMState.OnEnter( self )
	
	_fsm:ChangeToState( FSMStateEnum.SELECT_CHANNEL )
end

return CCheckVersionState