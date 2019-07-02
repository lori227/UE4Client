local CLog = class( "CLog" )

-- info
function CLog:LogInfo( content )
    FLuaBind.Log( 5, content )
end

-- warn
function CLog:LogWarn( content )
    FLuaBind.Log( 3, content )
end

-- error
function CLog:LogError( content )
    FLuaBind.Log( 2, content )
end

return CLog