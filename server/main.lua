local QBCore = exports['qb-core']:GetCoreObject()

--Recipe Item Callbacks
RegisterNetEvent('qb-bbq:server:CookBurger', function()
    local Player = QBCore.Functions.GetPlayer(source)
    Player.Functions.AddItem("b-burger", Config.BurgerAmount)
    Player.Functions.RemoveItem("b-uc-burger", 1)
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['b-burger'], "add")
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['b-uc-burger'], "removed")
end)

RegisterNetEvent('qb-bbq:server:CookHotDog', function()
    local Player = QBCore.Functions.GetPlayer(source)
    Player.Functions.AddItem("b-hotdog", Config.HotDogAmount)
    Player.Functions.RemoveItem("b-uc-hotdog", 1)
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['b-hotdog'], "add")
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['b-uc-hotdog'], "removed")
end)

RegisterNetEvent('qb-bbq:server:CookChicken', function()
    local Player = QBCore.Functions.GetPlayer(source)
    Player.Functions.AddItem("b-chicken", Config.ChickenAmount)
    Player.Functions.RemoveItem("b-uc-chicken", 1)
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['b-chicken'], "add")
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['b-uc-chicken'], "removed")
end)

RegisterNetEvent('qb-bbq:server:CookRibs', function()
    local Player = QBCore.Functions.GetPlayer(source)
    Player.Functions.AddItem("b-ribs", Config.RibsAmount)
    Player.Functions.RemoveItem("b-uc-ribs", 1)
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['b-ribs'], "add")
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['b-uc-ribs'], "removed")
end)

RegisterNetEvent('qb-bbq:server:CookBrisket', function()
    local Player = QBCore.Functions.GetPlayer(source)
    Player.Functions.AddItem("b-brisket", Config.BrisketAmount)
    Player.Functions.RemoveItem("b-uc-brisket", 1)
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['b-brisket'], "add")
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['b-uc-brisket'], "removed")
end)

RegisterNetEvent('qb-bbq:server:CookJacket', function()
    local Player = QBCore.Functions.GetPlayer(source)
    Player.Functions.AddItem("b-jacket", Config.JacketAmount)
    Player.Functions.RemoveItem("b-uc-jacket", 1)
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['b-jacket'], "add")
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['b-uc-jacket'], "removed")
end)

QBCore.Functions.CreateUseableItem("bbq1", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("qb-bbq:PlaceBBQ1", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("bbq2", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("qb-bbq:PlaceBBQ2", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("bbq3", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("qb-bbq:PlaceBBQ3", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("bbq4", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("qb-bbq:PlaceBBQ4", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("bbq5", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("qb-bbq:PlaceBBQ5", src, item.name)
    end
end)

RegisterNetEvent('qb-bbq:server:RemoveBBQ1', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('bbq1', 1)
end)

RegisterNetEvent('qb-bbq:server:PickupBBQ1', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.AddItem('bbq1', 1)
end)

RegisterNetEvent('qb-bbq:server:RemoveBBQ2', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('bbq2', 1)
end)

RegisterNetEvent('qb-bbq:server:PickupBBQ2', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.AddItem('bbq2', 1)
end)

RegisterNetEvent('qb-bbq:server:RemoveBBQ3', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('bbq3', 1)
end)

RegisterNetEvent('qb-bbq:server:PickupBBQ3', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.AddItem('bbq3', 1)
end)

RegisterNetEvent('qb-bbq:server:RemoveBBQ4', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('bbq4', 1)
end)

RegisterNetEvent('qb-bbq:server:PickupBBQ4', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.AddItem('bbq4', 1)
end)

RegisterNetEvent('qb-bbq:server:RemoveBBQ5', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('bbq5', 1)
end)

RegisterNetEvent('qb-bbq:server:PickupBBQ5', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.AddItem('bbq5', 1)
end)