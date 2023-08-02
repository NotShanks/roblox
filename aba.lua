repeat
    wait()
until game.Loaded
task.wait(5)
if game.PlaceId == 5411459567 then
    repeat
        task.wait(1)
    until game.Workspace.Message
end
_G.MinTimer = 60

local function notify(text)
    game.StarterGui:SetCore("SendNotification", {
        Title = "RZiln's AFK hop",
        Duration = 60,
        Text = text
    })
end

local function serverHop()

loadstring(game:HttpGet("https://raw.githubusercontent.com/RZiln/GayBloxScripts/master/ABA/main.lua", true))()

end

local function cool()
(
    local Servers = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/5411459567/servers/Public?sortOrder=Asc&limit=100"))
for i,v in pairs(Servers.data) do
  if v.playing ~= v.maxPlayers then
      game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, v.id)
  end
end
)

if game.GameId == 578392296 then
    if game.PlaceId ~= 5411459567 then
        notify("Joining AFK World, please")
        serverHop()
        game:GetService('TeleportService'):Teleport(5411459567)
    end

    notify("AFK Hop running")
    local function timerCheck()
        local timer = game.Workspace.Message.Text:split(" ")
        local time = tonumber(timer[1])
        return time
    end

    if timerCheck() <= _G.MinTimer then
        notify("Waiting for reward")
        repeat
            task.wait()
        until timerCheck() > _G.MinTimer
        notify("Server Hopping")
        task.wait(1)
        serverHop()
        cool()
    else
        notify("Server Hopping")
        serverHop()
        cool()
    end

end
