if not _G.Key or not _G.DiscordId then return end
print(tostring(game.GameId))
return loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Losenry/seraph.script/refs/heads/main/Client/LocalScript/Init/Serenity/Script/serenity.game.loader"))();
