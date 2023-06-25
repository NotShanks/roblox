_G.c = true
local char = game.Players.LocalPlayer.Character
local tool = char:FindFirstChildOfClass("Tool")
while wait(.2) and _G.c do
    for i,v in pairs(workspace.GRASS:GetChildren()) do
        if (v.CFrame.p - char.HumanoidRootPart.CFrame.p).magnitude < 10 then 
            workspace["Heck Yeah"].BringTheMowingIGuess:FireServer(v, tool)
        end
      end
    end
