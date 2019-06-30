local CUIBase = class("CUIBase")

function CUIBase:ctor( ... )
    
end

function CUIBase:Init( ... )
end

function CUIBase.OnInit( ... )

end

function CUIBase.Destroy( ... )
    self:OnDestroyed()
end

function CUIBase.OnDestroyed( ... )
    
end

return CUIBase