_G.nn = true

spawn(function()
while _G.nn do 
    wait(45)
game:GetService("ReplicatedStorage").RemoteFunctions.TireBasicUpgrade:InvokeServer("MoreMagnet")
wait(2)
game:GetService("ReplicatedStorage").RemoteFunctions.TireBasicUpgrade:InvokeServer("BetterLuck")
end
end)
