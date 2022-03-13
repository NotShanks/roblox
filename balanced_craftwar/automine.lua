_G.bb = true
while _G.bb and wait() do 
 pcall(function()
for i,v in pairs(game:GetService("Workspace").Map.Ores:GetDescendants()) do
    if v:IsA("Folder") and v.Name == "Properties" then
        local args = {
    [1] = "hit",
    [2] = {
        [1] = v.Hitpoint,
        [2] = v.Toughness,
        [3] = v.Owner
    }
} 
game:GetService("Players").LocalPlayer.Character:FindFirstChild("Darksteel Pickaxe").RemoteFunction:InvokeServer(unpack(args))

    end
end
end)
end
