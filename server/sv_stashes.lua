local QBCore = exports['qb-core']:GetCoreObject()
local ox_inventory = exports.ox_inventory

if Config.InventorySystem == 'ox' then
    ----- | FRONT COUNTER | -----
    RegisterNetEvent('ox:frontTray', function()
        ox_inventory:RegisterStash('frontTray', 'Counter', 5, 5000, true)
    end)
    ----- | JOB FRIDGE | -----
    RegisterNetEvent('ox:jobFridge', function()
        ox_inventory:RegisterStash('jobFridge', 'Fridge', 25, 50000, true)
    end)
    ----- | JOB STORAGE | -----
    RegisterNetEvent('ox:jobStorage', function()
        ox_inventory:RegisterStash('jobStorage', 'Storage', 50, 85000, true)
    end)
    ----- | SHOP | -----
    exports.ox_inventory:RegisterShop('thshop', {
    name = 'Tacohut Shop',
    inventory = Config.Items
})
elseif Config.InventorySystem == 'qb' then
    -- No inventory opening logic needed here. All inventory opening is handled on the client.
    -- You may keep event registrations for other logic if needed, but do not open inventories or trigger client events here.
end
