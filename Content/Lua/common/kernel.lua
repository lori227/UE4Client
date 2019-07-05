local CKernel = class( "CKernel" )

function CKernel:ctor( kernelname )
    -- kernelname
    self._kernel_name = kernelname

    -- id
    self._id = 0

    -- name
    self._name = 0

    -- 数据
    self._data = {}

    -- 回调函数
    self._add_function = {}
    self._update_function = {}
    self._remove_function = {}
end

--------------------------------------------------------------------
--------------------------------------------------------------------
local function RegisterFunction( functions, parentname, childname, cbfunc )
    local childdata = {}
    childdata.cbfunc = cbfunc

    local parentdata = functions[ parentname ]
    if parentdata == nil then
        local data = {}
        data[ childname ] = childdata
        functions[ parentname ] = data
    else
        parentdata[ childname ] = childdata
    end
end

local function UnRegisterFunction( functions, parentname, childname )
    local parentdata = functions[ parentname ]
    if parentdata == nil then
        return
    end

    parentdata[ childname ] = nil
end

--------------------------------------------------------------------
-- 添加属性回调
function CKernel:RegisterAddData( dataname, cbfunc )
    RegisterFunction( self._add_function, self._kernel_name, dataname, cbfunc )
end

function CKernel:UnRegisterAddData( dataname )
    UnRegisterFunction( self._add_function, self._kernel_name, dataname )
end

function CKernel:RegisterAddObject( parentname, childname, cbfunc )
    RegisterFunction( self._add_function, parentname, childname, cbfunc )
end

function CKernel:UnRegisterAddObject( parentname, childname )
    UnRegisterFunction( self._add_function, parentname, childname )
end

function CKernel:CallAddData( parentname, childname, key, data )
    local parentdata = self._add_function[ parentname ]
    if parentdata == nil then
        return
    end

    local childdata = parentdata[ childname ]
    if childdata == nil then
        return
    end 

    childdata.cbfunc( key, data )
end
--------------------------------------------------------------------
-- 删除属性回调
function CKernel:RegisterRemoveData( dataname, cbfunc )
    RegisterFunction( self._remove_function, self._kernel_name, dataname, cbfunc )
end

function CKernel:UnRegisterRemoveData( dataname )
    UnRegisterFunction( self._remove_function, self._kernel_name, dataname )
end

function CKernel:RegisterRemoveObject( parentname, childname, cbfunc )
    RegisterFunction( self._remove_function, parentname, childname, cbfunc )
end

function CKernel:UnRegisterRemoveObject( parentname, childname )
    UnRegisterFunction( self._remove_function, parentname, childname )
end

function CKernel:CallRemoveData( parentname, childname, key, data )
    local parentdata = self._remove_function[ parentname ]
    if parentdata == nil then
        return
    end

    local childdata = parentdata[ childname ]
    if childdata == nil then
        return
    end 

    childdata.cbfunc( key, data )
end

--------------------------------------------------------------------
-- 更新属性回调
function CKernel:RegisterUpdateData( dataname, cbfunc )
    RegisterFunction( self._update_function, self._kernel_name, dataname, cbfunc )
end

function CKernel:UnRegisterUpdateData( dataname )
    UnRegisterFunction( self._update_function, self._kernel_name, dataname )
end

function CKernel:RegisterUpdateObject( parentname, childname, cbfunc )
    RegisterFunction( self._update_function, parentname, childname, cbfunc )
end

function CKernel:UnRegisterUpdateObject( parentname, childname )
    UnRegisterFunction( self._update_function, parentname, childname )
end

function CKernel:CallUpdateData( parentname, childname, key, oldvalue, newvalue )
    local parentdata = self._update_function[ parentname ]
    if parentdata == nil then
        return
    end

    local childdata = parentdata[ childname ]
    if childdata == nil then
        return
    end 

    childdata.cbfunc( key, oldvalue, newvalue )
