local CUIZoneList = class( "CUIZoneList", CUIPanle )

function CUIZoneList:ctor( ... )
	CUIPanle.ctor( self, ... )
    self._zone_list = {}
end

function CUIZoneList:OnCreate()
    CUIPanle.OnCreate( self )

    self._widget = slua.loadUI( '/Game/Blueprints/UI/Widget/UI_ZoneList.UI_ZoneList' )

    self._button_close = self._widget:FindWidget( 'ButtonClose' )
    self._button_close.OnClicked:Add( function() self:OnClickButtonClose() end )
end

function CUIZoneList:OnShow()
	CUIPanle.OnShow( self )

    local count = table.count( self._zone_list )
    if count == 0 then
        local notify = {}
        notify.data = {}
        notify.url = _login._url
        notify.data.token = _login._token

        self:SendNotify( NotifyEnum.ZONELIST, notify, function(...)
            self:OnQueryZoneListOk(...)
        end)
    end
end

function CUIZoneList:OnHide()
	CUIPanle.OnHide( self )
end

function CUIZoneList:OnQueryZoneListOk( zonelist )
    
end

function CUIZoneList:OnClickButtonClose()
    _ui_manage:HideUI( self, true )
end

return CUIZoneList
