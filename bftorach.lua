local library = loadstring(game:HttpGet("https://pastebin.com/raw/AtQAJECZ", true))()
local w = library:CreateWindow('Torch Teleports')
w:Section('Top')

local b1 = w:Button("Torch 1", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Turtle.QuestTorches.Torch1.CFrame
end)

local b14 = w:Button("Torch 2", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Turtle.QuestTorches.Torch2.CFrame
end)

local b13 = w:Button("Torch 3", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Turtle.QuestTorches.Torch3.CFrame
end)

local b12 = w:Button("Torch 4", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Turtle.QuestTorches.Torch4.CFrame
end)

local b11 = w:Button("Torch 5", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Turtle.QuestTorches.Torch5.CFrame
end)

local baf w:Button("Destory GUI", function()
    local a = game:GetService("CoreGui").ScreenGui.Container["Torch Teleports"]
    for i,v in pairs(game.CoreGui:GetChildren()) do
    if (a) and v.Name == "ScreenGui" then
    v:Destroy()
    end
    end
end)
