--// Services \\--
local Players = game:GetService("Players")
local VirtualInputManager = game:GetService("VirtualInputManager")

--// Variables \\--
local Player = Players.LocalPlayer
local X, Y = 960, 464

_G.ff = true
while _G.ff and wait() do
    local fieldOfView = math.floor(workspace.Camera.FieldOfView)
    if fieldOfView <= 40 then
        wait(.2)
        VirtualInputManager:SendMouseButtonEvent(X, Y, 0, true, game, 1)
        VirtualInputManager:SendMouseButtonEvent(X, Y, 0, false, game, 1)
        wait(1)
    end
end
