-- local ServerFunc = {};
-- local isPrivate = false;
-- local fask = task;

-- spawn(function()
--     pcall(function()
--         local privaterquest,GetJsonReq = pcall(function() return game:HttpGet("https://httpbin.org/get", true) end)
--         if privaterquest == true then
--             local GetJsonReqR = game:GetService("HttpService"):JSONDecode(GetJsonReq)
--             if tostring(GetJsonReqR["headers"]["Roblox-Session-Id"]):find("PrivateGame") then
--                 isPrivate = true
--             else
--                 isPrivate = false
--             end
--         else
--             isPrivate = true
--         end
--     end)
-- end)

-- function ServerFunc:TeleportFast()
--     if isPrivate == false then
--         local PlaceID = game.PlaceId
--         local AllIDs = {}
--         local foundAnything = ""
--         local actualHour = os.date("!*t").hour
--         local Deleted = false
--         local File =
--             pcall(
--                 function()
--                     AllIDs = game:GetService("HttpService"):JSONDecode(readfile("NotSameServers.json"))
--                 end
--             )
--         if not File then
--             table.insert(AllIDs, actualHour)
--             writefile("NotSameServers.json", game:GetService("HttpService"):JSONEncode(AllIDs))
--         end
--         function TPReturner()
--             local Site
--             if foundAnything == "" then
--                 Site = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. PlaceID .. "/servers/Public?sortOrder=Asc&limit=100"))
--             else
--                 Site =
--                     game.HttpService:JSONDecode(
--                         game:HttpGet(
--                             "https://games.roblox.com/v1/games/" ..
--                             PlaceID .. "/servers/Public?sortOrder=Asc&limit=100&cursor=" .. foundAnything
--                         )
--                     )
--             end
--             local ID = ""
--             if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
--                 foundAnything = Site.nextPageCursor
--             end
--             local num = 0
--             for i, v in pairs(Site.data) do
--                 local Possible = true
--                 ID = tostring(v.id)
--                 if tonumber(v.maxPlayers) > tonumber(v.playing) then
--                     for _, Existing in pairs(AllIDs) do
--                         if num ~= 0 then
--                             if ID == tostring(Existing) then
--                                 Possible = false
--                             end
--                         else
--                             if tonumber(actualHour) ~= tonumber(Existing) then
--                                 pcall(function()
--                                     delfile("NotSameServers.json")
--                                     AllIDs = {}
--                                     table.insert(AllIDs, actualHour)
--                                 end)
--                             end
--                         end
--                         num = num + 1
--                     end
--                     if Possible == true then
--                         table.insert(AllIDs, ID)
--                         task.wait()
--                         pcall(
--                             function()
--                                 writefile("NotSameServers.json", game:GetService("HttpService"):JSONEncode(AllIDs))
--                                 task.wait()
--                                 local args = {
--                                     [1] = "teleport",
--                                     [2] = ID
--                                 }

--                                 game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer(unpack(args))
--                             end
--                         )
--                         task.wait(0.5)
--                     end
--                 end
--             end
--         end

--         local Teleport = function()
--             while task.wait() do
--                 pcall(function()
--                     TPReturner()
--                     if foundAnything ~= "" then
--                         TPReturner()
--                     end
--                 end)
--             end
--         end

--         Teleport()
--     end
-- end

-- --/ Teleport Func
-- fask = task
-- local PlaceID = game.PlaceId
-- local AllIDs = {}
-- local foundAnything = ""
-- local actualHour = os.date("!*t").hour
-- local Deleted = false
-- local File = pcall(function()
-- 	AllIDs = game:GetService("HttpService"):JSONDecode(readfile("NotSameServers.json"))
-- end)

-- if not File then
-- 	table.insert(AllIDs, actualHour)
-- 	writefile("NotSameServers.json", game:GetService("HttpService"):JSONEncode(AllIDs))
-- end

