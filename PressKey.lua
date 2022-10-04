local vim = game:GetService('VirtualInputManager')

local function pressKey(key)
    vim:SendKeyEvent(true, key, false, game)
end

local function releaseKey(key)
    vim:SendKeyEvent(false, key, false, game)
end

_G.on = true
while _G.on and wait() do 
pressKey(Enum.KeyCode.W) -- presses the key W
wait(.1)
releaseKey(Enum.KeyCode.W) -- releases W
end
