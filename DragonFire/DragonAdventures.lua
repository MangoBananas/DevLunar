-- Print in console showing that the script was found.
print ("Dragon adventures script has been located and is running")
  local MonSoonLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
  local MainWindow = MonSoonLib:MakeWindow({Name = "MonSoon Hub: Dragon Adventures", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
    local MainTab = MainWindow:MakeTab({
	    Name = "Main",
	    Icon = "rbxassetid://4483345998",
	    PremiumOnly = false
    })
        local Section = MainTab:AddSection({
	        Name = "Section 1"
        })
