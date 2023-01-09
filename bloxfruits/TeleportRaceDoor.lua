local a = game:GetService("Workspace").Map["Temple of Time"].FishmanCorridor.Door.Entrance

local b = game:GetService("Workspace").Map["Temple of Time"].HumanCorridor.Door.Entrance

local c = game:GetService("Workspace").Map["Temple of Time"].MinkCorridor.Door.Entrance

local d = game:GetService("Players").LocalPlayer.Data.Race

local e = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart

if (d.Value == "Mink") then
    e.CFrame = c.CFrame
    else if (d.Value == "Human") then
        e.CFrame = b.CFrame
        else if (d.Value == "Fishman") then
            e.CFrame = a.CFrame
        end
    end
end

wait(4)
game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("ActivateAbility")
