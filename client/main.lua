
-- Actions
RegisterNetEvent('nazu-dinerjob:client:UseCuttingBoard', function(key, data)
    lib.showContext('nazu_cuttingboard')
end)

RegisterNetEvent('nazu-dinerjob:client:UseGrille', function(key, data)
    lib.showContext('nazu_grille')
end)

RegisterNetEvent('nazu-dinerjob:client:UseDrinks', function(key, data)
    lib.showContext('nazu_drink_bar')
end)

RegisterNetEvent('nazu-dinerjob:client:UseCoffeeMaker', function(key, data)
    lib.showContext('nazu_coffee_maker')
end)

-- Stashes
RegisterNetEvent('nazu-dinerjob:client:UseTreys', function(key, data)

    Wait(100)
    TriggerEvent("inventory:client:SetCurrentStash", data.name)
    TriggerServerEvent("inventory:server:OpenInventory", "stash", data.name, {
        maxweight = Config.StashInfo[key].maxWeight,
        slots = Config.StashInfo[key].slots,
    })
    
end)

RegisterNetEvent('nazu-dinerjob:client:UseStash', function(key, data)

    Wait(100)
    TriggerEvent("inventory:client:SetCurrentStash", data.name)
    TriggerServerEvent("inventory:server:OpenInventory", "stash", data.name, {
        maxweight = Config.StashInfo[key].maxWeight,
        slots = Config.StashInfo[key].slots,
    })
end)

RegisterNetEvent('nazu-dinerjob:client:UseTables', function(key, data)

    Wait(100)
    TriggerEvent("inventory:client:SetCurrentStash", data.name)
    TriggerServerEvent("inventory:server:OpenInventory", "stash", data.name, {
        maxweight = Config.StashInfo[key].maxWeight,
        slots = Config.StashInfo[key].slots,
    })
end)

RegisterNetEvent('nazu-dinerjob:client:UseRefrige', function(key, data)

    Wait(100)
    TriggerEvent("inventory:client:SetCurrentStash", data.name)
    TriggerServerEvent("inventory:server:OpenInventory", "stash", data.name, {
        maxweight = Config.StashInfo[key].maxWeight,
        slots = Config.StashInfo[key].slots,
    })
end)