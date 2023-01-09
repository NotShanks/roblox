local Teleport = loadstring(game:HttpGet("https://raw.githubusercontent.com/NotShanks/backups/main/TeleportLib/tele.lua"))()
local force    = Vector3.new(2954.59961, 2282.08838, -7214.16504)
local human    = Vector3.new(29231.4648, 14890.6328, -206.429443)
local mink     = Vector3.new(29015.9219, 14890.6328, -378.934692)
local fish     = Vector3.new(28227.6621, 14890.6328, -213.010071)
local d        = game:GetService("Players").LocalPlayer.Data.Race

--Teleport:Smart(1, force)

Teleport.Settings.CustomStudSpeed = 200 -- The limit of studs you will travel per second	
Teleport.Settings.MinimumInstantTeleport = 0 -- The minimum activation distance of instant teleport inside of the smart teleport function
Teleport.Settings.MaximumInstantTeleport = 500 -- The maximum activation distance of instant teleport inside of the smart teleport function

--[[wait(1)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaceV4Progress", "Check")
wait(1)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaceV4Progress", "Teleport")
wait(1) --]]

if (d.Value == "Human") then
    Teleport:Smart(1, human)
    wait(.5)
    game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("ActivateAbility")
    else if (d.Value == "Mink") then 
        Teleport:Smart(1, mink)
        wait(.5)
        game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("ActivateAbility")
        else if (d.Value == "Fishman") then
            Teleport:Smart(1, fish)
            wait(5)
            game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("ActivateAbility")
        end
    end
end
