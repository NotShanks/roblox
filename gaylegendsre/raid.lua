local library = loadstring(game:HttpGet("https://pastebin.com/raw/AtQAJECZ", true))()
local w = library:CreateWindow('raids')
w:Section('Top')

local b1 = w:Button("Lahmu", function()
local args = {
    [1] = game:GetService("Players").LocalPlayer.Character,
    [2] = game:GetService("Workspace").Mobs.Lahmu.HumanoidRootPart.Position
}

game:GetService("Players").LocalPlayer.Character.LightKick.ServerScript.Throw:FireServer(unpack(args))
end)

local a3 = w:Button("DesertSnake", function()
local args = {
    [1] = game:GetService("Players").LocalPlayer.Character,
    [2] = game:GetService("Workspace").Mobs.DesertSnake.HumanoidRootPart.Position
}

game:GetService("Players").LocalPlayer.Character.LightKick.ServerScript.Throw:FireServer(unpack(args))
end)

local g2 = w:Button("Enkidu", function()
local args = {
    [1] = game:GetService("Players").LocalPlayer.Character,
    [2] = game:GetService("Workspace").Mobs.Enkidu.HumanoidRootPart.Position
}

game:GetService("Players").LocalPlayer.Character.LightKick.ServerScript.Throw:FireServer(unpack(args))
end)

w:Section("Bottom")

local h3 = w:Button("MysticIllusionist", function()
local args = {
    [1] = game:GetService("Players").LocalPlayer.Character,
    [2] = game:GetService("Workspace").Mobs.MysticIllusionist.HumanoidRootPart.Position
}

game:GetService("Players").LocalPlayer.Character.LightKick.ServerScript.Throw:FireServer(unpack(args))
end)



local fq = w:Button("Gilgamesh", function()
local args = {
    [1] = game:GetService("Players").LocalPlayer.Character,
    [2] = game:GetService("Workspace").Mobs.Gilgamesh.HumanoidRootPart.Position
}

game:GetService("Players").LocalPlayer.Character.LightKick.ServerScript.Throw:FireServer(unpack(args))
end)

w:Section("Infinte Yield")
local g2g2 = w:Button("IF.Y GUI", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)
