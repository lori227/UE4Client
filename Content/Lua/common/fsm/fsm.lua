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
function CFSM:AddState( stateid, state )
    local object = self._states[ stateid ]
    if object ~= nil then
        print( "state..."..stateid.."...name..."..state._class_name.."...already exist!" )
        return
    end

    object = state.new( stateid )
    object:OnInit()
    self._states[ stateid ] = object
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

        local newstate = self._new_state
        self._new_state = nil
        self._cur_state = newstate
        newstate:OnEnter()
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