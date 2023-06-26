_G.c = true
while wait(.2) and _G.c do pcall(function()
    for i,v in pairs(workspace.GRASS:GetChildren()) do
        if (v.CFrame.p - game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.p).magnitude < 15 then 
            workspace["Heck Yeah"].BringTheMowingIGuess:FireServer(v, game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"))
        end
      end
    end)
end
