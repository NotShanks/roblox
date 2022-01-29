local library = loadstring(game:HttpGet("https://pastebin.com/raw/AtQAJECZ", true))()
local w = library:CreateWindow('gay legends')
w:Section('Top')

local b1 = w:Button("Auto Catch Fish On", function()
_G.on = true
while _G.on and wait(2) do
local args = {
    [1] = workspace.FishingSpawns.Fishing
}

game:GetService("Players").LocalPlayer.PlayerGui.Fish.Ado.catch:FireServer(unpack(args))
end
end)

local b31 = w:Button("Auto Catch Fish Off", function()
_G.on = false
while _G.on and wait(2) do
local args = {
    [1] = workspace.FishingSpawns.Fishing
}

game:GetService("Players").LocalPlayer.PlayerGui.Fish.Ado.catch:FireServer(unpack(args))
end
end)


local bf1 = w:Button("Destroy GUI", function()
game:GetService("CoreGui").ScreenGui:Destroy()
end)
