--[[
  ____              _                 _                       
 | __ )  __ _ _   _| | ___  _ __ __ _(_)                      
 |  _ \ / _` | | | | |/ _ \| '__/ _` | |                      
 | |_) | (_| | |_| | | (_) | | | (_| | |                      
 |____/ \__,_|\__, |_|\___/|_|  \__,_|_|                  _   
 |  _ \  _____|___/___| | ___  _ __  _ __ ___   ___ _ __ | |_ 
 | | | |/ _ \ \ / / _ \ |/ _ \| '_ \| '_ ` _ \ / _ \ '_ \| __|
 | |_| |  __/\ V /  __/ | (_) | |_) | | | | | |  __/ | | | |_ 
 |____/ \___| \_/ \___|_|\___/| .__/|_| |_| |_|\___|_| |_|\__|
                              |_|                             
--]]
Config = {}

Config.TargetSystem = 'qb' -- Supports 'qb' & 'ox'
Config.InventorySystem = 'qb' -- Supports 'qb' | 'ox'

----- | PED STUFF | -----
Config.tacoGaragePed = {
    {
        tacoGaragePedModel = 'mp_m_waremech_01',
        tacoGaragePedLocation = vec4(18.25, -1598.3, 29.28-1, 321.96),
        tacoGarageRenderDistance = 20,
    }
}

----- | VEHICLE STUFF | -----
Config.VehicleSpawn = vector4(17.85, -1595.53, 29.28, 48.64)
Config.Vehicle = 'taco'

----- | SHOP ITEMS | -----
Config.Items = {
    { name = 'th_carbonated_water', price = 1, amount = 50, info = {}, type = "item", slot = 1 },
    { name = 'th_oranges', price = 1, amount = 50, info = {}, type = "item", slot = 2 },
    { name = 'th_cheddar_cheese', price = 1, amount = 50, info = {}, type = "item", slot = 3 },
    { name = 'th_tortilla_chips', price = 1, amount = 50, info = {}, type = "item", slot = 4 },
    { name = 'th_tortillas', price = 1, amount = 50, info = {}, type = "item", slot = 5 },
    { name = 'th_raw_chicken', price = 1, amount = 50, info = {}, type = "item", slot = 6 },
    { name = 'th_raw_ground_beef', price = 1, amount = 50, info = {}, type = "item", slot = 7 },
}
