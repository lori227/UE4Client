local CAuthLogic = class( "CAuthLogic", CNotify )

function CAuthLogic:ctor()
	CNotify.cotr( self )
end

function CAuthLogic:OnInit( notifyid )
	CNotify.OnInit( self, notifyid )
	self._notify_cb = function( data ) self:OnAuthLogic( data ) end
end 

function CAuthLogic:OnAuthLogic( notify )
	_login._account = notify.data.account
	_login._channel = _define._channel

	table.print(notify)

	local response = _http_client:PostJson( notify.url, notify.data )
	if response == nil then
		_log:LogError( "url=["..notify.url.."] http failed!" )
		return
	end

	if response.retcode ~= 1 then
		_display:ShowResult( response.retcode )
		return
	end

	_login._token = response.token
	_login._account_id = response.accountid
	_login._zone = response["zone"]

	-- 改变状态
	if _define._have_server_list == false then
		_fsm:ChangeToState( FSMStateEnum.LOGIN_GAME )
	else
		_fsm:ChangeToState( FSMStateEnum.SELECT_ZONE )
	end
end

return CAuthLogic