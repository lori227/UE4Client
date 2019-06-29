local CPlayer = require "Logic/player"
local CDisplay = require "Logic/display"

_player = CPlayer.new()
_player:AddModule( CDisplay.new() )
-------------------------------------------------------
-------------------------------------------------------
local M = {}

function M.Init()  
    -- player
    _player:Init()
end

return M