local plr = game.Players.LocalPlayer.Character
local heal = game.Workspace.World.Spawn["Healing Fountain"].FountainMesh
local mana = game.Players.LocalPlayer.PlayerGui.MainGui.Right.CharacterStats.Main.Bars.Mana.ManaText

-- AutoClick
local VirtualInputManager = game:GetService("VirtualInputManager")
local mouse = game.Players.LocalPlayer:GetMouse()
local X, Y = mouse.X, mouse.Y

local Monster = "Lightning Dragon"
local pat = game.Workspace.Mobs["Superboss Room"]

_G.on = true
while _G.on and wait() do
pcall(function()
for i,v in pairs(pat:GetChildren()) do
    if string.find(v.Name, Monster) and v.Enemy.Health ~= 0 then 
       plr.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,0,10)
       --v.HumanoidRootPart.CFrame = plr.HumanoidRootPart.CFrame * CFrame.new(0,0,-5)
       v.HumanoidRootPart.Anchored = true
    end
end

--Click
VirtualInputManager:SendMouseButtonEvent(X, Y, 0, true, game, 1)
VirtualInputManager:SendMouseButtonEvent(X, Y, 0, false, game, 1)

--Heal
if plr.Humanoid.Health < 3000 then 
    plr.HumanoidRootPart.CFrame = heal.CFrame
end
end)
end
