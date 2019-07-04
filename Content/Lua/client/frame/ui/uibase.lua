local CUIBase = class("CUIBase")

function CUIBase:ctor( ... )
    
end

function CUIBase:OnCreate( ... )

end

function CUIBase:OnDestroy( ... )
    
end

function CUIBase:OnShow( ... )

end

function CUIBase:OnHide( ... )

end

function CUIBase:SendNotify( notifyid, notifydata )
	_notify_manage:CallNotify( notifyid, notifydata )
end

return CUIBase