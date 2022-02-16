--script was made using google
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
-- auto eat/heal
while wait() do
if game.Players.LocalPlayer.Character.Health.Value <= 1200 then
    for i = 1, 15 do
local args = {
    [1] = "CookedSalmon"
}
wait(.8)
game:GetService("Players").LocalPlayer.PlayerGui.Parkour.Script.Eat:FireServer(unpack(args))
end
end
end
end)
local noclip = true
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
plr = game.Players.LocalPlayer

while true do
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

    game:GetService("RunService").Stepped:wait()
end
wait()
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
plr.Character.Humanoid.PlatformStand = false
end

mouse.KeyUp:connect(function(key)
if key:lower() == "w" then
ctrl.f = 0
elseif key:lower() == "s" then
ctrl.b = 0
elseif key:lower() == "a" then
ctrl.l = 0
elseif key:lower() == "d" then
ctrl.r = 0
end
end)
Fly()
end
end)
game:GetService("StarterGui"):SetCore(
	"SendNotification",
		{
			Title = "\n AutoRaid (Equip LightKick \n then \n press J to start)",
			Duration = 9,
			Text = ''
		}
	)
wait(1)
game:GetService("StarterGui"):SetCore(
	"SendNotification",
		{
			Title = "\nIf Script stop working \n then unequp light kick \n then re-execute",
			Duration = 10,
			Text = ''
		}
	)
