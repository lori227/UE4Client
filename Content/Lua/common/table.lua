
local setmetatable = setmetatable
local type = type
local table = table
local assert = assert
local pairs = pairs
local ipairs = ipairs
local string = string
local print = print

function table.print(t)  
    local print_cache = {}
    local function sub_print_r(t, indent)
        if (print_cache[tostring(t)]) then
            print(indent.."*"..tostring(t))
        else
            print_cache[tostring(t)] = true
            if (type(t) == "table") then
                for pos,val in pairs(t) do
                    if (type(val) == "table") then
                        print(indent.."["..pos.."] => "..tostring(t).." {")
                        sub_print_r(val,indent..string.rep(" ",string.len(pos)+8))
                        print(indent..string.rep(" ",string.len(pos)+6).."}")
                    elseif (type(val) == "string") then
                        print(indent.."["..pos..'] => "'..val..'"')
                    else
                        print(indent.."["..pos.."] => "..tostring(val))
                    end
                end
            else
                print(indent..tostring(t))
            end
        end
    end
    if (type(t) == "table") then
        print(tostring(t).." {")
        sub_print_r(t, "  ")
        print("}")
    else
        sub_print_r(t, "  ")
    end
    print()
end

function table.count(t)
    local count = 0
    for k, v in pairs(t) do
        count = count + 1
    end
    return count
end


function dump_value_(v)
    if type(v) == "string" then
        v = "\"" .. v .. "\""
    end
    return tostring(v)
end
 
function split(input, delimiter)
    input = tostring(input)
    delimiter = tostring(delimiter)
    if (delimiter == "") then return false end
    local pos, arr = 0, {}
    for st, sp in function() return string.find(input, delimiter, pos, true) end do
        table.insert(arr, string.sub(input, pos, st - 1))
        pos = sp + 1
    end
    table.insert(arr, string.sub(input, pos))
    return arr
end
 
function trim(input)
    return (string.gsub(input, "^%s*(.-)%s*$", "%1"))
end


--[[
打印table的工具函数
@params value 需要打印的内容
@params desciption 描述
@params nesting 打印内容的嵌套级数，默认3级
]]
function table.dump(value, desciption, nesting)
    if type(nesting) ~= "number" then nesting = 3 end
 
    local lookupTable = {}
    local result = {}
 
    local traceback = split(debug.traceback("", 2), "\n")
    -- print("dump from: " .. trim(traceback[3]))
 
    local function dump_(value, desciption, indent, nest, keylen)
        desciption = desciption or "<var>"
        local spc = ""
        if type(keylen) == "number" then
            spc = string.rep(" ", keylen - string.len(dump_value_(desciption)))
        end
        if type(value) ~= "table" then
            result[#result +1 ] = string.format("%s%s%s = %s", indent, dump_value_(desciption), spc, dump_value_(value))
        elseif lookupTable[tostring(value)] then
            result[#result +1 ] = string.format("%s%s%s = *REF*", indent, dump_value_(desciption), spc)
        else
            lookupTable[tostring(value)] = true
            if nest > nesting then
                result[#result +1 ] = string.format("%s%s = *MAX NESTING*", indent, dump_value_(desciption))
            else
                result[#result +1 ] = string.format("%s%s = {", indent, dump_value_(desciption))
                local indent2 = indent.."    "
                local keys = {}
                local keylen = 0
                local values = {}
                for k, v in pairs(value) do
                    keys[#keys + 1] = k
                    local vk = dump_value_(k)
                    local vkl = string.len(vk)
                    if vkl > keylen then keylen = vkl end
                    values[k] = v
                end
                table.sort(keys, function(a, b)
                    if type(a) == "number" and type(b) == "number" then
                        return a < b
                    else
                        return tostring(a) < tostring(b)
                    end
                end)
                for i, k in ipairs(keys) do
                    dump_(values[k], k, indent2, nest + 1, keylen)
                end
                result[#result +1] = string.format("%s}", indent)
            end
        end
    end
    dump_(value, desciption, "- ", 1)
 
    for i, line in ipairs(result) do
        print(line)
    end
end
