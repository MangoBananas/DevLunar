-- Game Finder 
-- This script is here to figure out if a script exist within the MonSoon Hub.

--Testing
--THIS SHOULD BE REPLACED WITH A LOAD RAW GITHUB STRING
if game.PlaceId == 6590224210 then
	print ("Game ID: TEST")
	print (game.PlaceId)
	game:GetService("StarterGui"):SetCore("SendNotification",{
		Title = "Script Found",
		Text = "Opening MonSoonHub..."
	})
	--Dragon Adventures:
	    --THIS SHOULD BE REPLACED WITH A LOAD RAW GITHUB STRING
    elseif game.PlaceId == 3475397644 then
	    print ("Game ID: Dragon Adventures")
	    print (game.PlaceId)
	    game:GetService("StarterGui"):SetCore("SendNotification",{
		    Title = "Script Found",
		    Text = "Opening MonSoonHub..."
	    })
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
