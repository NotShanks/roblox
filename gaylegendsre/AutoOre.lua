local plr = game.Players.LocalPlayer.Character
_G.oh = true
while _G.oh and wait() do pcall(function()
for i,v in pairs(game:GetService("Workspace").Ores:GetChildren()) do
    if string.find(v.Name, "StardustOre") then
        if (plr.HumanoidRootPart.Position - v.Detect.Position).Magnitude <= 150 then
           repeat wait()
               plr.Humanoid:MoveTo(v.Detect.Position)
               wait(.1)
               game:GetService("Players").LocalPlayer.Character.PickAxe.SwordScript.Activate:FireServer()

            until v.HP.Value <= 0 
        end
    end
end
end)
end
