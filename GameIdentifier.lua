-- Game Finder 
-- This script is here to figure out if a script exist within the MonSoon Hub.

--Testing
if game.PlaceId == 6590224210 then
	print ("Game ID: TEST")
	print (game.PlaceId)
	game:GetService("StarterGui"):SetCore("SendNotification",{
		Title = "Script Found",
		Text = .. MarketplaceService:GetProductInfo(game.PlaceId).Name
	})
--This should be changes as this should be the test script.
	loadstring(game:HttpGet("https://raw.githubusercontent.com/MangoBananas/DevLunar/refs/heads/TropicalStorms/DragonFire/DragonAdventures.lua"))()
	--Dragon Adventures:
    elseif game.PlaceId == 3475397644 then
	print ("Game ID: Dragon Adventures")
	print (game.PlaceId)
	game:GetService("StarterGui"):SetCore("SendNotification",{
		Title = "Script Found",
		Text = "Opening MonSoonHub..."
	})
	loadstring(game:HttpGet("https://raw.githubusercontent.com/MangoBananas/DevLunar/refs/heads/TropicalStorms/DragonFire/DragonAdventures.lua"))()
	--Game is not in the system:
else
	task.wait(5)
	print ("Game ID: UNSUPORTED")
	print (game.PlaceId)
	game:GetService("StarterGui"):SetCore("SendNotification",{
		Title = "Script Unavalable",
		Text = "No script found for current Instance."
	})
end
