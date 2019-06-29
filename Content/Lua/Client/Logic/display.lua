local CDisplay = class( "CDisplay" )
local unpack = unpack or table.unpack

function CDisplay:ctor()

end

function CDisplay:Init()
    _message:Add( _protobuf:GetMsgId( "MSG_RESULT_DISPLAY" ), "KFMsg.MsgResultDisplay", function( msg ) self:ShowResult( msg.result, msg.param ) end )
end

function CDisplay:ShowResult( result, param )
    _log:LogInfo( "display result=["..result.."]" )
end


return CDisplay