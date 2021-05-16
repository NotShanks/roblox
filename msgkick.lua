local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local StringsToDetect = {
    "hacker",
    "hack",
    "exploit",
    "killaura",
    "autofarm",
    "kill aura",
    Players.LocalPlayer.Name:lower(),
}

for _, plr in pairs(Players:GetPlayers()) do
    plr.Chatted:Connect(function(Message)
        for _, blacklistedWords in pairs(StringsToDetect) do
            if string.find(string.lower(Message), string.lower(blacklistedWords)) then
                rconsoleprint("triggered kick: " .. Message)
                LocalPlayer:Kick()
            end
        end
	end)
end

Players.PlayerAdded:Connect(function(Player)
	Player.Chatted:Connect(function(Message)
        for _, blacklistedWords in pairs(StringsToDetect) do
            if string.find(string.lower(Message), string.lower(blacklistedWords)) then
                LocalPlayer:Kick()
            end
        end
	end)
end)

local function findNearestPlayer()
    local Character = LocalPlayer.Character
    local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
    if not (Character or HumanoidRootPart) then return end
    local TargetDistance = math.huge
    local Target    
    for i,v in pairs(game.Players:GetPlayers()) do
        if v ~= LocalPlayer then
            if v.Character and v.Character:WaitForChild("HumanoidRootPart") then
                local mag = (HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude
                if mag < TargetDistance then
                    TargetDistance = mag
                    Target = v.Character.HumanoidRootPart
                end
            end
        end
    end
    return Target
end

spawn(function()
    while wait() do
        if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") and LocalPlayer.Character:FindFirstChild("Client") and LocalPlayer.Character.Client:FindFirstChild("Events")then
            local target = findNearestPlayer()
            local hrp = LocalPlayer.Character.HumanoidRootPart
            if target and (hrp.Position - target.Position).Magnitude < 100 then
                LocalPlayer:Kick()
            end
        end
    end
end)
