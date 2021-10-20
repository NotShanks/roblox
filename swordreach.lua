--yes this was taken from v3rm without credit
local plr = game:GetService'Players'.LocalPlayer;
for _,t in pairs(plr.Character:GetChildren()) do
    if t:IsA("Tool") and t.RequiresHandle ~= false then
        for _,h in pairs(t:GetChildren()) do
            if h.Name == "Handle" then
                h.Massless = true;   --change to false if reach is very high
                h.Size = Vecto3.new(5, 5, 5)
            end
        end
    end
end
