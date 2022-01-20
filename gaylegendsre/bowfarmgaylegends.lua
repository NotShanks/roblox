local library = loadstring(game:HttpGet("https://pastebin.com/raw/AtQAJECZ", true))()
local w = library:CreateWindow('gay legends')
w:Section('Top')

--deelte teh walls behind rouge first
local b1 = w:Button("Tp Rouge (Delete WallS) ", function()
    
_G.toggle = true
_G.on = true
while _G.on and wait(1) do
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4512.36572, -320.938171, -578.688232)
end
end)

local b2 = w:Button("TP (Delete Walls) Off", function()
_G.on = false
while _G.on and wait(1) do
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4512.36572, -320.938171, -578.688232)
end
end)

w:Section("Middle")

local a1 = w:Button("Auto Bow Rouge", function()
    _G.aa = true
while _G.aa and wait() do
    pcall(function()
local args = {
    [1] = game:GetService("Workspace").RougePaladin.Head.Position
}

game:GetService("Players").LocalPlayer.Character.Bow.SwordScript.Activate:FireServer(unpack(args))
end)
end
end)

local a1 = w:Button("Auto Bow Rouge Off", function()
    _G.aa = false
while _G.aa and wait() do
    pcall(function()
local args = {
    [1] = game:GetService("Workspace").RougePaladin.Head.Position
}

game:GetService("Players").LocalPlayer.Character.Bow.SwordScript.Activate:FireServer(unpack(args))
end)
end
end)

w:Section("Bottom")

local c3 = w:Button("Anchoring", function()
    _G.ccc = true
while _G.ccc and wait(2) do pcall(function()
game.Workspace.RougePaladin.HumanoidRootPart.Anchored = true
wait(2)
game.Workspace.RougePaladin.HumanoidRootPart.Anchored = false
end)
end
end)

local c4 = w:Button("Anchoring Off", function()
    _G.ccc = false
while _G.ccc and wait(2) do pcall(function()
game.Workspace.RougePaladin.HumanoidRootPart.Anchored = true
wait(2)
game.Workspace.RougePaladin.HumanoidRootPart.Anchored = false
end)
end
end)
