_G.ButtonColor = Color3.fromRGB(0, 250, 133)

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/NotShanks/roblox/main/lib.lua')))()

local w = library:CreateWindow("Project XL")
local b = w:CreateFolder("NPCs")

for i,v in pairs(game:GetService("Workspace").NPCS:GetChildren()) do
    b:Button(v.Name,function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
    end)
end
