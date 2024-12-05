	repeat task.wait() until game:IsLoaded()
--Display that the script has connected to the Roblox Client.
	print ("Github Script Connected!")
	game:GetService("StarterGui"):SetCore("SendNotification",{
		Title = "Connection Stable",
		Text = "Script has connected.\nFinding Game..."
	})
	task.wait(1)
	print ("Identifing Game. Do nor re-execute")
	game:GetService("StarterGui"):SetCore("SendNotification",{
		Title = "Loading...",
		Text = "Please do not re-execute."
	})
	task.wait(5)
--Loads The Game Identifier.
	loadstring(game:HttpGet("https://raw.githubusercontent.com/MangoBananas/DevLunar/refs/heads/Tsunami/GameIdentifier.lua"))()