end
--------------------------------------------------------------------
--------------------------------------------------------------------
local function ParseData( data, pbdata )
    for k, v in pairs( pbdata ) do
        if k == "pbobject" then
            for _, pbobject in pairs( v ) do
                data[ pbobject.key ] = {}
                ParseData( data[ pbobject.key ], pbobject.value )
            end
        elseif k == "pbrecord" then
            for _, pbrecord in pairs( v ) do
                data[ pbrecord.key ] = {}

                for k, pbobjects in pairs( pbrecord.value ) do
                    for _, pbobject in pairs( pbobjects )do
                        data[ pbrecord.key ][ pbobject.key ] = {}
                        ParseData( data[ pbrecord.key ][ pbobject.key ], pbobject.value )
                    end
                end
            end
        elseif k == "pbarray" then
            for _, pbarray in pairs( v ) do
                data[ pbarray.key ] = {}
                for k, pbuint64s in pairs( pbarray.value )  do
                    for _, pbuint64 in pairs( pbuint64s ) do
                        data[ pbarray.key ][pbuint64.key] = pbuint64.value
                    end
                end
            end
        else
            for _, pbvalue in pairs( v ) do
                data[ pbvalue.key ] = pbvalue.value
            end
        end
    end
end

function CKernel:InitData( id, pbdata )
    self._id = id

    -- 解析数据
    ParseData( self._data, pbdata )
end

---------------------------------------------------------
local function UpdateData( self, dataname, datakey, data, pbdata )
    for k, v in pairs( pbdata ) do
        if k == "pbobject" then
            for _, pbobject in pairs( v ) do
                data[ pbobject.key ] = {}
                UpdateData( self, pbobject.key, 0, data[ pbobject.key ], pbobject.value )
            end
        elseif k == "pbrecord" then
            for _, pbrecord in pairs( v ) do
                if data[ pbrecord.key ] == nil then
                    data[ pbrecord.key ] = {}
                end
                
                for k, pbobjects in pairs( pbrecord.value ) do
                    for _, pbobject in pairs( pbobjects ) do
                        local childdata = data[ pbrecord.key ][ pbobject.key ]
                        if childdata ~= nil then
                            UpdateData( self, pbrecord.key, pbobject.key, childdata, pbobject.value )
                        end
                    end
                end
            end
        elseif k == "pbarray" then
            for _, pbarray in pairs( v ) do
                data[ pbarray.key ] = {}
                for _, pbuint64 in pairs( pbarray.value ) do
                    local oldvalue = data[ pbarray.key ][pbuint64.key] or 0
                    data[ pbarray.key ][pbuint64.key] = pbuint64.value
                    
                    -- 回调逻辑
                    self:CallUpdateData( dataname, pbarray.key, datakey, oldvalue, pbhnt64.value )
                end
            end
        else
            for _, pbvalue in pairs( v ) do
                local oldvalue = data[ pbvalue.key ] or 0
                data[ pbvalue.key ] = pbvalue.value

                -- 回调逻辑
                 self:CallUpdateData( dataname, pbvalue.key, datakey, oldvalue, pbvalue.value )
            end   
        end
    end
end

function CKernel:SyncUpdateData( data )
    -- 更新数据
    UpdateData( self, self._kernel_name, 0, self._data, data )
end
---------------------------------------------------------
local function AddData( self, parentname, data, pbdata )
    for k, v in pairs( pbdata ) do
        if k == "pbobject" then
            for _, pbobject in pairs( v ) do
                if data[ pbobject.key ] == nil then
                    data[ pbobject.key ] = {}
                end

                AddData( self, pbobject.key, data[ pbobject.key ], pbobject.value )
            end
        elseif k == "pbrecord" then
            for _, pbrecord in pairs( v ) do
                if data[ pbrecord.key ] == nil then
                    data[ pbrecord.key ] = {}
                end

                for k, pbobjects in pairs( pbrecord.value ) do
                    for _, pbobject in pairs( pbobjects )do
                        local childdata = {}
                        ParseData( childdata, pbobject.value )
                        data[ pbrecord.key ][ pbobject.key ] = childdata

                        -- 回调函数
                        self:CallAddData( parentname, pbrecord.key, pbobject.key, childdata ) 
                    end
                end
            end
        end
    end
end

function CKernel:SyncAddData( pbdata )
    AddData( self, self._kernel_name, self._data, pbdata )
