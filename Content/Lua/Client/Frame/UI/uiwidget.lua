local CUIWidget = class( "CUIWidget", CUIBase )

function CUIWidget:ctor()
	CUIBase.ctor( self )

    self._widget = nil

    self._cpp_create = function() self:OnCreate() end
	self._cpp_destroy = function() self:OnDestroy() end
end

function CUIWidget:OnCreate( ... )
	print( self._class_name .. "-->OnCreate" )
    CUIBase.OnCreate( self, ... )
end

function CUIWidget:OnDestroy( ... )
	print( self._class_name .. "-->OnDestroy")
	self._widget = nil

    CUIBase.OnDestroy( self, ... )
end

function CUIWidget:OnCreateUI()
	print( self._class_name .. "-->OnCreateUI")
    
    if self._widget ~= nil then
		if self._widget.OnConstruct ~= nil then
	        self._widget.OnConstruct:Add( self._cpp_create )
	    end
	    if self._widget.OnDestruct ~= nil then
	        self._widget.OnDestruct:Add( self._cpp_destroy )
	    end
	end
end

function CUIWidget:OnDestroyedUI()
    print( self._class_name .. "-->OnDestroyedUI")
    
	if self._widget ~= nil then
		if self._widget.OnConstruct ~= nil then
	        self._widget.OnConstruct:Remove( self._cpp_create )
	    end
	    if self._widget.OnDestruct ~= nil then
	        self._widget.OnDestruct:Remove( self._cpp_destroy )
	    end
	end
end

function CUIWidget:GetUserWidget()
    return self._widget
end

return CUIWidget