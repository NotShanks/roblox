local gay = nil
_G.on = true
while _G.on and wait() do pcall(function()
for i,v in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do 
    if v:FindFirstChild("HumanoidRootPart") then
        gay = v.HumanoidRootPart.Position
    end
end
local args = {
    [1] = 1,
    [2] = gay
}

game:GetService("Players").LocalPlayer.Character:FindFirstChild("Magic Bow").LocalScript:FindFirstChild("Magic Bow"):FireServer(unpack(args))
end)
end
