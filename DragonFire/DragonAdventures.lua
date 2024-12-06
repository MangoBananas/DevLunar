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

   		KeySystem = false, -- Set this to true to use our key system
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
	local MainTab = Window:CreateTab("Main", "cloudy") -- Main Tab, containing 
	local AutoFarm = Window:CreateTab("Auto", "gamepad") -- Auto Farm, Automaticly kills mobs, collect recorces (Separate food, materials, and bones), and collects chest.
	local DragonStats = Window:CreateTab("Dragon Stats", "wind") -- Dragon Stats
	local Teleport = Window:CreateTab("Teleport", "locate") -- Teleportation
	local Settings = Window:CreateTab("Settings", "settings") -- Settings
		--Sections
		local CreatorInformation = MainTab:CreateSection("Creator Information")
		local Main2 = MainTab:CreateSection("Section Example")
		local AutoResources = AutoFarm:CreateSection("Auto Colect Food/Material/Bones")
			local AutoMob = AutoFarm:CreateToggle({
   				Name = "Toggle Example",
   				CurrentValue = false,
   				Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   				Callback = function(Value)
   					-- The function that takes place when the toggle is pressed
  					-- The variable (Value) is a boolean on whether the toggle is true or false
   				end,
			})
		local AutoChest = AutoFarm:CreateSection("Auto Collect Chest")
		local GodModeDragon = DragonStats:CreateSection("Unkillable Dragon")
		local tele1 = Teleport:CreateSection("tele1")
		local tele2 = Teleport:CreateSection("Section Example")
		local Set1 = Settings:CreateSection("Section Example")
			--Toggles
