local Key = "F"
local Toggle = false

game:GetService("UserInputService").InputBegan:Connect(function(keyobject, stuffhappening)
    if keyobject.KeyCode == Enum.KeyCode[Key] and not stuffhappening then 
        Toggle = true
    end
end)

game:GetService("UserInputService").InputEnded:Connect(function(keyobject, stuffhappening)
    if keyobject.KeyCode == Enum.KeyCode[Key] and not stuffhappening then 
        Toggle = false
    end
end)


game:GetService('RunService').Stepped:connect(function()
    if Toggle then
        game:GetService("ReplicatedStorage").AerasLib.AerasLibNetwork.Player.PlayerBattleModeService.RicochetBeams:FireServer()

    end
end)

wait(1)
game:GetService("StarterGui"):SetCore(
	"SendNotification",
		{
			Title = "Press F key or hold to use",
			Duration = 5,
			Text = ''
		}
	)
