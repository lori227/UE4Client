local CEvent = class( "CEvent" )

function CEvent:ctor()
    self._event_cb = {}
end

function CEvent:AddEvent( type, func )
    local eventcb = self._event_cb[ type ]
    if eventcb == nil then
        eventcb = {}
        self._event_cb[ type ] = eventcb
    end

    table.insert( eventcb, func )
end

function CEvent:OnEvent( type, id, value )
    local eventcb = self._event_cb[ type ]
    if eventcb == nil then
        return false
    end

    -- 时间回调
    for _, cb in pairs( eventcb ) do
        cb( id, value )
    end

    return true
end

return CEvent