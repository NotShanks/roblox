local player = game.Players.LocalPlayer
local mouse = player:GetMouse()

-- Settings

bind = "j" -- has to be lowercase

mouse.KeyDown:connect(function(key)
if key == bind then
pcall(function()
local ar = {"Lahmu", "DesertSnake", "Enkidu", "MysticIllusionist", "Gilgamesh"}
    
Speed = 4 -- if it kicks u increase the number
TweenService = game:service'TweenService'
TweenInfo = TweenInfo.new(Speed)
TweenGoal = {}
--------------
getfenv().plr = game.Players.LocalPlayer
rs = game:service'RunService'.RenderStepped
t = true
while rs:wait() do
       getfenv().plr.Character.Humanoid:ChangeState(11)
   for i,v in pairs(workspace.Mobs:GetChildren()) do
       for a,b in pairs(ar) do
       if string.match(v.Name, b) then
       if v:FindFirstChild("HumanoidRootPart") then
       TweenGoal.CFrame = v.HumanoidRootPart.CFrame*CFrame.new(0,25,0)
       Tween = TweenService:Create(getfenv().plr.Character.HumanoidRootPart,TweenInfo,TweenGoal)
       repeat wait(.1)
       Tween:Play() 
       wait(.2)
                     local args = {
    [1] = game:GetService("Players").LocalPlayer.Character,
    [2] = v.HumanoidRootPart.Position
}
game:GetService("Players").LocalPlayer.Character.LightKick.ServerScript.Throw:FireServer(unpack(args))

       until v.Humanoid.Health == 0 
       end 
       end
end
end
end
end)
