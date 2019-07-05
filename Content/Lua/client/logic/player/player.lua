local CPlayer = class( "CPlayer", CKernel )

function CPlayer:ctor( kernelname )
    CKernel.ctor( self, kernelname )
    self._modules = {}

    self._enter_cb_list = {}
end

function CPlayer:AddModule( module )
    self._modules[ module._class_name ] = module
end

function CPlayer:Init()
    _message:Add( "MSG_LOGIN_ACK", "KFMsg.MsgLoginAck", function( msg ) self:OnEnterGame( msg ) end )
    _message:Add( "MSG_SYNC_UPDATE_DATA", "KFMsg.MsgSyncUpdateData", function( msg ) self:SyncUpdateData( msg.pbdata ) end )
    _message:Add( "MSG_SYNC_ADD_DATA", "KFMsg.MsgSyncAddData", function( msg ) self:SyncAddData( msg.pbdata ) end )
    _message:Add( "MSG_SYNC_REMOVE_DATA", "KFMsg.MsgSyncRemoveData", function( msg ) self:SyncRemoveData( msg.pbdata ) end )

    -- 所有的模块初始化
    for _, module in pairs( self._modules ) do
        module:Init()
    end
end

function CPlayer:OnEnterGame( msg )
    print( "login game ok ..." )

    -- 初始化数据
    self:InitData( msg.playerid, msg.playerdata )    
    self._time_difference = FLuaBind.GetTime() - msg.servertime
    print(self._time_difference)

    -- 进入游戏
    for _, entercb in pairs( self._enter_cb_list ) do
        entercb()
    end
    table.print( self._data )
    -- 进入主界面状态
    _fsm:ChangeToState( FSMStateEnum.PLAYER_MAIN )
end

function CPlayer:GetTime()
    local nowtime = FLuaBind.GetTime()
    return nowtime + self._time_difference
end

return CPlayer