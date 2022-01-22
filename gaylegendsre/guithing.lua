local library = loadstring(game:HttpGet("https://pastebin.com/raw/AtQAJECZ", true))()
local w = library:CreateWindow('kill legends')
w:Section('Top')

local b1 = w:Button("WinterColossus Head", function()
local args = {
    [1] = game:GetService("Players").LocalPlayer.Character,
    [2] = game:GetService("Workspace").WinterColossus.HP3.HumanoidRootPart.Position
}

game:GetService("Players").LocalPlayer.Character.LightKick.ServerScript.Throw:FireServer(unpack(args))
end)

local gs = w:Button("WinterColossus Middle", function()
local args = {
    [1] = game:GetService("Players").LocalPlayer.Character,
    [2] = game:GetService("Workspace").WinterColossus.HP2.HumanoidRootPart.Position
}

game:GetService("Players").LocalPlayer.Character.LightKick.ServerScript.Throw:FireServer(unpack(args))
end)

local af = w:Button("WinterColossus Anus", function()
local args = {
    [1] = game:GetService("Players").LocalPlayer.Character,
    [2] = game:GetService("Workspace").WinterColossus.HP1.HumanoidRootPart.Position
}

game:GetService("Players").LocalPlayer.Character.LightKick.ServerScript.Throw:FireServer(unpack(args))
end)

w:Section("Middle")
local ge = w:Button("Flame Dragon", function()
local args = {
    [1] = game:GetService("Players").LocalPlayer.Character,
    [2] = game:GetService("Workspace").Dragon.HumanoidRootPart.Position
}

game:GetService("Players").LocalPlayer.Character.LightKick.ServerScript.Throw:FireServer(unpack(args))
end)

local b7 = w:Button("Frost Dragon", function()
local args = {
    [1] = game:GetService("Players").LocalPlayer.Character,
    [2] = game:GetService("Workspace").Nodryre.HumanoidRootPart.Position
}

game:GetService("Players").LocalPlayer.Character.LightKick.ServerScript.Throw:FireServer(unpack(args))
end)

w:Section("Hololive")
local b4 = w:Button("Broly (Form Only)", function()
local args = {
    [1] = game:GetService("Players").LocalPlayer.Character,
    [2] = game:GetService("Workspace").LegandarySuper.HumanoidRootPart.Position
}

game:GetService("Players").LocalPlayer.Character.LightKick.ServerScript.Throw:FireServer(unpack(args))
end)

local bfdb = w:Button("Broly ", function()
local args = {
    [1] = game:GetService("Players").LocalPlayer.Character,
    [2] = game:GetService("Workspace").Legendary.HumanoidRootPart.Position
}

game:GetService("Players").LocalPlayer.Character.LightKick.ServerScript.Throw:FireServer(unpack(args))
end)



w:Section("Misc")

local oianb = w:Button("Render Places", function()
    -- Broly
local plr = game:service"Players".LocalPlayer;
local tween_s = game:service"TweenService";
local info = TweenInfo.new(2,Enum.EasingStyle.Quad);
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

local oaf = w:Button("Check Bosses", function()
    local gay = {"Dragon", "WinterColossus", "Nodrye", "Legendary", "Legandary"}
for i,v in pairs(game.Workspace:GetDescendants()) do
     for a,b in pairs(gay) do
         if string.find(v.Name, b) and v:FindFirstChild("HumanoidRootPart") then
        game:GetService("StarterGui"):SetCore(
	"SendNotification",
		{
			Title = v.Name .. " is alive.",
			Duration = 5,
			Text = ""
		}
	)
    end
end
end
end)

local c = library:CreateWindow('guis')
c:Section("GUIS")

local gna = c:Button("Septix GUI", function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/XTheMasterX/Scripts/Main/LegendsReWritten'),true))()

end)

local gah = c:Button("V.G Hub", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/1201for/V.G-Hub/main/V.Ghub'))()

end)

local boiuge = c:Button("ServerHop", function()
    local x = {}
	for _, v in ipairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
		if type(v) == "table" and v.maxPlayers > v.playing and v.id ~= game.JobId then
			x[#x + 1] = v.id
		end
	end
	if #x > 0 then
		game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, x[math.random(1, #x)])
	else
		return notify("Serverhop","Couldn't find a server.")
	end
end)
