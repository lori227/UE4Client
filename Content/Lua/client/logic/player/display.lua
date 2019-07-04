local CDisplay = class( "CDisplay" )
local unpack = unpack or table.unpack

function CDisplay:Init()
    _message:Add( "MSG_RESULT_DISPLAY", "KFMsg.MsgResultDisplay", function( msg ) self:ShowResult( msg ) end )
end

function CDisplay:ShowResult( msg )
    _log:LogInfo( "display result=["..msg.result.."]" )
end


return CDisplay