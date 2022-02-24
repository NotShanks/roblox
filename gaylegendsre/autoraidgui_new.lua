local bv = Instance.new("BodyVelocity")
bv.Velocity = Vector3.new(0, 0, 0)
bv.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
bv.P = 9000
bv.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart

--delete trash


local library = loadstring(game:HttpGet("https://pastebin.com/raw/AtQAJECZ", true))()
local w = library:CreateWindow('auto raids')
w:Section('Make Sure To Turn All On')



local a1 = w:Button("Auto Raid (Teleport Only)", function()

local ar = {"Lahmu", "DesertSnake", "Enkidu", "MysticIllusionist", "Gilgamesh"}   
    
Speed = 5
TweenService = game:service'TweenService'
TweenInfo = TweenInfo.new(Speed, Enum.EasingStyle.Linear)
TweenGoal = {}
--------------
getfenv().plr = game.Players.LocalPlayer
pcall(function()
while wait() do
   for i,v in pairs(workspace.Mobs:GetChildren()) do
       for a,b in pairs(ar) do
       if string.match(v.Name, b) then
       if v ~= nil and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health ~= 0 then
       TweenGoal.CFrame = v.HumanoidRootPart.CFrame*CFrame.new(0,15,0)
       Tween = TweenService:Create(getfenv().plr.Character.HumanoidRootPart,TweenInfo,TweenGoal)
       repeat wait()
           game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
       Tween:Play() 
       wait(3)
       until v.Humanoid.Health == 0 
end
end
end
end
end
end)
end)


local a2 = w:Button("No-Clip", function()
local noclip = true
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
plr = game.Players.LocalPlayer

while true do wait()
    player = game.Players.LocalPlayer
    character = player.Character

    if noclip then
        for _, v in pairs(character:GetDescendants()) do
            pcall(function()
                if v:IsA("BasePart") then
                    v.CanCollide = false
                end
            end)
        end
    end

end
end)

local a3 = w:Button("Fly", function()
local mouse = game.Players.LocalPlayer:GetMouse()
repeat wait() until mouse
local plr = game.Players.LocalPlayer
local UpperTorso = plr.Character.UpperTorso
local flying = true
local deb = true
local ctrl = {f = 0, b = 0, l = 0, r = 0}
local lastctrl = {f = 0, b = 0, l = 0, r = 0}
local maxspeed = 50
local speed = 0

function Fly()
local bg = Instance.new("BodyGyro", UpperTorso)
bg.P = 9e4
bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
bg.cframe = UpperTorso.CFrame
local bv = Instance.new("BodyVelocity", UpperTorso)
bv.velocity = Vector3.new(0,0.1,0)
bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
repeat wait()
plr.Character.Humanoid.PlatformStand = true
if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
speed = speed+.5+(speed/maxspeed)
if speed > maxspeed then
speed = maxspeed
end
elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
speed = speed-1
if speed < 0 then
speed = 0
end
end
if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
else
bv.velocity = Vector3.new(0,0.1,0)
end
bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
until not flying
ctrl = {f = 0, b = 0, l = 0, r = 0}
lastctrl = {f = 0, b = 0, l = 0, r = 0}
speed = 0
bg:Destroy()
bv:Destroy()
plr.Character.Humanoid.PlatformStand = true
end
Fly()
end)


w:Section("")
local b = w:Button("Auto-Eat", function()
    while wait() do pcall(function()
if game.Players.LocalPlayer.Character.Health.Value <= 800 then
    for i = 1, 10 do
local args = {
    [1] = "CookedSalmon"
}
wait(.5)
game:GetService("Players").LocalPlayer.PlayerGui.Parkour.Script.Eat:FireServer(unpack(args))
end
end
end)
end
end)

local ngiw = w:Button("LightKick", function()
    pcall(function()
_G.on = true
while _G.on and wait() do
    local ar = {"Lahmu", "DesertSnake", "Enkidu", "MysticIllusionist", "Gilgamesh"}


    for i,v in pairs(workspace.Mobs:GetDescendants()) do
        for a,b in pairs(ar) do
        if string.match(v.Name, b) and v:FindFirstChild("HumanoidRootPart") then
            wait(.4)
            local args = {
    [1] = game:GetService("Players").LocalPlayer.Character,
    [2] = v.HumanoidRootPart.Position
}
game:GetService("Players").LocalPlayer.Character.LightKick.ServerScript.Throw:FireServer(unpack(args))
end
end
end
end
end)
    
end)

local jejg = w:Button("LightBeam (Only If Stuck", function()
_G.obn = true
while _G.obn and wait() do
    local ar = {"Lahmu", "DesertSnake", "Enkidu", "MysticIllusionist", "Gilgamesh"}


    for i,v in pairs(workspace.Mobs:GetDescendants()) do
        for a,b in pairs(ar) do
        if string.match(v.Name, b) and v:FindFirstChild("HumanoidRootPart") then
            wait(.2)
            local args = {
    [1] = game:GetService("Players").LocalPlayer.Character,
    [2] = v.HumanoidRootPart.Position
}
game:GetService("Players").LocalPlayer.Character.LightBeam.ServerScript.Charge:FireServer(unpack(args))
end
end
end
end

end)
