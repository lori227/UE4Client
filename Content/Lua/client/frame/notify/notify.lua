local CNotify = class( "CNotify" )

function CNotify:cotr()
	self._notify_id = 0
	self._notify_cb = nil
end

function CNotify:OnInit( notifyid )
	self._notify_id = notifyid
end

function CNotify:OnDestroy()
	self._notify_id = 0
	self._notify_cb = nil
end

return CNotify
