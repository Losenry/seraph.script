local ServerFunc = {};
local isPrivate = false;
local fask = task;

spawn(function()
    pcall(function()
        local privaterquest,GetJsonReq = pcall(function() return game:HttpGet("https://httpbin.org/get", true) end)
        if privaterquest == true then
            local GetJsonReqR = game:GetService("HttpService"):JSONDecode(GetJsonReq)
            if tostring(GetJsonReqR["headers"]["Roblox-Session-Id"]):find("PrivateGame") then
                isPrivate = true
            else
                isPrivate = false
            end
        else
            isPrivate = true
        end
    end)
end)

function ServerFunc:TeleportFast()
    if isPrivate == false then
        local PlaceID = game.PlaceId
        local AllIDs = {}
        local foundAnything = ""
        local actualHour = os.date("!*t").hour
        local Deleted = false
        local File =
            pcall(
                function()
                    AllIDs = game:GetService("HttpService"):JSONDecode(readfile("NotSameServers.json"))
                end
            )
        if not File then
            table.insert(AllIDs, actualHour)
            writefile("NotSameServers.json", game:GetService("HttpService"):JSONEncode(AllIDs))
        end
        function TPReturner()
            local Site
            if foundAnything == "" then
                Site = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. PlaceID .. "/servers/Public?sortOrder=Asc&limit=100"))
            else
                Site =
                    game.HttpService:JSONDecode(
                        game:HttpGet(
                            "https://games.roblox.com/v1/games/" ..
                            PlaceID .. "/servers/Public?sortOrder=Asc&limit=100&cursor=" .. foundAnything
                        )
                    )
            end
            local ID = ""
            if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
                foundAnything = Site.nextPageCursor
            end
            local num = 0
            for i, v in pairs(Site.data) do
                local Possible = true
                ID = tostring(v.id)
                if tonumber(v.maxPlayers) > tonumber(v.playing) then
                    for _, Existing in pairs(AllIDs) do
                        if num ~= 0 then
                            if ID == tostring(Existing) then
                                Possible = false
                            end
                        else
                            if tonumber(actualHour) ~= tonumber(Existing) then
                                pcall(function()
                                    delfile("NotSameServers.json")
                                    AllIDs = {}
                                    table.insert(AllIDs, actualHour)
                                end)
                            end
                        end
                        num = num + 1
                    end
                    if Possible == true then
                        table.insert(AllIDs, ID)
                        task.wait()
                        pcall(
                            function()
                                writefile("NotSameServers.json", game:GetService("HttpService"):JSONEncode(AllIDs))
                                task.wait()
                                local args = {
                                    [1] = "teleport",
                                    [2] = ID
                                }

                                game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer(unpack(args))
                            end
                        )
                        task.wait(0.5)
                    end
                end
            end
        end

        local Teleport = function()
            while task.wait() do
                pcall(function()
                    TPReturner()
                    if foundAnything ~= "" then
                        TPReturner()
                    end
                end)
            end
        end

        Teleport()
    end
end

--/ Teleport Func
fask = task
local PlaceID = game.PlaceId
local AllIDs = {}
local foundAnything = ""
local actualHour = os.date("!*t").hour
local Deleted = false
local File = pcall(function()
	AllIDs = game:GetService("HttpService"):JSONDecode(readfile("NotSameServers.json"))
end)

if not File then
	table.insert(AllIDs, actualHour)
	writefile("NotSameServers.json", game:GetService("HttpService"):JSONEncode(AllIDs))
end

function TPReturner()
	local Site
	if foundAnything == "" then
		Site = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. PlaceID .. "/servers/Public?sortOrder=Asc&limit=100"))
	else
		Site = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" ..PlaceID .. "/servers/Public?sortOrder=Asc&limit=100&cursor=" .. foundAnything))
	end
	local ID = ""
	if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
		foundAnything = Site.nextPageCursor
	end
	local num = 0
	for i, v in pairs(Site.data) do
		local Possible = true
		ID = tostring(v.id)
		if tonumber(v.maxPlayers) > tonumber(v.playing) then
			for _, Existing in pairs(AllIDs) do
				if num ~= 0 then
					if ID == tostring(Existing) then
						Possible = false
					end
				else
					if tonumber(actualHour) ~= tonumber(Existing) then
						local delFile = pcall(function()
							delfile("NotSameServers.json")
							AllIDs = {}
							table.insert(AllIDs, actualHour)
						end)
					end
				end
				num = num + 1
			end
			if Possible == true then
				table.insert(AllIDs, ID)
				fask.wait()
				pcall(function()
					writefile("NotSameServers.json", game:GetService("HttpService"):JSONEncode(AllIDs))
					fask.wait()
					local args = {
						[1] = "teleport",
						[2] = ID
					}

					game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer(unpack(args))
				end)
				fask.wait(0.5)
			end
		end
	end
end

function Teleport()
	while fask.wait() do
		pcall(function()
			TPReturner()
			if foundAnything ~= "" then
				TPReturner()
			end
		end)
	end
end

function ServerFunc:NormalTeleport()
    if isPrivate == false then
        task.delay(15,function()
            pcall(function()
				Teleport()
            end)
        end)
        repeat task.wait()
            pcall(function()
                game:GetService("Players")["LocalPlayer"].PlayerGui.ServerBrowser.Enabled = true
                task.wait(0.5)
            end)
        until game:GetService("Players")["LocalPlayer"].PlayerGui.ServerBrowser.Frame.FakeScroll.Inside:FindFirstChild("Template")
        local ErrorFrame = 0
        repeat task.wait()
            local ScrFrane = game:GetService("Players")["LocalPlayer"].PlayerGui.ServerBrowser.Frame.ScrollingFrame
            ScrFrane.CanvasPosition = Vector2.new(0,300)
            ErrorFrame = ErrorFrame + 1
        until ScrFrane.CanvasPosition == Vector2.new(0,300) or ErrorFrame >= 6
        while task.wait(0.1) do
            pcall(function()
                local me = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
                me.CFrame = CFrame.new(me.Position.X,5000,me.Position.Z)
                for i,v in pairs(game:GetService("Players")["LocalPlayer"].PlayerGui.ServerBrowser.Frame.FakeScroll.Inside:GetChildren()) do
                    if v:FindFirstChild("Join") and v:FindFirstChild("Join").Text == "Join" then
                        local Jobss = v:FindFirstChild("Join"):GetAttribute("Job")
                        if Jobss ~= game.JobId and Jobss ~= "1234567890123" then
                            local args = {
                                [1] = "teleport",
                                [2] = Jobss
                            }

                            game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer(unpack(args))
                            task.wait()
                        end
                    end
                end
                task.wait()
                local ScrFrane = game:GetService("Players")["LocalPlayer"].PlayerGui.ServerBrowser.Frame.ScrollingFrame
                ScrFrane.CanvasPosition = Vector2.new(0,ScrFrane.CanvasPosition.Y + 260)
            end)
        end
    end
end

function ServerFunc:Rejoin()
    game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId,game.JobId, game:GetService("Players").LocalPlayer)
end
