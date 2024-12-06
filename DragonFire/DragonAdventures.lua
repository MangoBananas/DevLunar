-- Print in console showing that the script was found.
print ("Dragon adventures script has been located and is running")
	-- Base for the UI
	local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
		--
		local Window = Rayfield:CreateWindow({
   			Name = "MonSoon Hub",
   			Icon = 0,
   			LoadingTitle = "MonSoon Hub",
   			LoadingSubtitle = "Loading...",
   			Theme = "AmberGlow", -- https://docs.sirius.menu/rayfield/configuration/themes

  			 DisableRayfieldPrompts = false,
  			 DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   		ConfigurationSaving = {
      			Enabled = true,
      			FolderName = nil, -- Create a custom folder for your hub/game
      			FileName = "MonSoon Hub"
  		},

   		Discord = {
      			Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      			Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      			RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   		},

   		KeySystem = true, -- Set this to true to use our key system
   			KeySettings = {
      				Title = "MonSoon Hub",
      				Subtitle = "Key System",
      				Note = "Hello", -- Use this to tell the user how to get a key
      				FileName = "Op3perationFore7stFire", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      				SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      				GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      				Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   			}
		})
	--Tabs
	local MainTab = Window:CreateTab("Main", "cloudy") -- Title, Image
	local AutoFarm = Window:CreateTab("Auto", "gamepad") -- Title, Image
	local DragonStats = Window:CreateTab("Dragon Stats", "wind") -- Title, Image
	local Teleport = Window:CreateTab("Teleport", "locate") -- Title, Image
	local Settings = Window:CreateTab("Settings", "settings") -- Title, Image
