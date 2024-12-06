-- This script is used when the code is detected.
	-- This script should kick the player.
	-- In the situation that kicking the player doesnt work, the notification should still show.

print ("Script is detected by the anticheat. Please wait for a patch.")
game:GetService("StarterGui"):SetCore("SendNotification",{
			Title = "DETECTED",
			Text = "Kicking Player.\nPlease wait for a new patch.\nDo not re-execute."
		})
game.Players.LocalPlayer:Kick("(ERROR ID: Hurricane)\n\nScript is detected.\nPlease wait for a patch.")
