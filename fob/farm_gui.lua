local library = loadstring(game:HttpGet("https://pastebin.com/raw/AtQAJECZ", true))()
local w = library:CreateWindow('FOB')
w:Section('Top')

local a23 = w:Button("AutoFarm On", function()
_G.on = true
while _G.on and wait() do
pcall(function()
    if game.Players.LocalPlayer.Team.Name == "Human" then
  
    for i,v in pairs(game:GetService("Workspace").Unbreakable.Characters.Orc:GetDescendants()) do
              if string.find(v.Name, "Orc") or string.find(v.Name, "Elite") or string.find(v.Name, "Tyrant") and v.Humanoid.Health ~= 0 then
                  if v.Name ~= "Orc General" then

        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Torso.CFrame*CFrame.new(0,0,5)

end
end
end
end
end)
end
wait()
_G.oon = true
while _G.oon and wait() do
pcall(function()
if game.Players.LocalPlayer.Team.Name == "Orc" then
for i,v in pairs(game:GetService("Workspace").Unbreakable.Characters.Human:GetChildren()) do
               if string.find(v.Name, "Human") or string.find(v.Name, "Rogue") then
               if v.Name ~= "Human General" and v.Humanoid.Health ~= 0 then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Torso.CFrame*CFrame.new(0,0,5)
end
end
end
end
end)
end
end)

local b1 = w:Button("AutoFarm Off", function()
_G.on = false
while _G.on and wait() do
pcall(function()
    if game.Players.LocalPlayer.Team.Name == "Human" then
  
    for i,v in pairs(game:GetService("Workspace").Unbreakable.Characters.Orc:GetDescendants()) do
              if string.find(v.Name, "Orc") or string.find(v.Name, "Elite") or string.find(v.Name, "Tyrant") and v.Humanoid.Health ~= 0 then
                  if v.Name ~= "Orc General" then

        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Torso.CFrame*CFrame.new(0,0,5)

end
end
end
end
end)
end
wait()
_G.oon = false
while _G.oon and wait() do
pcall(function()
if game.Players.LocalPlayer.Team.Name == "Orc" then
for i,v in pairs(game:GetService("Workspace").Unbreakable.Characters.Human:GetChildren()) do
               if string.find(v.Name, "Human") or string.find(v.Name, "Rogue") then
               if v.Name ~= "Human General" and v.Humanoid.Health ~= 0 then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Torso.CFrame*CFrame.new(0,0,5)
end
end
end
end
end)
end
end)

w:Section("Middle")
local a1 = w:Button("Auto Equip", function()
    _G.aaa = true
    while _G.aaa and wait() do pcall(function()
for _, v in next, game.Players.LocalPlayer.Backpack:GetChildren() 
do if v.Name == "Flaming Fury" then v.Parent = game.Players.LocalPlayer.Character 
	end 
end
end)
end
end)

local dff = w:Button("Auto Equip Off", function()
    _G.aaa = false
end)

w:Section("Bottom")

local a2 = w:Button("Auto Clicker On", function()
local vu = game:GetService("VirtualUser")
_G.yeet = true
while _G.yeet and wait(1) do
vu:Button1Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
wait(0.1)
vu:Button1Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end
end)

local f3 = w:Button("Auto Clicker Off", function()
    local vu = game:GetService("VirtualUser")
_G.yeet = false
while _G.yeet and wait() do
vu:Button1Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
wait(0.1)
vu:Button1Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end
end)
