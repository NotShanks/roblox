for i,v in pairs(game.Players:GetPlayers()) do
    if v ~= game.Players.LocalPlayer then
        if (v.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
            game.Players.LocalPlayer:Kick("ok")
        end
    end
end
