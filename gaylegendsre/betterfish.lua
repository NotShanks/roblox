local library = loadstring(game:HttpGet("https://pastebin.com/raw/AtQAJECZ", true))()
local w = library:CreateWindow('fish')
w:Section('Top')

local b1 = w:Button("rename all", function()
local count = 1
for k, v in pairs(game:GetService("Workspace").FishingSpawns:GetChildren()) do 
   if v.Name == "Fishing" then
       v.Name = "Fishing" .. count
       count = count + 1
        print(v.Name)
   end
end
end)

local af3 = w:Button("Render Fish Places", function()
    -- Broly
local plr = game:service"Players".LocalPlayer;
local tween_s = game:service"TweenService";
local info = TweenInfo.new(2.5,Enum.EasingStyle.Quad);
function tp(...)
   local tic_k = tick();
   local params = {...};
   local cframe = CFrame.new(params[1],params[2],params[3]);
   local tween,err = pcall(function()
       local tween = tween_s:Create(plr.Character["HumanoidRootPart"],info,{CFrame=cframe});
       tween:Play();
   end)
   if not tween then return err end
end
tp(-1034, 50, -1752);
wait(3.5)
--Mountain (Rest of bosses)
tp(-3225, 444, -1013);
end)


w:Section("Bottom")
local aaa = w:Button("Auto Fish On", function()
 _G.on = true
while _G.on and wait() do
local FishingSpawns = workspace:FindFirstChild'FishingSpawns'
local Catch = game.Players.LocalPlayer.PlayerGui.Fish.Ado.catch
for i = 1, 40 do
    local _ = FishingSpawns[('Fishing%d'):format(i)]
    Catch:FireServer(_)
    task.wait(1.8)
end
end
end)

local aaa = w:Button("Auto Fish Off", function()
    _G.on = false
while _G.on and wait() do
local FishingSpawns = workspace:FindFirstChild'FishingSpawns'
local Catch = game.Players.LocalPlayer.PlayerGui.Fish.Ado.catch
for i = 1, 40 do
    local _ = FishingSpawns[('Fishing%d'):format(i)]
    Catch:FireServer(_)
    task.wait(2e-2 * 4)
end
end
end)

local afi = w:Button("Destroy GUI", function()
    game.CoreGui.ScreenGui:Destroy()
end)
