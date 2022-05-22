local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/NotShanks/backups/main/ayalib.lua", true))()
local w = library:CreateWindow('No Bitches Simulator')
w:Section('Made by #7777')

local a = w:Button("Auto Collect Magnet", function()
    shared.nocooldown = shared.nocooldown or false
if shared.nocooldown then
    game:GetService("StarterGui"):SetCore(
	"SendNotification",
		{
			Title = "Already Executed",
			Duration = 5,
			Text = 'Magnets'
		}
	)
    return
end
shared.nocooldown = true
 local ImGay = game:GetService("Players").LocalPlayer.PlayerGui.GuiItemsGui
    
_G.aa = true
while _G.aa and wait(1) do
      pcall(function()
                local Events = getconnections(ImGay:FindFirstChild("Magnet").MouseButton1Click)
                for i,v in pairs(Events) do
                    wait(1)
                    v.Function()

                end
            end)
end
end)

local ffwa = w:Button("Auto Collect Tires", function()
    shared.fuck = shared.fuck or false
if shared.fuck then
    game:GetService("StarterGui"):SetCore(
	"SendNotification",
		{
			Title = "Already Executed",
			Duration = 5,
			Text = 'Tires'
		}
	)
    return
end
shared.fuck = true
local AlsoGay = game:GetService("Players").LocalPlayer.PlayerGui.GuiItemsGui
    
_G.cc = true
while _G.cc and wait(1) do
      pcall(function()
                local AlsoEvents = getconnections(AlsoGay:FindFirstChild("Tire").MouseButton1Click)
                for k,b in pairs(AlsoEvents) do
                    wait(1.5)
                    b.Function()

                end
            end)
end
end)

--misc
w:Section("Misc")
local f = w:Button("Auto Clicker On", function()
     local vu = game:GetService("VirtualUser")
_G.yeet = true
while _G.yeet and wait() do
vu:Button1Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
wait(0.1)
vu:Button1Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end
end)

local f2 = w:Button("Auto Clicker Off", function()
_G.yeet = false
while _G.yeet do
wait()
end
end)


local c3 = w:Button("Anti-AFK", function()

local function notify()
    game:GetService("StarterGui"):SetCore(
	"SendNotification",
		{
			Title = "anti-afk enabled",
			Duration = 5,
			Text = ''
		}
	)
end
local GC = getconnections or get_signal_cons
	if GC then
		for i,v in pairs(GC(game.Players.LocalPlayer.Idled)) do
			if v["Disable"] then
				v["Disable"](v)
			elseif v["Disconnect"] then
				v["Disconnect"](v)
			end
		end
		notify()
end
end)
