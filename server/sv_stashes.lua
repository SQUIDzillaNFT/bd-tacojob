local QBCore = exports['qb-core']:GetCoreObject()
local ox_inventory = exports.ox_inventory

if Config.InventorySystem == 'ox' then
    ----- | FRONT COUNTER | -----
    RegisterNetEvent('bd-tacojob:server:RegisterFrontTray1', function()
        ox_inventory:RegisterStash('tacojob_counter', 'Counter', 5, 5000, false)
    end)
    ----- | JOB FRIDGE | -----
    RegisterNetEvent('bd-tacojob:server:RegisterFridge', function()
        ox_inventory:RegisterStash('tacojob_fridge', 'Fridge', 25, 50000, false)
    end)
    ----- | JOB STORAGE | -----
    RegisterNetEvent('bd-tacojob:server:RegisterStorage', function()
        ox_inventory:RegisterStash('tacojob_storage', 'Storage', 50, 85000, false)
    end)
    ----- | CREATING SHOP | ----
    RegisterNetEvent('bd-tacojob:server:RegisterShop', function()
        exports.ox_inventory:RegisterShop('tacohutshop', {
            name = 'Tacohut-Shop',
            inventory = Config.Items,
            locations = {
                vector3(17.25, -1599.23, 29.4),
            },
            groups = {
                taco = 0
            },
        })
    end)
elseif Config.InventorySystem == 'qb' then
    ----- | FRONT COUNTER | -----
    RegisterNetEvent('bd-tacojob:server:frontTray1', function(frontTray1)
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        local stashName = 'TacoHuts Counter'
    
        if Player then
            exports['qb-inventory']:OpenInventory(src, stashName, {
                maxweight = 50000,
                slots = 15,
            })
        end
    end)
    ----- | JOB FRIDGE | -----
    RegisterNetEvent('bd-tacojob:server:jobFridge', function(jobFridge)
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        local stashName = 'TacoHuts Fridge'
    
        if Player then
            exports['qb-inventory']:OpenInventory(src, stashName, {
                maxweight = 750000,
                slots = 50,
            })
        end
    end)
    ----- | JOB STORAGE | -----
    RegisterNetEvent('bd-tacojob:server:jobStorage', function(jobFridge)
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        local stashName = 'TacoHuts Storage'
    
        if Player then
            exports['qb-inventory']:OpenInventory(src, stashName, {
                maxweight = 1000000,
                slots = 75,
            })
        end
    end)
    ----- | CREATING SHOP | ----
    RegisterNetEvent('bd-tacojob:server:ingredientShop', function(name)
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        local playerCoords = GetEntityCoords(playerPed)
        exports['qb-inventory']:CreateShop({
            name = 'ingredientShop',
            label = 'Taco Huts Shop',
            --coords = vector3(8.19, -1607.27, 29.38), -- match where the target is on client side 
            slots = 20,
            items = Config.Items
        })
    
        if Player then
            exports['qb-inventory']:OpenShop(source, 'ingredientShop')
        end
    end)
end