-- function TPReturner()
-- 	local Site
-- 	if foundAnything == "" then
-- 		Site = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. PlaceID .. "/servers/Public?sortOrder=Asc&limit=100"))
-- 	else
-- 		Site = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" ..PlaceID .. "/servers/Public?sortOrder=Asc&limit=100&cursor=" .. foundAnything))
-- 	end
-- 	local ID = ""
-- 	if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
-- 		foundAnything = Site.nextPageCursor
-- 	end
-- 	local num = 0
-- 	for i, v in pairs(Site.data) do
-- 		local Possible = true
-- 		ID = tostring(v.id)
-- 		if tonumber(v.maxPlayers) > tonumber(v.playing) then
-- 			for _, Existing in pairs(AllIDs) do
-- 				if num ~= 0 then
-- 					if ID == tostring(Existing) then
-- 						Possible = false
-- 					end
-- 				else
-- 					if tonumber(actualHour) ~= tonumber(Existing) then
-- 						local delFile = pcall(function()
-- 							delfile("NotSameServers.json")
-- 							AllIDs = {}
-- 							table.insert(AllIDs, actualHour)
-- 						end)
-- 					end
-- 				end
-- 				num = num + 1
-- 			end
-- 			if Possible == true then
-- 				table.insert(AllIDs, ID)
-- 				fask.wait()
-- 				pcall(function()
-- 					writefile("NotSameServers.json", game:GetService("HttpService"):JSONEncode(AllIDs))
-- 					fask.wait()
-- 					local args = {
-- 						[1] = "teleport",
-- 						[2] = ID
-- 					}

-- 					game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer(unpack(args))
-- 				end)
-- 				fask.wait(0.5)
-- 			end
-- 		end
-- 	end
-- end

-- function Teleport()
-- 	while fask.wait() do
-- 		pcall(function()
-- 			TPReturner()
-- 			if foundAnything ~= "" then
-- 				TPReturner()
-- 			end
-- 		end)
-- 	end
-- end

-- function ServerFunc:NormalTeleport()
--     if isPrivate == false then
--         task.delay(15,function()
--             pcall(function()
-- 				Teleport()
--             end)
--         end)
--         repeat task.wait()
--             pcall(function()
--                 game:GetService("Players")["LocalPlayer"].PlayerGui.ServerBrowser.Enabled = true
--                 task.wait(0.5)
--             end)
--         until game:GetService("Players")["LocalPlayer"].PlayerGui.ServerBrowser.Frame.FakeScroll.Inside:FindFirstChild("Template")
--         local ErrorFrame = 0
--         repeat task.wait()
--             local ScrFrane = game:GetService("Players")["LocalPlayer"].PlayerGui.ServerBrowser.Frame.ScrollingFrame
--             ScrFrane.CanvasPosition = Vector2.new(0,300)
--             ErrorFrame = ErrorFrame + 1
--         until ScrFrane.CanvasPosition == Vector2.new(0,300) or ErrorFrame >= 6
--         while task.wait(0.1) do
--             pcall(function()
--                 local me = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
--                 me.CFrame = CFrame.new(me.Position.X,5000,me.Position.Z)
--                 for i,v in pairs(game:GetService("Players")["LocalPlayer"].PlayerGui.ServerBrowser.Frame.FakeScroll.Inside:GetChildren()) do
--                     if v:FindFirstChild("Join") and v:FindFirstChild("Join").Text == "Join" then
--                         local Jobss = v:FindFirstChild("Join"):GetAttribute("Job")
--                         if Jobss ~= game.JobId and Jobss ~= "1234567890123" then
--                             local args = {
--                                 [1] = "teleport",
--                                 [2] = Jobss
--                             }

--                             game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer(unpack(args))
--                             task.wait()
--                         end
--                     end
--                 end
--                 task.wait()
--                 local ScrFrane = game:GetService("Players")["LocalPlayer"].PlayerGui.ServerBrowser.Frame.ScrollingFrame
--                 ScrFrane.CanvasPosition = Vector2.new(0,ScrFrane.CanvasPosition.Y + 260)
--             end)
--         end
--     end
-- end

-- function ServerFunc:Rejoin()
--     game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId,game.JobId, game:GetService("Players").LocalPlayer)
-- end

-- return ServerFunc
local ServerTeleport = {}

-- Constants
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")

local SERVERS_API_URL = "https://games.roblox.com/v1/games/%d/servers/Public?sortOrder=Asc&limit=100"
local SERVER_HISTORY_FILE = "ServerHistory.json"
local PRIVATE_SERVER_CHECK_URL = "https://httpbin.org/get"
local MAX_RETRY_ATTEMPTS = 3
local TELEPORT_COOLDOWN = 0.5
local SCROLL_RETRY_LIMIT = 6
local SCROLL_Y_INCREMENT = 260

