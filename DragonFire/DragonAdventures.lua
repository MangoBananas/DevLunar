print ("MonSoon Hub Connected:" .. MarketplaceService:GetProductInfo(game.PlaceId).Name)
-- This script is made by DevLunarMoons as a part of the MonSoon Developer Hub.
------------------------------------------------------------------------------------
--									          --
--            __  ___           _____                      __  __      __         --
--           /  |/  /___  ____ / ___/____  ____  ____     / / / /_  __/ /_        --
--          / /|_/ / __ \/ __ \\__ \/ __ \/ __ \/ __ \   / /_/ / / / / __ \       --
--         / /  / / /_/ / / / /__/ / /_/ / /_/ / / / /  / __  / /_/ / /_/ /       --
--        /_/  /_/\____/_/ /_/____/\____/\____/_/ /_/  /_/ /_/\__,_/_.___/        --
--									          --
--    									          --   
--    				made by: DevLunarMoon			          --    
------------------------------------------------------------------------------------
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
	local Window = Rayfield:CreateWindow({
   		Name = "~:| MonSoon Hub |:~",
		Icon = "cloudy",
  		LoadingTitle = "MonSoon Hub",
   		LoadingSubtitle = "Loading",
   		Theme = "AmberGlow",
--		(https://docs.sirius.menu/rayfield/configuration/themes)
  		DisableRayfieldPrompts = false,
  		DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   		ConfigurationSaving = {
      		Enabled = true,
      		FolderName = nil, -- Create a custom folder for your hub/game
      		FileName = "MonSoonHub"
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
      			Note = "Find a private server to use the script.\nMany DA Youtubers have one.",
      			FileName = "Op3perationFore7stFire",
      			SaveKey = true,
      			GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      			Key = {"Hello","key"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   		}
	})
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
local MainTab = Window:CreateTab("Main", "cloudy") -- Main Tab
local AutoFarm = Window:CreateTab("Auto", "gamepad") -- Auto Farm
local DragonStats = Window:CreateTab("Dragon Stats", "wind") -- Dragon Stats
local Teleport = Window:CreateTab("Teleport", "locate") -- Teleportation
local Settings = Window:CreateTab("Settings", "settings") -- Settings
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
local CreatorInformation = MainTab:CreateSection("Current Game: (game.PlaceId).Name\nCurrent UI: Rayfield\nScript Creator: Dev LunarMoons")
----------------------------------------------------------------------------------------------------------------
local AutoFarmSection0 = AutoFarm:CreateSection("Automaticly Collect Food, Materials, an Bonemeal")
	local AutoResources = AutoFarm:CreateToggle({
   		Name = "Collect Resources", 
   		CurrentValue = false,
		Flag = "autoResourceToggle", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   		Callback = function(Value)
			-- The function that takes place when the toggle is pressed
  			-- The variable (Value) is a boolean on whether the toggle is true or false
   	end,
	})
	local ResourceName = AutoFarm:CreateDropdown({
  	 	Name = "Resources Nodes",
   		Options = {"Food","Materials","Bonemeal"},
   		CurrentOption = {"Food"},
   		MultipleOptions = false,
   		Flag = "resourceOptionsDropdown", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   		Callback = function(Options)
   			-- The function that takes place when the selected option is changed
   			-- The variable (Options) is a table of strings for the current selected options
   	end,
	})
local Divider1 = AutoFarm:CreateDivider()

local AutoFarmSection1 = AutoFarm:CreateSection("Automaticly Collect Meat and Fish")
	local AutoMob = AutoFarm:CreateToggle({
   		Name = "Auto Mob",
   		CurrentValue = false,
   		Flag = "autoMobToggle", 
		Callback = function(Value)
   	end,
	})
	local AutoFish = AutoFarm:CreateToggle({
   		Name = "Auto Fish",
   		CurrentValue = false,
   		Flag = "autoFishToggle",
		Callback = function(Value)
   	end,
	})
local Divider2 = AutoFarm:CreateDivider()

local AutoFarmSection2 = AutoFarm:CreateSection("Automaticly Collect Chest and Eggs")
	local AutoChest = AutoFarm:CreateToggle({
   		Name = "Find Chest",
   		CurrentValue = false,
   		Flag = "autoChestToggle",
   		Callback = function(Value)
   	end,
	})
	local AutoEgg = AutoFarm:CreateToggle({
   		Name = "Collect Eggs",
   		CurrentValue = false,
   		Flag = "autoEggToggle",
   		Callback = function(Value)
   	end,
	})
local Divider3 = AutoFarm:CreateDivider()
----------------------------------------------------------------------------------------------------------------
local GodModeDragon = DragonStats:CreateSection("Dragon Stats are unavalable at this time.")
----------------------------------------------------------------------------------------------------------------
if game.PlaceId == 3475397644 then
local HomePlotTeleport = Teleport:CreateSection("Teleport to your plot")
	local PlotButton = Teleport:CreateButton({
		--This function is broken
   		Name = "Teleport to your plot",
   		Callback = function()
			for i, v in next, Workspace.Interactions.Plots.Portals:GetDescendants() do
			if v:IsA("TextLabel") and v.Name:match("Player")  then
			if  v.Text == Player.PlayerGui.WorkspaceGui[Player.Name .. "_DisplayGui"].ContainerFrame.NameLabel.Text then
--			print ("Going to your base plot --> --> -->")
			firetouchinterest(Player.Character.HumanoidRootPart, v.Parent.Parent.Parent.TeleportPart, 0) --Might need to get rid of some of the parents.
			end,
			end,
			end,
		end,
})
end
local WorldTeleport = Teleport:CreateSection("Teleport to the selected world")
	local WorldTeleportPress = Teleport:CreateButton({
   		Name = "Teleport",
   		Callback = function()
   	end,
	})
	local WorldList = Teleport:CreateDropdown({
  	 	Name = "Worlds",
   		Options = {"Undercity","Origins","Grassland","Jungle","Volcano","Tundra","Ocean","Desert","Fantasy","Wasteland","Prehistoric"},
   		CurrentOption = {"Grasslands"},
   		MultipleOptions = false,
   		Flag = "worldTeleportationSelection", 
		Callback = function(Options)
   	end,
	})
local WorldTeleportClarification = Teleport:CreateSection("(Event world are not included)")
----------------------------------------------------------------------------------------------------------------
local Set1 = Settings:CreateSection("Section Example")
----------------------------------------------------------------------------------------------------------------
