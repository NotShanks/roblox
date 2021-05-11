--made by max?
mt = getrawmetatable(game)
setreadonly(mt,false)
old = mt.__newindex
mt.__newindex = newcclosure(function(a,b,c)
    if b:lower() == "walkspeed" and tonumber() < 16 then
        return
    end
    return old(a,b,c)
end)
