local library = loadstring(game:HttpGet("https://pastebin.com/raw/AtQAJECZ", true))()
local w = library:CreateWindow('Cheruit Farm')
w:Section('Top')

local b1 = w:Button("Chest On", function()
_G.on = true
while _G.on and wait(2) do
for i,v in pairs(game.Workspace:GetDescendants()) do
    if string.find(v.Name, "Chest") and v:IsA("Part") then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
        
    end
end
end
end)

local b21 = w:Button("Chest Off | Reset", function()
_G.on = false
while _G.on and wait(2) do
for i,v in pairs(game.Workspace:GetDescendants()) do
    if string.find(v.Name, "Chest") and v:IsA("Part") then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
        
    end
end
end
wait(1)
game:GetService("Players").LocalPlayer.Character.Humanoid.Health = 0
    end)

w:Section('Middle')
local b2 = w:Button("Buy Random Fruit", function()


local args = {
    [1] = "Cousin",
    [2] = "Check"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

wait(2)
local args = {
    [1] = "Cousin",
    [2] = "Buy"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

end)