end
---------------------------------------------------------
local function RemoveData( self, parentname, data, pbdata )
    for k, v in pairs ( pbdata ) do
        if k == "pbobject" then
            for _, pbobject in pairs( v ) do
                if data[ pbobject.key ] ~= nil then
                    RemoveData( self, pbobject.key, data[ pbobject.key ], pbobject.value )
                end
            end
        elseif k == "pbrecord" then
            for _, pbrecord in pairs( v ) do
                if data[ pbrecord.key ] ~= nil then
                    for k, pbobjects in pairs( pbrecord.value ) do
                        for _, pbobject in pairs( pbobjects )do
                            local childdata = data[ pbrecord.key ][ pbobject.key ]
                            if childdata ~= nil then
                                -- 回调函数
                                self:CallRemoveData( parentname, pbrecord.key, pbobject.key, childdata ) 
                                data[ pbrecord.key ][ pbobject.key ] = nil
                            end

                        end
                    end
                end
            end
        end 
    end
end

function CKernel:SyncRemoveData( pbdata )
    RemoveData( self, self._kernel_name, self._data, pbdata )    
end

---------------------------------------------------------
---------------------------------------------------------
-- 获得属性值
function CKernel:GetDataValue( childname )
    if childname == nil then
        return nil
    end

    return self._data[ childname ]
end

-- 设置属性值
function CKernel:SetDataValue( childname, value )
    if childname == nil then
        return
    end

    self._data[ childname ] = value
end

-- 获得对象属性值
function CKernel:GetObjectValue( parentname, childname )
    local parentdata = self:GetDataValue( parentname )
    if parentdata == nil then
        return nil
    end

    return parentdata[ childname ]
end

-- 设置对象属性值
function CKernel:SetObjectValue( parentname, childname, value )
    if parentname == nil or childname == nil then
        return
    end
    
    local parentdata = self:GetDataValue( parentname )
    if parentdata == nil then
        parentdata = {}
        self._data[ parentname ] = parentdata
    end

    parentdata[ childname ] = value
end

-- 获得集合属性值
function CKernel:GetRecordValue( parentname, key, childname )
    local parentdata = self:GetDataValue( parentname )
    if parentdata == nil then
        return nil
    end

    local childdata = parentdata[ key ]
    if childdata == nil then
        return nil
    end

    return childdata[ childname ]
end

-- 设置集合属性值
function CKernel:SetRecordValue( parentname, key, childname, value )
    local parentdata = self:GetDataValue( parentname )
    if parentdata == nil then
        return nil
    end

    local childdata = parentdata[ key ]
    if childdata == nil then
        return nil
    end

    childdata[ childname ] = value
end

-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
local function GetRecordToalValue( data, id, name, maxvalue )
    local totalvalue = 0
    for _, v in pairs( data ) do
        local dataid = v[ "id" ]
        if dataid == id then
            local value = v[ name ]
            if value ~= nil then
                totalvalue = totalvalue + value
                if totalvalue >= maxvalue then
                    break
                end
            end
        end
    end

    return totalvalue
end

local function CheckElementEnough( data, elementvalue )
    -- int32/uint32/int64/uint64
    local datatype = type( data )
    if datatype == "number" then
        local value = tonumber( elementvalue )
        if data < value then
            return false
        end
    end

    -- object/record
    if datatype == "table" then
        local id = elementvalue[ "id" ]
        if id == nil then
            -- object
            for objectname, objectdata in pairs( elementvalue ) do
                local childdata = data[ objectname ]
                if childdata == nil then
                    return false
                end

                local result = CheckElementEnough( childdata, objectdata )
                if result == false then
                    return false
                end
            end
        else
            -- record
            for objectname, objectdata in pairs( elementvalue ) do
                -- 获得总数量
                if objectname ~= "id" then
                    local totalcount = GetRecordToalValue( data, tonumber(id), objectname, tonumber(objectdata) )
                    local result = CheckElementEnough( totalcount, objectdata )
                    if result == false then
                        return false
                    end
                end
            end
        end
    end

    return true
end


-- 判断属性
function CKernel:CheckElement( strelement )
    local elementdatas = _json:Decode( strelement )
    if elementdatas == nil then
        _log:LogError( "element=["..strelement.."] error!" )
        return false, "parse"
    end

    -- 遍历数据
    for _, elementdata in pairs( elementdatas ) do
        for name, elementvalue in pairs( elementdata ) do
            local data = self._data[ name ]
            if data == nil then
                return false, name
            end

            local ok = CheckElementEnough( data, elementvalue )
            if ok == false then
                return false, name
            end
        end
    end

    return true
end
---------------------------------------------------------



return CKernel