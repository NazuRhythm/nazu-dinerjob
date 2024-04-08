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
                    label = "トレイ",
                }
            elseif k == "Stash" then
                options = {
                    type = 'client',
                    action = function()
                        TriggerEvent("nazu-dinerjob:client:Use" .. k, k, t)
                    end,
                    icon = 'fas fa-box',
                    label = "倉庫",
                    job = Config.Jobs.DinerJob
                }
            elseif k == "Tables" then
                options = {
                    type = 'client',
                    action = function()
                        TriggerEvent("nazu-dinerjob:client:Use" .. k, k, t)
                    end,
                    icon = 'fas fa-utensils',
                    label = "テーブル",
                }
            elseif k == "Refrige" then
                options = {
                    type = 'client',
                    action = function()
                        TriggerEvent("nazu-dinerjob:client:Use" .. k, k, t)
                    end,
                    icon = 'fas fa-otter',
                    label = "冷蔵庫",
                    job = Config.Jobs.DinerJob
                }
            elseif k == "Grill" then
                options = {
                    type = 'client',
                    action = function()
                        TriggerEvent("nazu-dinerjob:client:Use" .. k, k, t)
                    end,
                    icon = 'fas fa-fire-burner',
                    label = "グリル",
                    job = Config.Jobs.DinerJob
                }
            elseif k == "Drinks" then
                options = {
                    type = 'client',
                    action = function()
                        TriggerEvent("nazu-dinerjob:client:Use" .. k, k, t)
                    end,
                    icon = 'fas fa-wine-glass',
                    label = "ドリンクバー",
                    job = Config.Jobs.DinerJob
                }
            elseif k == "CoffeeMaker" then
                options = {
                    type = 'client',
                    action = function()
                        TriggerEvent("nazu-dinerjob:client:Use" .. k, k, t)
                    end,
                    icon = 'fas fa-mug-saucer',
                    label = "コーヒーメーカー",
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