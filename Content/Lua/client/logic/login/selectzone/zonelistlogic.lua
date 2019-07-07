local CZoneListLogic = class( "CZoneListLogic", CNotify )

function CZoneListLogic:OnInit( notifyid )
	CNotify.OnInit( self, notifyid )
	self._notify_cb = function( data ) self:OnQueryZoneList( data ) end
end 

function CZoneListLogic:OnQueryZoneList( notify )
	return true
end

return CZoneListLogic