-- Private variables
local isPrivateServer = false
local serverHistory = {}
local currentHour = os.date("!*t").hour

-- Utility functions
local function loadServerHistory()
    local success, result = pcall(function()
        return HttpService:JSONDecode(readfile(SERVER_HISTORY_FILE))
    end)
    
    if not success then
        serverHistory = {currentHour}
        writefile(SERVER_HISTORY_FILE, HttpService:JSONEncode(serverHistory))
    else
        serverHistory = result
    end
end

local function checkPrivateServer()
    local success, response = pcall(function()
        return HttpService:JSONDecode(game:HttpGet(PRIVATE_SERVER_CHECK_URL, true))
    end)
    
    if success then
        local sessionId = response.headers["Roblox-Session-Id"]
        isPrivateServer = sessionId and sessionId:find("PrivateGame") ~= nil
    else
        isPrivateServer = true
    end
end

local function getAvailableServers(cursor)
    local url = string.format(SERVERS_API_URL, game.PlaceId)
    if cursor then
        url = url .. "&cursor=" .. cursor
    end
    
    local success, result = pcall(function()
        return HttpService:JSONDecode(game:HttpGet(url))
    end)
    
    if success then
        return result
    end
    return nil
end

local function updateServerHistory(serverId)
    -- Clear history if hour changed
    if tonumber(serverHistory[1]) ~= currentHour then
        serverHistory = {currentHour}
    end
    
    table.insert(serverHistory, serverId)
    pcall(function()
        writefile(SERVER_HISTORY_FILE, HttpService:JSONEncode(serverHistory))
    end)
end

local function teleportToServer(serverId)
    local args = {
        ["teleport"] = true,
        ["serverId"] = serverId
    }
    
    return pcall(function()
        ReplicatedStorage.__ServerBrowser:InvokeServer("teleport", serverId)
    end)
end

-- Public functions
function ServerTeleport:FastTeleport()
    if isPrivateServer then return end
    
    local cursor = ""
    local attempts = 0
    
    while attempts < MAX_RETRY_ATTEMPTS do
        local serverList = getAvailableServers(cursor)
        if not serverList then break end
        
        for _, server in ipairs(serverList.data) do
            if server.maxPlayers > server.playing and not table.find(serverHistory, server.id) then
                if teleportToServer(server.id) then
                    updateServerHistory(server.id)
                    return true
                end
            end
        end
        
        cursor = serverList.nextPageCursor
        if not cursor or cursor == "null" then break end
        
        attempts = attempts + 1
        task.wait(TELEPORT_COOLDOWN)
    end
    
    return false
end

function ServerTeleport:BrowserTeleport()
    if isPrivateServer then return end
    
    local localPlayer = Players.LocalPlayer
    local serverBrowser = localPlayer.PlayerGui:WaitForChild("ServerBrowser")
    
    -- Show server browser
    serverBrowser.Enabled = true
    
    -- Wait for server list to load
    local serverList = serverBrowser.Frame.FakeScroll.Inside
    if not serverList:WaitForChild("Template", 5) then return end
    
    -- Auto-scroll functionality
    local scrollFrame = serverBrowser.Frame.ScrollingFrame
    local scrollAttempts = 0
    
    while scrollAttempts < SCROLL_RETRY_LIMIT do
        pcall(function()
            -- Elevate character to prevent interference
            local character = localPlayer.Character
            if character then
                character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(
                    character:GetPivot().Position + Vector3.new(0, 5000, 0)
                )
            end
            
            -- Try joining available servers
            for _, server in ipairs(serverList:GetChildren()) do
                local joinButton = server:FindFirstChild("Join")
                if joinButton and joinButton.Text == "Join" then
                    local jobId = joinButton:GetAttribute("Job")
                    if jobId and jobId ~= game.JobId and jobId ~= "1234567890123" then
                        teleportToServer(jobId)
                        task.wait(TELEPORT_COOLDOWN)
                    end
                end
            end
            
            -- Scroll down
            scrollFrame.CanvasPosition += Vector2.new(0, SCROLL_Y_INCREMENT)
        end)
        
        scrollAttempts += 1
        task.wait(0.1)
    end
end

function ServerTeleport:Rejoin()
    TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, Players.LocalPlayer)
end

-- Initialize
task.spawn(function()
    checkPrivateServer()
    loadServerHistory()
end)

return ServerTeleport
