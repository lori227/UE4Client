local CUIPanle = class("CUIPanle", CUIWidget)

function CUIPanle:ctor( ... )
	CUIWidget.ctor( self, ... )

    self._zorder = UIViewZOrderEnum.MIDDLE
end

function CUIPanle:Show( zorder )
	if self._widget ~= nil then
		if zorder == nil then
			zorder = self._zorder
        end
        
        self:OnShow()
        self._widget:AddToViewport( zorder )
	end
end

function CUIPanle.Hide(self)
	if self._widget ~= nil then
        self:OnHide()
        self._widget:RemoveFromViewport()
	end
end

function CUIPanle:SetZOrder(zorder)
	self._zorder = zorder
end

function CUIPanle:GetZOrder()
	return self._zorder
end

return CUIPanle
