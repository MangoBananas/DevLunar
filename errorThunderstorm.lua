-- This script is used when the code is being Updated.
	-- This script should kick the player.
	-- In the situation that kicking the player doesnt work, the notification should still show.

print ("Script is being updated. Please wait between 10-30 minutes before trying again.")
game:GetService("StarterGui"):SetCore("SendNotification",{
			Title = "UPDATING",
			Text = "Kicking Player.\nPlease wait 10-30 minutes."
		})
game.Players.LocalPlayer:Kick("\n(ERROR ID: Thunderstorm)\n\nScript is updating.\nPlease wait 10-30 minutes.\n")
