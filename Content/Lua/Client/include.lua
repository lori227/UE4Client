require "define"
require "../Common/common"

local CCheckVersionState = require("Login/CheckVersion/checkversionstate")
_fsm:AddState( CCheckVersionState.new( FSMStateEnum.CHECK_VERSION ) )

local CInternalAuthState = require("Login/InternalAuth/internalauthstate")
_fsm:AddState( CInternalAuthState.new( FSMStateEnum.INTERNAL_AUTH ) )
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
local CPlayer = require "Player/player"
_player = CPlayer.new( "player" )

local CDisplay = require "Player/display"
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