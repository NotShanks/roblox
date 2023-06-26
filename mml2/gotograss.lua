_G.on = true
while _G.on and wait() do pcall(function()
    for i,v in pairs(workspace.GRASS:GetDescendants()) do
        if v.Name == "GrassPart" and (v.CFrame.p - game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.p).magnitude < 15 then
            if v.Slapped.Value ~= true then
                game.Players.LocalPlayer.Character.Humanoid:MoveTo(v.CFrame.p)
            end
        end
    end
    end)
end
