require "define"
_logic = require "logic/logic"

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
end

function Main.Tick( deltatime )
	-- 状态机
	_fsm:Tick( deltatime )

	-- 定时器逻辑
	_timer:Tick( deltatime )
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