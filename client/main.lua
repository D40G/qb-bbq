local QBCore = exports['qb-core']:GetCoreObject()
local PlayerData = {}
local IsCookingFood = false
Shops = {}
local BBQ1Placed = false
local BBQ1PickedUp = true
local BBQ2Placed = false
local BBQ2PickedUp = true
local BBQ3Placed = false
local BBQ3PickedUp = true
local BBQ4Placed = false
local BBQ4PickedUp = true
local BBQ5Placed = false
local BBQ5PickedUp = true

Citizen.CreateThread(function()
    exports['qb-target']:AddTargetModel(Config.BBQ1Model, {
        options = {
            {
                type = "client",
                event = "qb-bbq:BBQMenu",
                icon = "fas fa-burger",
                label = "Use BBQ",
            },
            {
                type = "client",
                event = "qb-bbq:PickupBBQ1",
                icon = "fas fa-hand",
                label = "Pickup BBQ",
            },
        },
        distance = 2.5
    })
end)

Citizen.CreateThread(function()
    exports['qb-target']:AddTargetModel(Config.BBQ2Model, {
        options = {
            {
                type = "client",
                event = "qb-bbq:BBQMenu",
                icon = "fas fa-burger",
                label = "Use BBQ",
            },
            {
                type = "client",
                event = "qb-bbq:PickupBBQ2",
                icon = "fas fa-hand",
                label = "Pickup BBQ",
            },
        },
        distance = 2.5
    })
end)

Citizen.CreateThread(function()
    exports['qb-target']:AddTargetModel(Config.BBQ3Model, {
        options = {
            {
                type = "client",
                event = "qb-bbq:BBQMenu",
                icon = "fas fa-burger",
                label = "Use BBQ",
            },
            {
                type = "client",
                event = "qb-bbq:PickupBBQ3",
                icon = "fas fa-hand",
                label = "Pickup BBQ",
            },
        },
        distance = 2.5
    })
end)

Citizen.CreateThread(function()
    exports['qb-target']:AddTargetModel(Config.BBQ4Model, {
        options = {
            {
                type = "client",
                event = "qb-bbq:BBQMenu",
                icon = "fas fa-burger",
                label = "Use BBQ",
            },
            {
                type = "client",
                event = "qb-bbq:PickupBBQ4",
                icon = "fas fa-hand",
                label = "Pickup BBQ",
            },
        },
        distance = 2.5
    })
end)

Citizen.CreateThread(function()
    exports['qb-target']:AddTargetModel(Config.BBQ5Model, {
        options = {
            {
                type = "client",
                event = "qb-bbq:BBQMenu",
                icon = "fas fa-burger",
                label = "Use BBQ",
            },
            {
                type = "client",
                event = "qb-bbq:PickupBBQ5",
                icon = "fas fa-hand",
                label = "Pickup BBQ",
            },
        },
        distance = 2.5
    })
end)


RegisterNetEvent("qb-bbq:shop")
AddEventHandler("qb-bbq:shop", function()
    TriggerServerEvent("inventory:server:OpenInventory", "shop", "BBQ Items", Config.BBQShop)
end)

--BBQ Menu
RegisterNetEvent('qb-bbq:BBQMenu', function(data)
    exports['qb-menu']:openMenu({
        {
            
            header = "| Cook |",
            isMenuHeader = true, 
        },
        {
            
            header = "• Burger",
            txt = "Cook a Juicy Burger",
            params = {
                event = "qb-bbq:client:CookBurger"
            }
        },
        {
            
            header = "• Chicken Burger",
            txt = "Cook a Chicken Burger",
            params = {
                event = "qb-bbq:client:CookChicken"
            }
        },
        {
            
            header = "• Hot Dog",
            txt = "An American Hero",
            params = {
                event = "qb-bbq:client:CookHotDog"
            }
        },  
        {
            
            header = "• Spare Ribs",
            txt = "Juicy Pork Ribs with BBQ Sauce",
            params = {
                event = "qb-bbq:client:CookRibs"
            }
        },
        {
            
            header = "• Brisket",
            txt = "A Tender Joint of Brisket",
            params = {
                event = "qb-bbq:client:CookBrisket"
            }
        },
        {
            
            header = "• Loaded Jacket",
            txt = "A Jacket Full of Goodness",
            params = {
                event = "qb-bbq:client:CookJacket"
            }
        },
        {
            id = 7,
            header = "Close (ESC)",
            isMenuHeader = true, 
        },
    })
end)


