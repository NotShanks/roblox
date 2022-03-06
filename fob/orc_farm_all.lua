_G.on = true
while _G.on and wait() do
pcall(function()
    if game.Players.LocalPlayer.Team.Name == "Human" then
  
    for i,v in pairs(game:GetService("Workspace").Unbreakable.Characters.Orc:GetDescendants()) do
              if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and v.Name ~= "Orc General" then

        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Torso.CFrame*CFrame.new(0,0,5)

for _, v in next, game.Players.LocalPlayer.Backpack:GetChildren() 
do if v.Name == "Flaming Fury" then v.Parent = game.Players.LocalPlayer.Character 
	end 
end

end
end
end
end)
end
