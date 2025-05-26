local QBCore = exports['qb-core']:GetCoreObject()

-- TARGET ZONES (only qb-target)
exports['qb-target']:AddBoxZone("TacoJobFrontTray1", vector3(10.77, -1604.91, 29.37), 0.9, 0.9, {
	name = "TacoJobFrontTray1",
	heading = 347.27,
	debugPoly = false,
	minZ = 27.37,
	maxZ = 31.37,
}, {
	options = {
		{
			type = "client",
			event = "bd-tacojob:client:frontTray1",
			icon = "fa-solid fa-equals",
			label = "Counter",
		},
	},
	distance = 2.5
})

exports['qb-target']:AddBoxZone("TacoJobJobFridge", vector3(12.39, -1600.8, 29.38), 0.9, 0.9, {
	name = "TacoJobJobFridge",
	heading = 347.27,
	debugPoly = false,
	minZ = 27.38,
	maxZ = 31.38,
}, {
	options = {
		{
			type = "client",
			event = "bd-tacojob:client:jobFridge",
			icon = "fa-solid fa-temperature-empty",
			label = "Fridge",
			job = "taco",
		},
	},
	distance = 2.5
})

exports['qb-target']:AddBoxZone("TacoJobJobStorage", vector3(20.75, -1601.4, 29.38), 0.9, 0.9, {
	name = "TacoJobJobStorage",
	heading = 347.27,
	debugPoly = false,
	minZ = 27.38,
	maxZ = 31.38,
}, {
	options = {
		{
			type = "client",
			event = "bd-tacojob:client:jobStorage",
			icon = "fa-solid fa-box",
			label = "Storage",
			job = "taco",
		},
	},
	distance = 2.5
})

exports['qb-target']:AddBoxZone("TacoJobShop", vector3(17.23, -1599.24, 29.38), 0.9, 0.9, {
	name = "TacoJobShop",
	heading = 347.27,
	debugPoly = false,
	minZ = 27.38,
	maxZ = 31.38,
}, {
	options = {
		{
			type = "client",
			event = "bd-tacojob:client:ingredientShop",
			icon = "fa-solid fa-basket-shopping",
			label = "Ingredients",
			job = "taco",
		},
	},
	distance = 2.5
})

-- INVENTORY EVENTS (direct open for qb-inventory)
RegisterNetEvent('bd-tacojob:client:frontTray1', function()
	TriggerEvent('inventory:client:SetCurrentStash', 'TH_Front_Tray_1')
	TriggerServerEvent('inventory:server:OpenInventory', 'stash', 'TH_Front_Tray_1', {
		maxweight = 50000,
		slots = 15,
	})
end)

RegisterNetEvent('bd-tacojob:client:jobFridge', function()
	TriggerEvent('inventory:client:SetCurrentStash', 'TH_Fridge')
	TriggerServerEvent('inventory:server:OpenInventory', 'stash', 'TH_Fridge', {
		maxweight = 750000,
		slots = 50,
	})
end)

RegisterNetEvent('bd-tacojob:client:jobStorage', function()
	TriggerEvent('inventory:client:SetCurrentStash', 'TH_Storage')
	TriggerServerEvent('inventory:server:OpenInventory', 'stash', 'TH_Storage', {
		maxweight = 1000000,
		slots = 75,
	})
end)

RegisterNetEvent('bd-tacojob:client:ingredientShop', function()
	TriggerServerEvent('inventory:server:OpenInventory', 'shop', 'tacohut', { items = Config.Items, label = "Taco Hut Shop" })
end)
