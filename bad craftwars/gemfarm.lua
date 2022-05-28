local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/NotShanks/backups/main/ayalib.lua", true))()
local w = library:CreateWindow('Bad Craftwars Gems')

w:Section("Middle")

local a1 = w:Button("Auto Trade On", function()
_G.b = true
while _G.b and wait(.5) do 
    
fireclickdetector(game:GetService("Workspace").Model.Praefactus.Head.ClickDetector)
end
end)

local a2 = w:Button("Auto Trade Off", function()
_G.b = false
while _G.b and wait(.5) do 
    
fireclickdetector(game:GetService("Workspace").Model.Praefactus.Head.ClickDetector)
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

w:Section("Auto")
local g = w:Button("Auto Click On", function()
     local vu = game:GetService("VirtualUser")
_G.yeet = true
while _G.yeet and wait() do
vu:Button1Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
wait(0.1)
vu:Button1Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end
end)

local g1 = w:Button("Auto Click Off", function()
_G.yeet = false
while _G.yeet and wait() do
vu:Button1Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
wait(0.1)
vu:Button1Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end
end)