RegisterNetEvent('qb-bbq:StartConvo', function(data)
    exports['qb-menu']:openMenu({
        {
            
            header = "| Billy |",
            txt = "Hey Man hows it going?",
            isMenuHeader = true, 
        },
        {
            
            header = "Im feeling good, Thank you",
            txt = "",
            params = {
                event = "qb-bbq:FeelingGood"
            }
        },
        {
            
            header = "Im not having a good day today",
            txt = "",
            params = {
                event = "qb-bbq:FeelingBad"
            }
        },
    })
end)

RegisterNetEvent('qb-bbq:FeelingGood', function(data)
    exports['qb-menu']:openMenu({
        {
            
            header = "| That is Great to hear Friend, you looking to buy some fresh BBQ products? |",
            isMenuHeader = true, 
        },
        {
            
            header = "Yea i would love to browse your stuff",
            txt = "$ Buy $",
            params = {
                event = "qb-bbq:shop"
            }
        },
        {
            
            header = "No thank you, ill be going now",
            txt = "",
            params = {
            
            }
        },
    })
end)

RegisterNetEvent('qb-bbq:FeelingBad', function(data)
    exports['qb-menu']:openMenu({
        {
            
            header = "| Oh No that is a shame, can i interest you in some fresh BBQ products? |",
            isMenuHeader = true, 
        },
        {
            
            header = "Sure, i guess so...",
            txt = "$ Buy $",
            params = {
                event = "qb-bbq:shop"
            }
        },
        {
            
            header = "No thank you, ill be going now",
            txt = "",
            params = {
        
            }
        },
    })
end)


Citizen.CreateThread(function()
    exports['qb-target']:SpawnPed({
        model = Config.BuyPed,
        coords = Config.BuyLocation, 
        minusOne = true, --may have to change this if your ped is in the ground
        freeze = true, 
        invincible = true, 
        blockevents = true,
        scenario = 'WORLD_HUMAN_DRUG_DEALER',
        target = { 
            options = {
                {
                    type="client",
                    event = "qb-bbq:CheckConvo",
                    icon = "fas fa-smile",
                    label = "Greet"
                }
            },
          distance = 2.5,
        },
    })
end)

RegisterNetEvent('qb-bbq:CheckConvo', function()
    if Config.EnableConvo then
        TriggerEvent('qb-bbq:StartConvo')
    else
        TriggerEvent('qb-bbq:shop')
    end
end)

--Recipes--
RegisterNetEvent('qb-bbq:client:CookBurger', function() 
    if QBCore.Functions.HasItem('b-uc-burger') then
            IsCookingFood = true
            QBCore.Functions.Progressbar('cook', 'Cooking Burger . . .', 10000, false, true, {
                disableMovement = false,
                disableCarMovement = false,
                disableMouse = false,
                disableCombat = false,
                disableInventory = true,
            }, {
                animDict = 'amb@prop_human_bbq@male@idle_a',
                anim = 'idle_b',
                flags = 8,
            }, {
                model = 'prop_fish_slice_01',
                bone = 28422,
                coords = { x = -0.005, y = 0.00, z = 0.00 },
                rotation = { x = 350.0, y = 320.0, z = 0.0 },
            }, {}, function()
                TriggerServerEvent('qb-bbq:server:CookBurger')
                QBCore.Functions.Notify("You Cooked a Burger!", "success", "20")
                IsCookingFood = false 
            end, function() -- Cancel
                StopAnimTask(PlayerPedId(), 'amb@prop_human_bbq@male@idle_a', 'idle_b', 1.0)
                QBCore.Functions.Notify("Canceled..", "error")
                IsCookingFood = false
            end)
        else
            QBCore.Functions.Notify("You need some uncooked burgers!", "error")
        end
end)


