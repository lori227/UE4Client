local CPlayer = require "Player/player"
local CDisplay = require "Player/display"

_player = CPlayer.new()
_player:AddModule( CDisplay.new() )
-------------------------------------------------------
-------------------------------------------------------
-------------------------------------------------------
-------------------------------------------------------
local M = {}

function M.Init()  
    -- player
    _player:Init()
end

return M