local vu = game:GetService("VirtualUser")
local vim = game:GetService('VirtualInputManager')

local function pressKey(key)
    vim:SendKeyEvent(true, key, false, game)
end

local function releaseKey(key)
    vim:SendKeyEvent(false, key, false, game)
end

_G.aa = true
while _G.aa and wait(70) do 
pressKey(Enum.KeyCode.Six)
wait(0.1)
releaseKey(Enum.KeyCode.Six)
wait(1)
vu:Button1Down(Vector2.new(500,0), game.Workspace.CurrentCamera.CFrame)
wait()
vu:Button1Up(Vector2.new(500,0), game.Workspace.CurrentCamera.CFrame)
end
