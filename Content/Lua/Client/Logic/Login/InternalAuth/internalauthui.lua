local CUIInternalAuth = class( "CUIInternalAuth", CUIPanle )

function CUIInternalAuth:ctor( ... )
	CUIPanle.ctor( self, ... )
end

function CUIInternalAuth:OnCreate()
    CUIPanle.OnCreate( self )

    self._widget = slua.loadUI( '/Game/Blueprints/UI/Widget/Login/UI_InternalAuth.UI_InternalAuth' )
end

return CUIInternalAuth
