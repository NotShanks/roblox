local library = loadstring(game:HttpGet("https://pastebin.com/raw/AtQAJECZ", true))()
local w = library:CreateWindow('gay legends')
w:Section('Top')

local b1 = w:Button("Freeze WinterColossus", function()
game:GetService("Workspace").WinterColossus.HumanoidRootPart.Anchored = true
game:GetService("Workspace").WinterColossus.HumanoidRootPart2.Anchored = true
end)

w:Section("Middle")
local b1 = w:Button("Freeze Flame Dragon", function()
game:GetService("Workspace").Dragon.HumanoidRootPart.Anchored = true
end)
