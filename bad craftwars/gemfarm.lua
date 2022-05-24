local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/NotShanks/backups/main/ayalib.lua", true))()
local w = library:CreateWindow('Bad Craftwars Gems')
w:Section('Top')

local b1 = w:Button("Auto Kill Spectre On", function()
_G.aaaaa = true
while _G.aaaaa do wait() pcall(function()
    for i,v in pairs(game:GetService("Workspace").Mobs:GetDescendants()) do 
        if string.find(v.Name, "Spectre") then
            wait(1)
            v.Humanoid.Health = 0
end
end
end)
end
end)

local b2 = w:Button("Auto Kill Spectre Off", function()
    _G.aaaaa = false
    while _G.aaaaa do wait()
        end
end)

w:Section("Middle")

local a1 = w:Button("Auto Summon On", function()
    _G.aa = true
while _G.aa do 
    task.wait(200)
game.Players:Chat("spectre i challenge you")
end
end)

local a2 = w:Button("Auto Summon Off", function()
        _G.aa = false
while _G.aa do 
    task.wait(200)
game.Players:Chat("spectre i challenge you")
end
end)

w:Section("Bottom")
local c = w:Button("Auto Collect On", function()
    _G.on = true
while _G.on do 
    task.wait(200) 
for i,v in pairs(game:GetService("Workspace").Plates:GetDescendants()) do 
    if v:FindFirstChild("TouchInterest") then
firetouchinterest(v, game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart"),0)
wait()
firetouchinterest(v, game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart"),1)
end
end
end
end)

local c1 = w:Button("Auto Collect Off", function()
    _G.on = false
while _G.on do 
    task.wait(200) 
for i,v in pairs(game:GetService("Workspace").Plates:GetDescendants()) do 
    if v:FindFirstChild("TouchInterest") then
firetouchinterest(v, game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart"),0)
wait()
firetouchinterest(v, game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart"),1)
end
end
end
end)
