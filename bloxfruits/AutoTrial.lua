local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/NotShanks/backups/main/ayalib.lua", true))()
local w = library:CreateWindow('No Bitches Simulator')

local Teleport = loadstring(game:HttpGet("https://raw.githubusercontent.com/NotShanks/backups/main/TeleportLib/tele.lua"))()
local force    = Vector3.new(2954.59961, 2282.08838, -7214.16504)
local human    = Vector3.new(29231.4648, 14890.6328, -206.429443)
local mink     = Vector3.new(29015.9219, 14890.6328, -378.934692)
local fish     = Vector3.new(28227.6621, 14890.6328, -213.010071)
local angel    = Vector3.new(28967.3789, 14919.2627, 234.303864)
local lever    = Vector3.new(28576.5605, 14937.8154, 73.1924286)
local d        = game:GetService("Players").LocalPlayer.Data.Race

Teleport.Settings.CustomStudSpeed = 200 -- The limit of studs you will travel per second	
Teleport.Settings.MinimumInstantTeleport = 0 -- The minimum activation distance of instant teleport inside of the smart teleport function
Teleport.Settings.MaximumInstantTeleport = 500 -- The maximum activation distance of instant teleport inside of the smart teleport function

w:Section('Made by #')

local a1 = w:Button("1st Step (Set Up)", function()
    Teleport:Smart(1, force)
    wait(1)
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaceV4Progress", "Check")
    wait(1)
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaceV4Progress", "Teleport")
    wait(1.5)
    Teleport:Smart(1, lever)
    wait(1)
    fireproximityprompt(game:GetService("Workspace").Map["Temple of Time"].Lever.Prompt.ProximityPrompt)
end)

local a3 = w:Button("Only TP Temple", function()
    Teleport:Smart(1, force)
    wait(1)
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaceV4Progress", "Check")
    wait(1)
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaceV4Progress", "Teleport")
end)


local a2 = w:Button("TP Race Door", function()
    if (d.Value == "Human") then
    Teleport:Smart(1, human)
    wait()
    else if (d.Value == "Skypiea") then 
        Teleport:Smart(1, angel)
        wait()
        else if (d.Value == "Fishman") then
            Teleport:Smart(1, fish)
            wait()
            else if (d.Value == "Mink") then 
                Teleport:Smart(1, mink)
                wait()
            end
        end
    end
end
end)

w:Section("Websocket")

local b1 = w:Button("Enable", function()
    -- https://github.com/Burkino/syn-multiinstance-exec

--// Wait Until Game is Loaded

if not game:IsLoaded() then -- If game isn't already loaded
    game.Loaded:Wait() -- Wait until game is loaded
end

--// Init Variables 

local PlaceName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name -- Name of current place
local PlayerName = game:GetService("Players").LocalPlayer.Name -- Local player username
local HttpService = game:GetService("HttpService") -- Service used for JSON encoding in the script

--// Setup Websocket

local WebSocket = syn.websocket.connect("ws://localhost:1350") -- Connect to websocket
local WebSocketScript = "" -- Create a placeholder string

WebSocket.OnMessage:Connect(function(Message) -- Create a connection to the event fired when a message is sent to the websocket
    if Message == "BEGIN SCRIPT" then
        WebSocketScript = "" -- Reset placeholder string to be empty
    elseif Message == "END SCRIPT" then
        loadstring(WebSocketScript)() -- Execute websocket script
    else
        WebSocketScript = WebSocketScript .. Message -- Concat placeholder string to add script content
    end
end)

--// Send Init Data to Server With Player Info

WebSocket:Send(HttpService:JSONEncode({
    type = "init",
    sender = PlayerName,
    game = PlaceName
}))

--// Send a Log to the Websocket When Something is Outputted to the Console

game:GetService("LogService").MessageOut:Connect(function(Message)
    WebSocket:Send(HttpService:JSONEncode({
        type = "log",
        message = Message
    }))
end)
end)
