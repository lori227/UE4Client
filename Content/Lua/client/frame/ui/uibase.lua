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

function CUIBase:SendNotify( notifyid, notifydata, cb )
	local ok, data = _notify_manage:CallNotify( notifyid, notifydata )
	if ok == true and cb ~= nil then
		cb( data )
	end
end

return CUIBase