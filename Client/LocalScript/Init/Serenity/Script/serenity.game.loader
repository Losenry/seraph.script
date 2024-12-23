-- @ Constants
local LOAD_RETRY_ATTEMPTS = 3
local LOAD_RETRY_DELAY = 0.5

-- @ Core Module Structure
local Modules = {}
local Services = {
    Loaded = {},
    Failed = {},
    Blacklisted = {
        ["Teleport Service"] = "TeleportService",
        ["Run Service"] = "RunService",
        ["Script Context"] = "ScriptContext",
        ["FilteredSelection"] = "Selection",
        -- Add more service mappings as needed
    }
}

-- @ Utility Functions
local function waitForGame()
    if not game:IsLoaded() then
        game.Loaded:Wait()
    end
end

local function retryWithAttempts(fn, attempts)
    for i = 1, attempts do
        local success, result = pcall(fn)
        if success then
            return result, true
        end
        if i < attempts then
            task.wait(LOAD_RETRY_DELAY)
        end
    end
    return nil, false
end

-- @ Service Management Functions
function Services.GetCorrectName(serviceName)
    return Services.Blacklisted[serviceName] or serviceName
end

function Services.LoadService(serviceName)
    if type(serviceName) ~= "string" then
        warn("Service name must be a string")
        return nil, false
    end

    local correctedName = Services.GetCorrectName(serviceName)
    
    local service, success = retryWithAttempts(function()
        return game:GetService(correctedName)
    end, LOAD_RETRY_ATTEMPTS)

    if success then
        Services.Loaded[serviceName] = service
        return service, true
    else
        table.insert(Services.Failed, serviceName)
        warn(string.format("[-] Failed to load '%s' (tried as '%s') after %d attempts",
            serviceName, correctedName, LOAD_RETRY_ATTEMPTS))
        return nil, false
    end
end

-- @ Module Interface
function Modules.GetService(serviceName)
    -- Check if already loaded
    if Services.Loaded[serviceName] then
        return Services.Loaded[serviceName], true
    end
    
    -- Attempt to load service
    return Services.LoadService(serviceName)
end

function Modules.Initialize()
    -- Clear previous state
    table.clear(Services.Loaded)
    table.clear(Services.Failed)
    
    -- Initialize services
    for _, service in pairs(game:GetChildren()) do
        if service.ClassName then
            Modules.GetService(service.Name)
        end
    end
    
    -- Report results
    local success = #Services.Failed == 0
    if not success then
        warn("[-] Failed to load the following services:")
        for _, serviceName in ipairs(Services.Failed) do
            warn(string.format("  - %s", serviceName))
        end
    end
    
    return success, Services.Loaded, Services.Failed
end

-- @ Initialization
local function IsLoaded()
    waitForGame()
    
    local success: boolean, loaded, failed = Modules.Initialize()
    
    if not success then
        warn("[-] Initialization completed with errors")
    end
    
    -- Add commonly used services as direct properties
    for name, service in pairs(loaded) do
        if service then
            Modules[name] = service
        end
    end
    
    return success
end

-- @ Execute
return task.spawn(function()
    local MAX_RETRIES = 30
    
    -- Initialize HTTP request handler
    local http_request = request
    local success = IsLoaded()
    
    -- Utility functions
    local function isValidUrl(url)
        if type(url) ~= "string" then return false end
        return url:match("^https?://") ~= nil
    end
    
    local function safeLoadstring(code)
        if type(code) ~= "string" then return nil, "Invalid code type" end
        
        local loader = loadstring or load
        if not loader then
            return nil, "No string loader available"
        end
        
        return loader(code)
    end
    
    -- HTTP request handler with retries
    local function makeRequest(url, retryCount)
        if not isValidUrl(url) then
            return {
                Success = false,
                Error = "Invalid URL format. Must start with http:// or https://"
            }
        end
        
        retryCount = retryCount or 0
        
        local Handle = {
            Success = false,
            Result = nil,
            Error = nil
        }
        
        Handle.Success, Handle.Result = pcall(function()
            if http_request then
                return http_request({
                    Url = url,
                    Method = 'GET',
                })
            else
                -- Fallback to Roblox HTTP service
                local httpService = game:GetService("HttpService")
                return {
                    Body = httpService:GetAsync(url),
                    StatusCode = 200
                }
            end
        end)
        
        -- Handle response
        if Handle.Success then
            if type(Handle.Result) == "table" then
                if Handle.Result.StatusCode == 200 then
                    return {
                        Success = true,
                        Body = Handle.Result.Body
                    }
                else
                    Handle.Error = string.format("HTTP Error: %d", Handle.Result.StatusCode)
                end
            end
        end
        
        -- Retry logic
        if retryCount < MAX_RETRIES then
            task.wait(1) -- Wait before retry
            return makeRequest(url, retryCount + 1)
        end
        
        return Handle
    end
    
    -- Main execution
    if not success then
        warn("[-] Some services failed to load, but continuing with available services")
    end
    
    -- Safe execution wrapper
    local function executeCode(url)
        if not url or url == "" then
            warn("[-] No URL provided")
            return
        end
        
        local response = makeRequest(url)
        if not response.Success then
            warn(string.format("[-] Request failed: %s", response.Error or "Unknown error"))
            return
        end
        
        local func, err = safeLoadstring(response.Body)
        if not func then
            warn(string.format("[-] Failed to load code: %s", err or "Unknown error"))
            return
        end
        
        -- Execute in protected call
        local execSuccess, execError = pcall(func)
        if not execSuccess then
            warn(string.format("[-] Execution failed: %s", execError))
        end
    end
    
    -- Execute with error handling
    local ok, err = pcall(function()
        executeCode('')
    end)
    
    if not ok then
        warn(string.format("[-] Critical error: %s", err))
    end
end)
