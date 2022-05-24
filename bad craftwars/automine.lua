    _G.tog = true
local cameraCFrame = CFrame.new(73.6514816, -174.55777, -82.1059418, 0.703487217, 0.447380722, -0.552228451, -1.4901163e-08, 0.777011812, 0.629486024, 0.710707963, -0.442835361, 0.546617806)
local player = game.Players.LocalPlayer

function gay()
for _, v in next, game.Players.LocalPlayer.Backpack:GetChildren() 
do if v.Name == "Multipick" then v.Parent = game.Players.LocalPlayer.Character
    end
end
end

while _G.tog do 
pcall(function() if 
    (player.Character:FindFirstChildOfClass("Humanoid").Health <= 0) 
 then
    wait(5)
player.Character.HumanoidRootPart.CFrame = CFrame.new(85, -188, -93)
end
gay()
wait(1)
game:GetService("Workspace").Camera.CFrame = cameraCFrame
task.wait()
end)
end
