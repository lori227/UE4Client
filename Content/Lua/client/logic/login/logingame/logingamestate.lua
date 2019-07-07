local CLoginGameState = class("CLoginGameState", CFSMState)

function CLoginGameState:ctor( stateid )
	CFSMState.ctor( self, stateid )

	-- 连接失败次数
	self._connect_failed_count = 0
end

function CLoginGameState:OnInit()
	CFSMState.OnInit( self )
	_net_client:AddFailed( self._class_name, function( id, code ) self:OnNetFailed( id, code ) end )
	_net_client:AddConnect( self._class_name, function( id, code ) self:OnNetConnect( id, code ) end )
end

function CLoginGameState:OnEnter()
	CFSMState.OnEnter( self )

	-- 连接服务器
	self:ConnectServer()
end

function CLoginGameState:OnLeave()
	CFSMState.OnLeave( self )

	self._connect_failed_count = 0
end

function CLoginGameState:ConnectServer()
	self._connect_failed_count = 0

	-- 开始连接
	local zone = _login._zone
	_net_client:Connect( zone.zoneid, zone.ip, zone.port )
end

function CLoginGameState:OnNetFailed( id, code )
    self._connect_failed_count = self._connect_failed_count + 1
    print( "connect failed count ...".. self._connect_failed_count )

    if self._connect_failed_count >= 3 then
		if _define._have_server_list == false then
			_fsm:ChangeToState( FSMStateEnum.SELECT_CHANNEL )
		else
			_fsm:ChangeToState( FSMStateEnum.SELECT_ZONE )
		end
	end
end

function CLoginGameState:OnNetConnect( id, code )
	self._connect_failed_count = 0

	-- 连接成功
	local data = 
	{
	   token =  _login._token,
	   accountid = _login._account_id,
	   version = "0.0.0.0"
	}
    _net_client:Send( "MSG_LOGIN_REQ", "KFMsg.MsgLoginReq", data )
end

return CLoginGameState