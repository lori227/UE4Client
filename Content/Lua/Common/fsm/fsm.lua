CFSMState = require "../Common/fsm/fsmstate"

local CFSM = class("CFSM")

function CFSM:ctor( stateid )
    -- 状态列表
    self._states = {}

    -- 当前的状态
    self._cur_state = nil

    -- 新的状态
    self._new_state = nil
end

-- 添加状态
function CFSM:AddState( state )
    self._states[ state._state_id ] = state
end

-- 改变状态
function CFSM:ChangeToState( stateid )
    local state = self._states[ stateid ]
    if state == nil then
        print( "stateid..["..stateid.."] not exist!")
        return false
    end

    self._new_state = state
    return true
end

-- tick
function CFSM:Tick( deltatime )
    if self._new_state ~= nil then
        if self._cur_state ~= nil then
            self._cur_state:OnLeave()
        end

        self._cur_state = self._new_state
        self._cur_state:OnEnter()
        self._new_state = nil
    end

    if self._cur_state == nil then
        return
    end

    local ok = self._cur_state:OnCheck( deltatime )
    if ok == true then
        self._cur_state:OnTick( deltatime )
    end
end

return CFSM