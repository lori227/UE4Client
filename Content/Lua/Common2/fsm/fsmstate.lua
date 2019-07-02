local CFSMState = class("CFSMState")

function CFSMState:ctor( stateid )
    self._state_id = stateid
end

-- 进入状态
function CFSMState:OnEnter()
    print( "EnterState...".. self._state_id )
end

-- tick
function CFSMState:OnTick( deltatime )

end

-- 离开状态
function CFSMState:OnLeave()
    print( "LeaveState...".. self._state_id )
end

-- 检查状态, 返回true继续执行
function CFSMState:OnCheck( deltatime )
	return true
end

return CFSMState