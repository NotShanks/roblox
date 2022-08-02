local args = {
    [1] = "BuyItem",
    [2] = game:GetService("Workspace").Interactable.Cerulea.Fisherman,
    [3] = "Bait",
    [4] = 100,
    [5] = "Lamina"
}

game:GetService("ReplicatedStorage").Remotes.Events.Shop:FireServer(unpack(args))
