require "define"
_logic = require "Logic/logic"

Main = {}

function Main.Init()
	-- init protobuf
	local protofiles = 
	{
		"FrameDefineMessage.pb",
		"FrameEnumMessage.pb",
		"FrameCodeMessage.pb",
		"FrameClientMessage.pb",
		"EnumMessage.pb",
		"CodeMessage.pb",
		"DefineMessage.pb",
		"ClientMessage.pb",
	}
	_protobuf:LoadProtocol( "Lua/Protocol", protofiles )

	-- netclient 
	_event:AddEvent( EventEnum.NET_CONNECT, function( id, value ) _net_client:OnConnect( id, value ) end )
	_event:AddEvent( EventEnum.NET_DISCONNECT, function( id, value ) _net_client:OnFailed( id, value ) end )
	_event:AddEvent( EventEnum.NET_FAILEDCONNECT, function( id, value ) _net_client:OnDisconnect( id, value ) end )

	-- fsm
	_event:AddEvent( EventEnum.INIT_FINISH, Main.Startup )

	-- logic module
	_logic:Init()
end

function Main.Startup( id, value )
	_fsm:ChangeToState( FSMStateEnum.CHECK_VERSION )

	local data = {}
	data.id = 1
	local data_ = {}
	data_[1] = data
 	_player._data["item"]= data_
	_player:SetRecordValue( "item", 1, "count", 100 )
	local ok, name = _player:CheckElement( "[{\"item\":{\"id\":\"1\",\"count\":\"200\"}}]" )
	if ok == true then
		print( "money ok")
	else
		print( name .." false" )
	end
end

function Main.Auth()
	local channel = _protobuf:GetEnumId("KFMsg.ChannelEnum", "Internal" )
	local request = { ["channel"] = channel, ["account"] = "lori227" }
	local url = AuthUrl[4]._url;
	local response = _http_client:PostJson( url, request )
	if response == nil then
		_log:LogError( "url=["..url.."] http failed!" )
		return
	end

	if response.retcode ~= 1 then
		_display:ShowResult( response.retcode )
		return
	end

	Main._token = response.token
	Main._account_id = response.accountid

	-- connect
	local zone = response["zone"]
	_net_client:Connect( zone.zoneid, zone.ip, zone.port )
end

function Main.Tick( deltatime )
	-- 状态机
	_fsm:Tick( deltatime )

	-- 定时器逻辑
	_timer:Tick( deltatime )
end

function Main.OnConnect( id, code )

	local data = 
	{
	   token = Main._token,
	   accountid = Main._account_id,
	   version = "0.0.0.0"
	}
	
    _net_client:Send( 100, "KFMsg.MsgLoginReq", data )
end
------------------------------------------------------------------
------------------------------------------------------------------
------------------------------------------------------------------
------------------------------------------------------------------
function Main.OnEvent( type, id, value )
	return _event:OnEvent( type, id, value )
end

function Main.HandleMessage( msgid, data, length )
	_message:Call( msgid, data, length )
end

return 0