RegisterNetEvent('qb-bbq:client:CookChicken', function() 
    if QBCore.Functions.HasItem('b-uc-chicken') then
            IsCookingFood = true
            QBCore.Functions.Progressbar("cook", "Cooking Chicken Burger", 10000, false, true, {
                disableMovement = false,
                disableCarMovement = false,
                disableMouse = false,
                disableCombat = false,
                disableInventory = true,
            }, {
                animDict = 'amb@prop_human_bbq@male@idle_a',
                anim = 'idle_b',
                flags = 8,
            }, {
                model = 'prop_fish_slice_01',
                bone = 28422,
                coords = { x = -0.005, y = 0.00, z = 0.00 },
                rotation = { x = 350.0, y = 320.0, z = 0.0 },
            }, {}, function()
                TriggerServerEvent('qb-bbq:server:CookChicken')
                QBCore.Functions.Notify("You Cooked a Chicken Burger!", "success", "20")
                IsCookingFood = false  
            end, function() -- Cancel
                StopAnimTask(PlayerPedId(), 'amb@prop_human_bbq@male@idle_a', 'idle_b', 1.0)
                QBCore.Functions.Notify("Canceled..", "error")
                IsCookingFood = false
            end)
        else
            QBCore.Functions.Notify("You need an uncooked Chicken burger!", "error")
        end 
end)

RegisterNetEvent('qb-bbq:client:CookHotDog', function() 
    if QBCore.Functions.HasItem('b-uc-hotdog') then
            IsCookingFood = true
            QBCore.Functions.Progressbar("cook", "Cooking Hot Dog", 7000, false, true, {
                disableMovement = false,
                disableCarMovement = false,
                disableMouse = false,
                disableCombat = false,
                disableInventory = true,
            }, {
                animDict = 'amb@prop_human_bbq@male@idle_a',
                anim = 'idle_b',
                flags = 8,
            }, {
                model = 'prop_fish_slice_01',
                bone = 28422,
                coords = { x = -0.005, y = 0.00, z = 0.00 },
                rotation = { x = 350.0, y = 320.0, z = 0.0 },
            }, {}, function()
                TriggerServerEvent('qb-bbq:server:CookHotDog')
                QBCore.Functions.Notify("You Cooked a HotDog!", "success", "20")
                IsCookingFood = false   
            end, function() -- Cancel
                StopAnimTask(PlayerPedId(), 'amb@prop_human_bbq@male@idle_a', 'idle_b', 1.0)
                QBCore.Functions.Notify("Canceled..", "error")
                IsCookingFood = false  
            end)
        else
            QBCore.Functions.Notify("You need some uncooked hotdog!", "error")
        end  
end)

RegisterNetEvent('qb-bbq:client:CookRibs', function() 
    if QBCore.Functions.HasItem('b-uc-ribs') then
            IsCookingFood = true
            QBCore.Functions.Progressbar("cook", "Cooking Ribs", 10000, false, true, {
                disableMovement = false,
                disableCarMovement = false,
                disableMouse = false,
                disableCombat = false,
                disableInventory = true,
            }, {
                animDict = 'amb@prop_human_bbq@male@idle_a',
                anim = 'idle_b',
                flags = 8,
            }, {
                model = 'prop_fish_slice_01',
                bone = 28422,
                coords = { x = -0.005, y = 0.00, z = 0.00 },
                rotation = { x = 350.0, y = 320.0, z = 0.0 },
            }, {}, function()
                TriggerServerEvent('qb-bbq:server:CookRibs')
                QBCore.Functions.Notify("You Cooked Spare Ribs!", "success", "20")
                IsCookingFood = false 
            end, function() -- Cancel
                StopAnimTask(PlayerPedId(), 'amb@prop_human_bbq@male@idle_a', 'idle_b', 1.0)
                QBCore.Functions.Notify("Canceled..", "error")
                IsCookingFood = false
            end)
        else
            QBCore.Functions.Notify("You need uncooked ribs!", "error")
        end 
end)

RegisterNetEvent('qb-bbq:client:CookBrisket', function() 
    if QBCore.Functions.HasItem('b-uc-brisket') then
            IsCookingFood = true
            QBCore.Functions.Progressbar("cook", "Cooking Brisket", 20000, false, true, {
                disableMovement = false,
                disableCarMovement = false,
                disableMouse = false,
                disableCombat = false,
                disableInventory = true,
            }, {
                animDict = 'amb@prop_human_bbq@male@idle_a',
                anim = 'idle_b',
                flags = 8,
            }, {
                model = 'prop_fish_slice_01',
                bone = 28422,
                coords = { x = -0.005, y = 0.00, z = 0.00 },
                rotation = { x = 350.0, y = 320.0, z = 0.0 },
            }, {}, function()
                TriggerServerEvent('qb-bbq:server:CookBrisket')
                QBCore.Functions.Notify("You Cooked Brisket!", "success", "20")
                IsCookingFood = false 
            end, function() -- Cancel
                StopAnimTask(PlayerPedId(), 'amb@prop_human_bbq@male@idle_a', 'idle_b', 1.0)
                QBCore.Functions.Notify("Canceled..", "error")
                IsCookingFood = false 
            end)
        else
            QBCore.Functions.Notify("You need uncooked brisket!", "error")
        end
end)

