require "../Common/common"
require( "Frame/frame" )

local CCheckVersionState = require("Logic/Login/CheckVersion/checkversionstate")
_fsm:AddState( CCheckVersionState.new( FSMStateEnum.CHECK_VERSION ) )

local CInternalAuthState = require("Logic/Login/InternalAuth/internalauthstate")
_fsm:AddState( CInternalAuthState.new( FSMStateEnum.INTERNAL_AUTH ) )
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
local CPlayer = require "Logic/Player/player"
_player = CPlayer.new( "player" )

local CDisplay = require "Logic/Player/display"
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