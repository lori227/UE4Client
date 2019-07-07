local CNotifyManage = class( "CNotifyManage" )

function CNotifyManage:ctor()
	self._notify_list = {}
end

function CNotifyManage:AddNotify( notifyid, notify )
	local notifydata = self._notify_list[ notifyid ]
	if notifydata ~= nil then
		print( "notify...".. notifyid .."...already exist!" )
		return
	end

	notifydata = notify.new( notifyid )
	notifydata:OnInit( notifyid )
	self._notify_list[ notifyid ] = notifydata
end

function  CNotifyManage:RemoveNotify( notifyid )
	local notifydata = self._notify_list[ notifyid ]
	if notifydata == nil then
		print( "notify...".. notifyid .."...not exist!" )
		return false
	end

	notifydata:OnDestroy()
	self._notify_list[ notifyid ] = nil
end

function CNotifyManage:CallNotify( notifyid, data )
	local notifydata = self._notify_list[ notifyid ]
	if notifydata == nil then
		print( "notify...".. notifyid .."...not exist!" )
		return false
	end

	return notifydata._notify_cb( data )
end

return CNotifyManage