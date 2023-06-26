local library = loadstring(game:HttpGet("https://pastebin.com/raw/AtQAJECZ", true))()
local Teleport = loadstring(game:HttpGet("https://raw.githubusercontent.com/NotShanks/backups/main/TeleportLib/tele.lua"))()
Teleport.Settings.CustomStudSpeed = 20 -- The limit of studs you will travel per second	
Teleport.Settings.MinimumInstantTeleport = 1 -- The minimum activation distance of instant teleport inside of the smart teleport function
Teleport.Settings.MaximumInstantTeleport = 1 -- The maximum activation distance of instant teleport inside of the smart teleport function

local w = library:CreateWindow('GAY')
w:Section('Top')

local b1 = w:Button("MoveToGrass", function()
    _G.on = true
while _G.on and wait() do pcall(function()
for i,v in pairs(workspace.GRASS:GetDescendants()) do 
if v.Name == "GrassPart" and (v.CFrame.p - game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.p).magnitude < math.random(12, 18) then
if v.Slapped.Value ~= true then
game.Players.LocalPlayer.Character.Humanoid:MoveTo(v.CFrame.p)
end
end
end
end)
end
end)

local f = w:Button("MoveToGrass Off", function()
    _G.on = false
while _G.on and wait() do
end
end)

w:Section('Middle')

local g4 = w:Button("CutGrass", function()
    _G.c = true
while wait(.2) and _G.c do pcall(function()
    for i,v in pairs(workspace.GRASS:GetChildren()) do
        if (v.CFrame.p - game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.p).magnitude < 15 then 
            workspace["Heck Yeah"].BringTheMowingIGuess:FireServer(v, game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"))
        end
      end
    end)
end
end)

local g = w:Button("CutGrass Off", function()
    _G.c = false
while wait(.2) and _G.c do pcall(function()
    for i,v in pairs(workspace.GRASS:GetChildren()) do
        if (v.CFrame.p - game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.p).magnitude < 15 then 
            workspace["Heck Yeah"].BringTheMowingIGuess:FireServer(v, game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"))
        end
      end
    end)
end
end)

w:Section("Death")

local hj = w:Button("AutoDeath", function()
_G.hge = true
while _G.hge and wait() do pcall(function()
if workspace.Singularity.BossActive.Value == true and workspace.Singularity.Bossfight.Value == true then
game.Players.LocalPlayer.Character.Humanoid.Health = 0
end
end)
end
end)

local eee = w:Button("AutoDeath Off", function()
_G.hge = false
while _G.hge and wait() do pcall(function()
if workspace.Singularity.BossActive == true and workspace.Singularity.Bossfight == true then
game.Players.LocalPlayer.Character.Humanoid.Health = 0
end
end)
end
end)



w:Section("Semi")

local h = w:Button("Auto Click", function()
	local vim = game:GetService("VirtualInputManager")

local function m1click(x ,y) 
    vim:SendMouseButtonEvent(x,y,0,true,game,0)
    wait()
    vim:SendMouseButtonEvent(x,y,0,false,game,0)
end
_G.gg = true
while _G.gg and wait(1) do
m1click(795, 439)
end
end)

local h = w:Button("Auto Click Off", function()
_G.gg = false
while _G.gg and wait(1) do
print("G") 
end
end)

w:Section("Bosses")
local d = w:Button("CowBoy", function()
_G.oh = true
while _G.oh and wait() do pcall(function()
Teleport:Smart(1, workspace.CowboySkeleton.BossModel.UpperTorso.CFrame.p)
end)
end
end)

local fa = w:Button("CowBoy Off", function()
_G.oh = false
while _G.oh and wait() do pcall(function()
Teleport:Smart(1, workspace.CowboySkeleton.BossModel.UpperTorso.CFrame.p)
end)
end
end)

w:Section("MiniGames")

local hho = w:Button("Soccer", function()
_G.hho = true
while _G.hho and wait() do pcall(function()

end)
end
end)

w:Section("ANTIAFK-AUTO")

local VirtualUser=game:service'VirtualUser'
game:service'Players'.LocalPlayer.Idled:connect(function()
VirtualUser:CaptureController()
VirtualUser:ClickButton2(Vector2.new())
end)
