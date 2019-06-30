local CPlayer = class( "CPlayer", CKernel )

function CPlayer:ctor( kernelname )
    CKernel.ctor( self, kernelname )
    self._modules = {}
end

function CPlayer:AddModule( module )
    self._modules[ module._class_name ] = module
end

function CPlayer:Init()
    _message:Add( _protobuf:GetMsgId( "MSG_LOGIN_ACK" ), "KFMsg.MsgLoginAck", function( msg ) self:InitData( self, msg.playerid, msg.playerdata ) end )
    _message:Add( _protobuf:GetMsgId( "MSG_SYNC_UPDATE_DATA" ), "KFMsg.MsgSyncUpdateData", function( msg ) self:SyncUpdateData( msg.pbdata ) end )
    _message:Add( _protobuf:GetMsgId( "MSG_SYNC_ADD_DATA" ), "KFMsg.MsgSyncAddData", function( msg ) self:SyncAddData( msg.pbdata ) end )
    _message:Add( _protobuf:GetMsgId( "MSG_SYNC_REMOVE_DATA" ), "KFMsg.MsgSyncRemoveData", function( msg ) self:SyncRemoveData( msg.pbdata ) end )

    -- 所有的模块初始化
    for _, module in pairs( self._modules ) do
        module:Init()
    end
end

return CPlayer