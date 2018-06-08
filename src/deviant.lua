local _M = { version = "0.1" }

local function readFile(filename)
     
    local f, err = io.open(filename,"r")
    if f then 
        local lines = f:read("*a")
        f:close()
        return lines 
    else
        return nil, err
    end

end

function copyTable(t)
 
    local t2 = {}
    for k,v in pairs(t) do
        t2[k] = v
    end
    return t2
 
end

local function mergeTables (defaults,options)

    if options then 
        for k, v in pairs(options) do
            if (type(v) == "table") and (type(defaults[k] or false) == "table") then
                mergeTables(defaults[k], options[k])
            else
                defaults[k] = v
            end
        end
    end
    return defaults

end

local function sortTableKeys (t)

    local tkeys = {}
    for k in pairs(t) do table.insert(tkeys, k) end
    table.sort(tkeys)
    return tkeys

end

_M.mergeTables = mergeTables
_M.copyTable = copyTable
_M.sortTableKeys = sortTableKeys
_M.readFile = readFile
return _M


