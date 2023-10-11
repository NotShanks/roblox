--(left/right,height, forward/backward)
--setfpscap(999)
_G.on = true
while _G.on and task.wait() do pcall(function()
    for _,v in pairs (game.Players:GetChildren()) do
        if v ~= game.Players.LocalPlayer then 
            if v.Character and v.Character.HumanoidRootPart then
                    v.Character.LeftHilt.Size = Vector3.new(3,2,3)
                     v.Character.RightHilt.Size = Vector3.new(3,2,3)
                    v.Character.FakeHead.Size = Vector3.new(4,4,2)
                    v.Character.FakeHead.Transparency = 1
                end
            end
        end
    if (workspace.CurrentCamera.FieldOfView ~= 103) then
    workspace.CurrentCamera.FieldOfView = 103
    end
end)
end
