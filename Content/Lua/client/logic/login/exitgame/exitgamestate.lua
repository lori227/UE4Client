local CExitGameState = class("CExitGameState", CFSMState)

function CExitGameState:ctor( stateid )
	CFSMState.ctor( self, stateid )

end

function CExitGameState:OnEnter()
	CFSMState.OnEnter( self )

	-- 关闭网络
	_net_client:Close()

	if _define._have_server_list == false then
		_fsm:ChangeToState( FSMStateEnum.SELECT_CHANNEL )
	else
		_fsm:ChangeToState( FSMStateEnum.SELECT_ZONE )
	end
end

return CExitGameState