RegisterNetEvent('qb-bbq:client:CookJacket', function() 
    if QBCore.Functions.HasItem('b-uc-jacket') then
            IsCookingFood = true
            QBCore.Functions.Progressbar("cook", "Cooking Jacket Potato", 10000, false, true, {
                disableMovement = false,
                disableCarMovement = false,
                disableMouse = false,
                disableCombat = false,
                disableInventory = true,
            }, {
                animDict = 'amb@prop_human_bbq@male@idle_a',
                anim = 'idle_b',
                flags = 8,
            }, {
                model = 'prop_fish_slice_01',
                bone = 28422,
                coords = { x = -0.005, y = 0.00, z = 0.00 },
                rotation = { x = 350.0, y = 320.0, z = 0.0 },
            }, {}, function()
                TriggerServerEvent('qb-bbq:server:CookJacket')
                QBCore.Functions.Notify("You Cooked a Jacket!", "success", "20")
                IsCookingFood = false 
            end, function() -- Cancel
                StopAnimTask(PlayerPedId(), 'amb@prop_human_bbq@male@idle_a', 'idle_b', 1.0)
                QBCore.Functions.Notify("Canceled..", "error")
                IsCookingFood = false
            end)
        else
            QBCore.Functions.Notify("You need an uncooked Jacket!", "error")
        end
end)

------/////////NEW PROP SHOPS///////-------
RegisterNetEvent("qb-bbq:propshop")
AddEventHandler("qb-bbq:propshop", function()
    TriggerServerEvent("inventory:server:OpenInventory", "shop", "Home Grillin", Config.PropShop)
end)

Shops.Draw3DText = function(coords, text)
    local onScreen, _x, _y = World3dToScreen2d(coords.x, coords.y, coords.z)
    
    SetTextScale(0.38, 0.38)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 200)
    SetTextEntry("STRING")
    SetTextCentre(1)

    AddTextComponentString(text)
    DrawText(_x, _y)

    local factor = string.len(text) / 370
    DrawRect(_x, _y + 0.0125, 0.015 + factor, 0.03, 41, 11, 41, 68)
end

Citizen.CreateThread(function()
	for i = 1, #Config.PropShopLoc do
		local blip = AddBlipForCoord(Config.PropShopLoc[i])

		SetBlipSprite(blip, 541)
		SetBlipScale(blip, 0.5)
		SetBlipDisplay(blip, 4)
		SetBlipAsShortRange(blip, true)

		BeginTextCommandSetBlipName('STRING')
		AddTextComponentString('Home Grillin')
		EndTextCommandSetBlipName(blip)	
	end

	while true do
		local player, sleepThread = PlayerPedId(), 750;

		for i = 1, #Config.PropShopLoc do
			local dst = #(GetEntityCoords(player) - Config.PropShopLoc[i]);

			if dst < 2.5 then
				Shops.Draw3DText(Config.PropShopLoc[i], '[~g~E~w~] Home Grillin');  --words you see when near shop
				sleepThread = 5;

				if dst < 1.5 then
					if IsControlJustReleased(0, 38) then
						TriggerEvent('qb-bbq:propshop')
					end
				end
			end
		end

		Citizen.Wait(sleepThread)
	end
end)

Citizen.CreateThread(function()
    meatguy = AddBlipForCoord(Config.BuyLocation)
    SetBlipSprite (meatguy, 671)
    SetBlipDisplay(meatguy, 4)
    SetBlipScale  (meatguy, 0.4)
    SetBlipAsShortRange(meatguy, true)
    SetBlipColour(meatguy, 1)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentSubstringPlayerName("Meat Guy")
    EndTextCommandSetBlipName(meatguy)
end) 


----/////BBQ 1 //////-----------

