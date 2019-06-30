local CInternalAuthState = class("CInternalAuthState", CFSMState)

function CInternalAuthState:ctor( stateid )
	CFSMState.ctor( self, stateid )
end

function CInternalAuthState:OnEnter()
	self.userWidget_ = slua.loadUI('/Game/Blueprints/UI/Widget/Login/UI_InternalAuth.UI_InternalAuth')
	self.userWidget_:AddToViewport( 0 )
end

return CInternalAuthState