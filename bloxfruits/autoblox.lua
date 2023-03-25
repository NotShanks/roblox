repeat wait() until game:IsLoaded()
if game.PlaceId == 7449423635 then
--(left/right,height, forward/backward)
wait(5)
--[[
local get = require(game:GetService("ReplicatedStoraage").Util.CameraShaker)
local returnnil = function() return nil end
get.StartShake = returnnil
get.ShakeOnce = returnnil
get.ShakeSustain = returnnil
get.CameraShakeInstance = returnnil
get.Shake = returnnil
get.Start = returnnil
wait(2)
]]--
print("Loaded")
game:GetService('RunService').RenderStepped:Connect(function() 
    for _,v in pairs (game.Players:GetChildren()) do
        if v ~= game.Players.LocalPlayer then 
            if v.Character and v.Character.HumanoidRootPart then
                if not v.Character.HumanoidRootPart:FindFirstChild'AlreadyExtended' then 
                    local cHECK = Instance.new('Folder')
                    cHECK.Name = 'AlreadyExtended'
                    cHECK.Parent = v.Character.HumanoidRootPart
                    v.Character.HumanoidRootPart.Size = v.Character.HumanoidRootPart.Size + Vector3.new(.7,0,.75)
                     v.Character.HumanoidRootPart.Transparency = 1
                    v.Character.HumanoidRootPart.CanCollide = false
		    task.wait(0.05)
                end
            end
        end
    end
end)

end