RegisterNetEvent("qb-bbq:PlaceBBQ1")
AddEventHandler("qb-bbq:PlaceBBQ1", function()
    if not BBQ1Placed then
    local playerPed = PlayerPedId()
    local coords    = GetEntityCoords(playerPed)
    local forward   = GetEntityForwardVector(playerPed)
    local x, y, z   = table.unpack(coords + forward * 1.0)

    local bbq1 = `prop_bbq_1`
    RequestModel(bbq1)
    while (not HasModelLoaded(bbq1)) do
        Wait(1)
    end
     bbqprop1 = CreateObject(bbq1, x, y, z, true, false, true)
    PlaceObjectOnGroundProperly(bbqprop1)
    SetEntityAsMissionEntity(bbqprop1)

    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic3"})
    QBCore.Functions.Progressbar('name_here', 'Placing BBQ...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        BBQ1Placed = true
        BBQ1PickedUp = false


        TriggerServerEvent('qb-bbq:server:RemoveBBQ1')
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items['bbq1'], "remove")
    end)
end
end)

RegisterNetEvent('qb-bbq:PickupBBQ1')
AddEventHandler('qb-bbq:PickupBBQ1', function()
    if not BBQ1PickedUp and BBQ1Placed then
        TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
        QBCore.Functions.Progressbar('pick', 'Picking Up BBQ', 5000, false, true, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function()
            TriggerServerEvent("qb-bbq:server:PickupBBQ1")
            Wait(200)
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            DeleteEntity(bbqprop1)
        QBCore.Functions.Notify('You Picked Up BBQ', 'primary', 7500)
        BBQ1Placed = false
        BBQ1PickedUp = true
        end, function()
        QBCore.Functions.Notify('Cancelled', 'error', 7500)
        BBQ1Placed = false
        BBQ1PickedUp = true
        end)
    end
end)

----///////BBQ 2 ///////////-------
RegisterNetEvent("qb-bbq:PlaceBBQ2")
AddEventHandler("qb-bbq:PlaceBBQ2", function()
    if not BBQ2Placed then
    local playerPed = PlayerPedId()
    local coords    = GetEntityCoords(playerPed)
    local forward   = GetEntityForwardVector(playerPed)
    local x, y, z   = table.unpack(coords + forward * 1.0)

    local bbq2 = `prop_bbq_2`
    RequestModel(bbq2)
    while (not HasModelLoaded(bbq2)) do
        Wait(1)
    end
     bbqprop2 = CreateObject(bbq2, x, y, z, true, false, true)
    PlaceObjectOnGroundProperly(bbqprop2)
    SetEntityAsMissionEntity(bbqprop2)

    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic3"})
    QBCore.Functions.Progressbar('name_here', 'Placing BBQ...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        BBQ2Placed = true
        BBQ2PickedUp = false

        TriggerServerEvent('qb-bbq:server:RemoveBBQ2')
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items['bbq2'], "remove")
    end)
end
end)

RegisterNetEvent('qb-bbq:PickupBBQ2')
AddEventHandler('qb-bbq:PickupBBQ2', function()
    if not BBQ2PickedUp and BBQ2Placed then
        TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
        QBCore.Functions.Progressbar('pick', 'Picking Up BBQ', 5000, false, true, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function()
            TriggerServerEvent("qb-bbq:server:PickupBBQ2")
            Wait(200)
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            DeleteEntity(bbqprop2)
        QBCore.Functions.Notify('You Picked Up BBQ', 'primary', 7500)
        BBQ2Placed = false
        BBQ2PickedUp = true
        end, function()
        QBCore.Functions.Notify('Cancelled', 'error', 7500)
        BBQ2Placed = false
        BBQ2PickedUp = true
        end)
     end
end)

----///////BBQ 3 ///////////-------
RegisterNetEvent("qb-bbq:PlaceBBQ3")
AddEventHandler("qb-bbq:PlaceBBQ3", function()
    if not BBQ3Placed then
    local playerPed = PlayerPedId()
    local coords    = GetEntityCoords(playerPed)
    local forward   = GetEntityForwardVector(playerPed)
    local x, y, z   = table.unpack(coords + forward * 1.0)

    local bbq3 = `prop_bbq_4`
    RequestModel(bbq3)
    while (not HasModelLoaded(bbq3)) do
        Wait(1)
    end
     bbqprop3 = CreateObject(bbq3, x, y, z, true, false, true)
    PlaceObjectOnGroundProperly(bbqprop3)
    SetEntityAsMissionEntity(bbqprop3)

    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic3"})
    QBCore.Functions.Progressbar('name_here', 'Placing BBQ...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        BBQ3Placed = true
        BBQ3PickedUp = false

        TriggerServerEvent('qb-bbq:server:RemoveBBQ3')
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items['bbq3'], "remove")
    end)
end
end)

