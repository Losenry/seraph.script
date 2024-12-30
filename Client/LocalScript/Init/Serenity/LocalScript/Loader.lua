if not _G.Key or not _G.DiscordId then return end
print(_G.Key, '|', _G.DiscordId, '|', game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name)
return loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Losenry/seraph.script/refs/heads/main/Client/LocalScript/Init/Serenity/Script/serenity.game.loader"))();
