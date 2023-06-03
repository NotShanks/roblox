--in First Sea.
repeat wait() until game:IsLoaded()

wait(5)
local vim = game:GetService("VirtualInputManager")

local function m1click(x ,y) 
    vim:SendMouseButtonEvent(x,y,0,true,game,0)
    wait()
    vim:SendMouseButtonEvent(x,y,0,false,game,0)
end

m1click(795, 439) --pirate 
wait(3)
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(938, 16, 1519)
wait()
local args = {
    [1] = "Ken",
    [2] = true
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommE"):FireServer(unpack(args))
wait(10)
game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, game.JobId)
