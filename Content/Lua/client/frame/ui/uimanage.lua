local CUIManage = class("CUIManage")

function CUIManage:ctor( ... )
    -- 创建的ui列表
    self._ui_list = {}

    -- 显示的ui列表
    self._show_list = {}

    -- 当前显示的ui
    self._show_ui = nil;
end

function CUIManage:Create( uiclass )
    local ui = self._ui_list[ uiclass._class_name ]
    if ui == nil then
        ui = uiclass.new()
        ui:OnCreate()
        self._ui_list[ uiclass._class_name ] = ui
    end

    return ui
end

function CUIManage:Destroy( uiclass )
    local ui = self._ui_list[ uiclass._class_name ]
    if ui == nil then
        return
    end

    -- 隐藏
    ui:Hide( uiclass )

    -- 销毁
    ui:OnDestroy()
    self._ui_list[ uiclass._class_name ] = nil
end

function CUIManage:Show( uiclass, prehide, zorder )  
    local ui = self:Create( uiclass )

    self._show_list[ uiclass._class_name ] = ui
    if zorder == nil then
        zorder = #self._show_list + 1
    end

    if prehide == true then
        self:HideUI( self._show_ui )
    end

    ui._pre_ui = self._show_ui
    self._show_ui = ui

    ui:Show( zorder )
    print( uiclass._class_name .. "...show...order...".. zorder )
end

function CUIManage:Hide( uiclass )
    print( uiclass._class_name .. "...hide" )
    
    local ui = self._show_list[ uiclass._class_name ]
    self:HideUI( ui )
end

function CUIManage:HideUI( ui )
    if ui == nil then
        return
    end

    self._show_ui = ui._pre_ui
    ui._pre_ui = nil
    ui:Hide()
    self._show_list[ uiclass._class_name ] = nil
end

return CUIManage
