require "../common/common"
require( "frame/frame" )
require( "logic/login/login")

local CCheckVersionState = require("logic/login/checkversion/checkversionstate")
_fsm:AddState( FSMStateEnum.CHECK_VERSION, CCheckVersionState )

local CSelectChannelState = require("logic/login/selectchannel/selectchannelstate")
_fsm:AddState( FSMStateEnum.SELECT_CHANNEL, CSelectChannelState )

local CInternalAuthState = require("logic/login/auth/internalauthstate")
_fsm:AddState( FSMStateEnum.INTERNAL_AUTH, CInternalAuthState )

local CSelectZoneState = require("logic/login/selectzone/selectzonestate")
_fsm:AddState( FSMStateEnum.SELECT_ZONE, CSelectZoneState )

local CLoginGameState = require("logic/login/logingame/logingamestate")
_fsm:AddState( FSMStateEnum.LOGIN_GAME, CLoginGameState )

local CExitGameState = require("logic/login/exitgame/exitgamestate")
_fsm:AddState( FSMStateEnum.EXIT_GAME, CExitGameState )

local CPlayerMainState = require("logic/player/playermain/playermainstate")
_fsm:AddState( FSMStateEnum.PLAYER_MAIN, CPlayerMainState )
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
local CAuthLogic = require("logic/login/auth/authlogic")
_notify_manage:AddNotify( NotifyEnum.AUTH, CAuthLogic )

local CZoneListLogic = require("logic/login/selectzone/zonelistlogic")
_notify_manage:AddNotify( NotifyEnum.ZONELIST, CZoneListLogic )
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
local CPlayer = require "logic/player/player"
_player = CPlayer.new( "player" )

local CDisplay = require "logic/player/display"
_player:AddModule( CDisplay.new() )
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------

local M = {}

function M.Init()  
    -- player
    _player:Init()
end

return M