local library = loadstring(game:HttpGet("https://pastebin.com/raw/AtQAJECZ", true))()
local w = library:CreateWindow('Teleports')
w:Section('Strength')
--Strength
local b1 = w:Button("Gym", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Zones.GymZone.CFrame
end)

local b1 = w:Button("1K Agility", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Zones.TrailZone.CFrame
end)

local b1 = w:Button("Gong House 10k Str", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Zones.GonHouseZone.CFrame
end)

local b1 = w:Button("Arm Wresting 30k Str", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Zones.ArmWrestlingZone.CFrame
end)

local b1 = w:Button("Troupe 1M Str", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Zones.StandoffZone.CFrame
end)

local b1 = w:Button("Tower 50M Str", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Zones.TrickZone.CFrame
end)

local b1 = w:Button("Town 1B Strength", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Zones.PrizeZone.CFrame
end)

--Durability
local g = library:CreateWindow("Durability")
local n1 = g:Button("Swamp 10k Dur", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Zones.SwampZone.CFrame
end)

local n1 = g:Button("Nen Impact 30k Dur", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Zones.NenImpactZone.CFrame
end)

local n1 = g:Button("Icy 1M Dur", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Zones.IceRuinsZone.CFrame
end)

local n1 = g:Button("Zevil 50M Dur", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Zones.ZevilZone.CFrame
end)

local n1 = g:Button("Dodgeball 1B Dur", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Zones.DodgeballZone.CFrame
end)


--Nen
local f = library:CreateWindow("Nen")
local k1 = f:Button("Talk to Gon", function()
    local fuckme = game:GetService("Workspace").Yorknew.Gon
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = fuckme.CFrame
    fireproximityprompt(fuckme.ProximityPrompt)
end)

local k1 = f:Button("Wiilow 20 Nen", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Zones.WillowZone.CFrame
end)


local k1 = f:Button("Nostrade 1M Nen", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Zones.MansionZone.CFrame
end)

local k1 = f:Button("Milsy 50M Nen", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Zones.WetlandsZone.CFrame
end)

local k1 = f:Button("Greedy 1B Nen", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Zones.BadlandsZone.CFrame
end)

local l = library:CreateWindow("Farm")

local p1 = l:Button("Farm Str", function()
    _G.on = true
while _G.on and wait(.5) do 

game:GetService("ReplicatedStorage").Remotes.train:FireServer("str")

game:GetService("ReplicatedStorage").Remotes.train:FireServer("agi")

end
end)

local p1 = l:Button("Farm Dur", function()
    _G.on = true
while _G.on and wait(.5) do 

game:GetService("ReplicatedStorage").Remotes.train:FireServer("dur")

game:GetService("ReplicatedStorage").Remotes.train:FireServer("agi")

end
end)

local p1 = l:Button("Farm Nen", function()
        _G.on = true
while _G.on and wait(.5) do 

game:GetService("ReplicatedStorage").Remotes.train:FireServer("nen")

end
end)

local p1 = l:Button("Off", function()
    _G.on = false
    while _G.on and wait() do 
        end
end)
