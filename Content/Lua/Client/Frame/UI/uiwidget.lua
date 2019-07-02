local CUIWidget = class( "CUIWidget", CUIBase )

function CUIWidget:ctor()
	CUIBase.ctor( self )

    self._widget = nil

    self._cpp_create = function() self:OnCreate() end
	self._cpp_destroy = function() self:OnDestroy() end
end

function CUIWidget:OnCreate( ... )
	print( "CUIWidget -->OnCreate" )
    CUIBase.OnCreate( self, ... )
end

function CUIWidget:OnDestroy( ... )
	print("CUIWidget -->OnDestroy")
	self._widget = nil

    CUIBase.OnDestroy( self, ... )
end

function CUIWidget:OnCreateUI()
	print("CUIWidget -->OnCreateUI")
    
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
    print("CUIWidget -->OnDestroyedUI")
    
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