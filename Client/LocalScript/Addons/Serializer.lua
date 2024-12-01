local Serializer = {}

-- Configuration with default values
local Config = {
    spaces = 4,
    highlighting = false,
    maxDepth = 10  -- Added depth limit to prevent infinite recursion
}

-- Utility functions to reduce redundancy
local function safeToString(obj)
    local success, result = pcall(tostring, obj)
    return success and result or tostring(obj)
end

-- Expanded list of Roblox-specific data types
local DataTypes = {
    Axes = true, BrickColor = true, CatalogSearchParams = true, CFrame = true,
    Color3 = true, ColorSequence = true, ColorSequenceKeypoint = true,
    DateTime = true, DockWidgetPluginGuiInfo = true, Enum = true, Faces = true,
    Instance = true, NumberRange = true, NumberSequence = true,
    NumberSequenceKeypoint = true, OverlapParams = true, PathWaypoint = true,
    PhysicalProperties = true, Random = true, Ray = true, RaycastParams = true,
    RaycastResult = true, Rect = true, Region3 = true, Region3int16 = true,
    TweenInfo = true, UDim = true, UDim2 = true, Vector2 = true,
    Vector2int16 = true, Vector3 = true, Vector3int16 = true
}

-- Improved escaping for strings
local function escapeString(str)
    return str:gsub(".", function(char)
        if char == "\n" then return "\\n"
        elseif char == "\t" then return "\\t"
        elseif char == "\"" then return "\\\""
        elseif char:byte() < 32 or char:byte() > 126 then 
            return string.format("\\%d", char:byte())
        end
        return char
    end)
end

-- Format String

function Serializer.FormatString(str) 
  assert(type(str) == "string", "Input must be a string")
  return escapeString(str)
end

-- Enhanced serialization with improved recursion handling
local function serializeValue(value, depth, seen)
    depth = depth or 0
    seen = seen or {}

    -- Prevent infinite recursion
    if depth > Config.maxDepth then
        return "[MAX DEPTH EXCEEDED]"
    end

    local valueType = type(value)

    -- Handle recursive tables
    if valueType == "table" then
        if seen[value] then
            return "[Recursive Reference]"
        end
        seen[value] = true
    end

    -- Type-specific serialization
    if valueType == "string" then
        return Config.highlighting 
            and string.format("\27[32m\"%s\"\27[0m", escapeString(value))
            or string.format("\"%s\"", escapeString(value))
    elseif valueType == "number" then
        return Config.highlighting 
            and string.format("\27[33m%s\27[0m", 
                value == math.huge and "math.huge" or 
                value == -math.huge and "-math.huge" or 
                tostring(value))
            or (value == math.huge and "math.huge" or 
                value == -math.huge and "-math.huge" or 
                tostring(value))
    elseif valueType == "boolean" then
        return tostring(value)
    elseif valueType == "table" then
        local result = "{"
        local isArray = true
        local count = 0

        -- Check if it's an array-like table
        for k, _ in pairs(value) do
            count = count + 1
            if type(k) ~= "number" or k ~= count then
                isArray = false
                break
            end
        end

        for k, v in pairs(value) do
            local prefix = isArray and "" or 
                (type(k) == "string" and 
                    (k:match("^[_%a][_%w]*$") and k or string.format("[%q]", k)) .. " = "
                or string.format("[%s] = ", tostring(k)))
            
            result = result .. prefix .. serializeValue(v, depth + 1, seen) .. ", "
        end

        -- Remove trailing comma and close bracket
        return #result > 1 and result:sub(1, -3) .. "}" or "{}"
    elseif valueType == "function" then
        local info = debug.getinfo(value)
        return string.format("function(%s) -- %s", 
            info.nparams > 0 and table.concat(
                (function() 
                    local params = {}
                    for i = 1, info.nparams do 
                        params[i] = string.format("p%d", i) 
                    end
                    return params
                end)(), 
                ", "
            ) or "", 
            info.name or "anonymous")
    elseif DataTypes[valueType] then
        -- Special handling for Roblox-specific types
        return string.format("%s.new(%s)", valueType, safeToString(value))
    else
        return safeToString(value)
    end
end

-- Main serialization function
function Serializer.Serialize(input)
    assert(type(input) == "table", "Input must be a table")
    return serializeValue(input)
end

-- Format function arguments
function Serializer.FormatArguments(...)
    local args = {...}
    local result = {}
    for _, arg in ipairs(args) do
        table.insert(result, serializeValue(arg))
    end
    return table.concat(result, ", ")
end

-- Update configuration
function Serializer.UpdateConfig(options)
    assert(type(options) == "table", "Options must be a table")
    Config.spaces = options.spaces or Config.spaces
    Config.highlighting = options.highlighting or Config.highlighting
    Config.maxDepth = options.maxDepth or Config.maxDepth
end

return Serializer
