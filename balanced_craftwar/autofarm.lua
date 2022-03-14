_G.aa = true
while _G.aa and wait() do pcall(function()
    for i,v in pairs(game.Workspace:GetDescendants()) do
        if v ~= game.Players.LocalPlayer.Character and v.Name ~= "" then
            if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame*CFrame.new(1,0,3)
                if v.Humanoid:FindFirstChild("creator") then
                    wait(1)
                    v.Head:Destroy()
                    else return
                    
            end
        end
    end
end
--autosword
for _, v in next, game.Players.LocalPlayer.Backpack:GetChildren()
do if v.Name == "Venomshank" then v.Parent = game.Players.LocalPlayer.Character 
	end 
end
end)
end
