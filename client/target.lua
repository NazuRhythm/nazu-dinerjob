Citizen.CreateThread(function()
    for k, tables in pairs(Config.Diners) do
        local options = {}
        for _, t in pairs(tables) do
            if k == "Treys" then
                options = {
                    type = 'client',
                    action = function()
                        TriggerEvent("nazu-dinerjob:client:Use" .. k, k, t)
                    end,
                    icon = 'fas fa-utensils',
                    label = t.label,
                }
            elseif k == "Stash" then
                options = {
                    type = 'client',
                    action = function()
                        TriggerEvent("nazu-dinerjob:client:Use" .. k, k, t)
                    end,
                    icon = 'fas fa-box',
                    label = t.label,
                    job = Config.Jobs.DinerJob
                }
            elseif k == "Tables" then
                options = {
                    type = 'client',
                    action = function()
                        TriggerEvent("nazu-dinerjob:client:Use" .. k, k, t)
                    end,
                    icon = 'fas fa-utensils',
                    label = t.label,
                }
            elseif k == "Refrige" then
                options = {
                    type = 'client',
                    action = function()
                        TriggerEvent("nazu-dinerjob:client:Use" .. k, k, t)
                    end,
                    icon = 'fas fa-otter',
                    label = t.label,
                    job = Config.Jobs.DinerJob
                }
            elseif k == "Grille" then
                options = {
                    type = 'client',
                    action = function()
                        TriggerEvent("nazu-dinerjob:client:Use" .. k, k, t)
                    end,
                    icon = 'fas fa-fire-burner',
                    label = t.label,
                    job = Config.Jobs.DinerJob
                }
            elseif k == "CuttingBoard" then
                options = {
                    type = 'client',
                    action = function()
                        TriggerEvent("nazu-dinerjob:client:Use" .. k, k, t)
                    end,
                    icon = 'fas fa-kitchen-set',
                    label = t.label,
                    job = Config.Jobs.DinerJob
                }
            elseif k == "Drinks" then
                options = {
                    type = 'client',
                    action = function()
                        TriggerEvent("nazu-dinerjob:client:Use" .. k, k, t)
                    end,
                    icon = 'fas fa-wine-glass',
                    label = t.label,
                    job = Config.Jobs.DinerJob
                }
            elseif k == "CoffeeMaker" then
                options = {
                    type = 'client',
                    action = function()
                        TriggerEvent("nazu-dinerjob:client:Use" .. k, k, t)
                    end,
                    icon = 'fas fa-mug-saucer',
                    label = t.label,
                    job = Config.Jobs.DinerJob
                }
            end

            exports['qb-target']:AddBoxZone(t.name, t.coords, t.d, t.w, {
                name = t.name,
                heading = t.heading,
                debugPoly = Config.DebugMode,
                minZ = t.minZ,
                maxZ = t.maxZ,
            },{
                options = { options },
                distance = 1.5
            })
        end
    end
end)