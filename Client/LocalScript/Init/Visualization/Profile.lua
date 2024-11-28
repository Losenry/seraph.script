local PROFILE = {}
local CONFIG = {
    SERVER_URL = "http://192.168.100.220:5000/submit",
    RETRY_ATTEMPTS = 3,
    TIMEOUT = 10,
    LOG_LEVEL = {
        DEBUG = 1,
        INFO = 2,
        WARNING = 3,
        ERROR = 4
    },
    CURRENT_LOG_LEVEL = 2
}

local function log(message, level)
    level = level or CONFIG.LOG_LEVEL.INFO
    
    if level >= CONFIG.CURRENT_LOG_LEVEL then
        local levelPrefix = ({
            [CONFIG.LOG_LEVEL.DEBUG] = "[DEBUG]",
            [CONFIG.LOG_LEVEL.INFO] = "[INFO]",
            [CONFIG.LOG_LEVEL.WARNING] = "[WARNING]",
            [CONFIG.LOG_LEVEL.ERROR] = "[ERROR]"
        })[level]
        
        print(string.format("%s [Discord Avatar] %s", levelPrefix, tostring(message)))
    end
end

local function PROFILE.safeHttpRequest(url, method, body)
    local http_request = http_request or syn and syn.request or request
    
    if not http_request then
        log("No HTTP request library found", CONFIG.LOG_LEVEL.ERROR)
        return nil, "No HTTP library available"
    end
    
    local headers = {
        ["Content-Type"] = "application/json",
        ["User-Agent"] = "RobloxDiscordAvatarScript/1.1"
    }

    if not url or not method or not body then
        log("Invalid request parameters", CONFIG.LOG_LEVEL.ERROR)
        return nil, "Invalid request parameters"
    end
    
    for attempt = 1, CONFIG.RETRY_ATTEMPTS do
        log(string.format("Attempting HTTP request (Attempt %d)", attempt), CONFIG.LOG_LEVEL.DEBUG)
        
        local success, response = pcall(function()
            return http_request({
                Url = url,
                Method = method,
                Headers = headers,
                Body = HttpService:JSONEncode(body),
                Timeout = CONFIG.TIMEOUT
            })
        end)
        
        if success and response then
            if response.StatusCode >= 200 and response.StatusCode < 300 then
                log("Request successful", CONFIG.LOG_LEVEL.DEBUG)
                return response
            else
                log(string.format("HTTP Error: %d - %s", response.StatusCode, tostring(response.Body)), CONFIG.LOG_LEVEL.WARNING)
            end
        else
            log(string.format("Request attempt %d failed: %s", attempt, tostring(success)), CONFIG.LOG_LEVEL.WARNING)
        end
        local waitTime = math.random(1, 2 ^ attempt)
        wait(waitTime)
    end
    
    log("Failed to complete HTTP request after maximum attempts", CONFIG.LOG_LEVEL.ERROR)
    return nil, "Request failed after maximum attempts"
end

-- Fetch avatar URL from server with Enhanced Error Handling
local function PROFILE.getAvatarFromAPI(discordID)
    if not discordID or type(discordID) ~= "string" then
        log("Invalid Discord ID provided", CONFIG.LOG_LEVEL.ERROR)
        return nil
    end
    
    local response, errorMessage = PROFILE.safeHttpRequest(CONFIG.SERVER_URL, "POST", { discord_id = discordID })
    
    if not response then
        log(errorMessage or "Failed to retrieve avatar", CONFIG.LOG_LEVEL.ERROR)
        return nil
    end
    
    local success, data = pcall(function()
        return HttpService:JSONDecode(response.Body)
    end)
    
    if not success then
        log("Failed to parse server response", CONFIG.LOG_LEVEL.ERROR)
        return nil
    end
    
    if data and data.avatar_url then
        return data.avatar_url
    else
        log("No avatar URL in server response", CONFIG.LOG_LEVEL.WARNING)
        return nil
    end
end

local function PROFILE.LoadDiscordProfilePicture(discordID, size)
    size = math.max(16, math.min(size or 512, 2048))
    
    local FileParent = "seraph.script/profile"
    if not isfolder(FileParent) then
        makefolder("seraph.script")
        makefolder(FileParent)
    end

    local defaultImagePath = "rbxasset://gca/977936678868090920.png"
    local avatarURL = PROFILE.getAvatarFromAPI(discordID)
    if not avatarURL then 
        log("Falling back to default image", CONFIG.LOG_LEVEL.WARNING)
        return defaultImagePath 
    end
    
    local downloadConfig = {
        Url = avatarURL,
        Method = 'GET',
        Headers = {
            ["User-Agent"] = "RobloxDiscordProfilePicLoader/1.1",
            ["Accept"] = "image/png,image/jpeg,image/webp"
        }
    }
    
    local filename = string.format("seraph_%s_%d.png", discordID, tick())
    
    local success, imageData = pcall(function()
        return request(downloadConfig)
    end)
    
    if not success or not imageData.Success then
        log("Image download failed", CONFIG.LOG_LEVEL.ERROR)
        return defaultImagePath
    end
    
    if #imageData.Body < 1024 then
        log("Downloaded image is too small", CONFIG.LOG_LEVEL.WARNING)
        return defaultImagePath
    end
    
    local writeSuccess, writeError = pcall(function()
        writefile(FileParent.."/"..filename, imageData.Body)
    end)
    
    if not writeSuccess then
        log("File writing failed", CONFIG.LOG_LEVEL.ERROR)
        return defaultImagePath
    end
    
    local imageAsset
    local assetSuccess = pcall(function()
        imageAsset = getcustomasset(FileParent.."/"..filename)
    end)
    
    if not assetSuccess then
        log("Custom asset retrieval failed", CONFIG.LOG_LEVEL.ERROR)
        return defaultImagePath
    end
    
    return imageAsset or defaultImagePath
end

local function PROFILE.displayDiscordProfilePicture(discordID)
    local profilePicture = PROFILE.LoadDiscordProfilePicture(discordID)
    
    if not profilePicture then
        log("Could not display profile picture", CONFIG.LOG_LEVEL.WARNING)
        return
    end

    return profilePicture
end

return PROFILE