RegisterNetEvent('qb-bbq:PickupBBQ3')
AddEventHandler('qb-bbq:PickupBBQ3', function()
    if not BBQ3PickedUp and BBQ3Placed then
        TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
        QBCore.Functions.Progressbar('pick', 'Picking Up BBQ', 5000, false, true, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function()
            TriggerServerEvent("qb-bbq:server:PickupBBQ3")
            Wait(200)
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            DeleteEntity(bbqprop3)
        QBCore.Functions.Notify('You Picked Up BBQ', 'primary', 7500)
        BBQ3Placed = false
        BBQ3PickedUp = true
        end, function()
        QBCore.Functions.Notify('Cancelled', 'error', 7500)
        BBQ3Placed = false
        BBQ3PickedUp = true
        end)
     end
end)

----///////BBQ 4 ///////////-------
RegisterNetEvent("qb-bbq:PlaceBBQ4")
AddEventHandler("qb-bbq:PlaceBBQ4", function()
    if not BBQ4Placed then
    local playerPed = PlayerPedId()
    local coords    = GetEntityCoords(playerPed)
    local forward   = GetEntityForwardVector(playerPed)
    local x, y, z   = table.unpack(coords + forward * 1.0)

    local bbq4 = `prop_bbq_5`
    RequestModel(bbq4)
    while (not HasModelLoaded(bbq4)) do
        Wait(1)
    end
     bbqprop4 = CreateObject(bbq4, x, y, z, true, false, true)
    PlaceObjectOnGroundProperly(bbqprop4)
    SetEntityAsMissionEntity(bbqprop4)

    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic3"})
    QBCore.Functions.Progressbar('name_here', 'Placing BBQ...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        BBQ4Placed = true
        BBQ4PickedUp = false

        TriggerServerEvent('qb-bbq:server:RemoveBBQ4')
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items['bbq4'], "remove")
    end)
end
end)

RegisterNetEvent('qb-bbq:PickupBBQ4')
AddEventHandler('qb-bbq:PickupBBQ4', function()
    if not BBQ4PickedUp and BBQ4Placed then
        TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
        QBCore.Functions.Progressbar('pick', 'Picking Up BBQ', 5000, false, true, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function()
            TriggerServerEvent("qb-bbq:server:PickupBBQ4")
            Wait(200)
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            DeleteEntity(bbqprop4)
        QBCore.Functions.Notify('You Picked Up BBQ', 'primary', 7500)
        BBQ4Placed = false
        BBQ4PickedUp = true
        end, function()
        QBCore.Functions.Notify('Cancelled', 'error', 7500)
        BBQ4Placed = false
        BBQ4PickedUp = true
        end)
     end
end)

----///////BBQ 5 ///////////-------
RegisterNetEvent("qb-bbq:PlaceBBQ5")
AddEventHandler("qb-bbq:PlaceBBQ5", function()
    if not BBQ5Placed then
    local playerPed = PlayerPedId()
    local coords    = GetEntityCoords(playerPed)
    local forward   = GetEntityForwardVector(playerPed)
    local x, y, z   = table.unpack(coords + forward * 1.0)

    local bbq5 = `prop_bbq_3`
    RequestModel(bbq5)
    while (not HasModelLoaded(bbq5)) do
        Wait(1)
    end
     bbqprop5 = CreateObject(bbq5, x, y, z, true, false, true)
    PlaceObjectOnGroundProperly(bbqprop5)
    SetEntityAsMissionEntity(bbqprop5)

    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic3"})
    QBCore.Functions.Progressbar('name_here', 'Placing BBQ...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        BBQ5Placed = true
        BBQ5PickedUp = false

        TriggerServerEvent('qb-bbq:server:RemoveBBQ5')
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items['bbq5'], "remove")
    end)
end
end)

RegisterNetEvent('qb-bbq:PickupBBQ5')
AddEventHandler('qb-bbq:PickupBBQ5', function()
    if not BBQ5PickedUp and BBQ5Placed then
        TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
        QBCore.Functions.Progressbar('pick', 'Picking Up BBQ', 5000, false, true, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function()
            TriggerServerEvent("qb-bbq:server:PickupBBQ5")
            Wait(200)
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            DeleteEntity(bbqprop5)
        QBCore.Functions.Notify('You Picked Up BBQ', 'primary', 7500)
        BBQ5Placed = false
        BBQ5PickedUp = true
        end, function()
        QBCore.Functions.Notify('Cancelled', 'error', 7500)
        BBQ5Placed = false
        BBQ5PickedUp = true
        end)
     end
end)
