require "../common/common"
require( "frame/frame" )

local CCheckVersionState = require("logic/login/checkversion/checkversionstate")
_fsm:AddState( CCheckVersionState.new( FSMStateEnum.CHECK_VERSION ) )

local CInternalAuthState = require("logic/login/internalauth/internalauthstate")
_fsm:AddState( CInternalAuthState.new( FSMStateEnum.INTERNAL_AUTH ) )
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