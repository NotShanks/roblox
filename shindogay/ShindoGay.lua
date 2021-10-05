--used with kiriot hub kill aura = ez

local library = loadstring(game:HttpGet("https://pastebin.com/raw/AtQAJECZ", true))()
local w = library:CreateWindow('Shindo Gay')
w:Section('Top')

local b = w:Button("Auto Punch (2 Sec Delay)", function()
    _G.onn = true
while _G.onn and wait(2) do
local arg = {
    [1] = "mouse1",
    [2] = true
}
game:GetService("Players").LocalPlayer.Character.combat.update:FireServer(unpack(arg))
end
end)

local b1 = w:Button("Auto Punch Off", function()
    _G.onn = false
while _G.onn and wait(2) do
local arg = {
    [1] = "mouse1",
    [2] = true
}
game:GetService("Players").LocalPlayer.Character.combat.update:FireServer(unpack(arg))
end
end)

local b2 = w:Button("Auto Stats (If < 5000", function()
    _G.test = true
while _G.test and wait() do
    pcall(function()
local gay = game:GetService("Players").LocalPlayer.statz.mastery.health
if gay.Value < 5000 then
local args = {
    [1] = "addstat",
    [2] = "taijutsu",
    [3] = 1000
}
game:GetService("Players").LocalPlayer.startevent:FireServer(unpack(args))
wait(0.01)
local args2 = {
    [1] = "addstat",
    [2] = "health",
    [3] = 1000
}
game:GetService("Players").LocalPlayer.startevent:FireServer(unpack(args2))
else return
end
end)
end

end)


local b4 = w:Button("Auto Stats Off (?)", function()
    _G.test = false
while _G.test and wait() do
    pcall(function()
local gay = game:GetService("Players").LocalPlayer.statz.mastery.health
if gay.Value < 5000 then
local args = {
    [1] = "addstat",
    [2] = "taijutsu",
    [3] = 1000
}
game:GetService("Players").LocalPlayer.startevent:FireServer(unpack(args))
wait(0.01)
local args2 = {
    [1] = "addstat",
    [2] = "health",
    [3] = 1000
}
game:GetService("Players").LocalPlayer.startevent:FireServer(unpack(args2))
else return
end
end)
end
end)

local b5 = w:Button("Instant Kill Script", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/NotShanks/roblox/main/shindogay/jrlbackup.lua"))()
end)
