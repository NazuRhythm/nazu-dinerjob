Citizen.CreateThread(function()
    for k, tables in pairs(Config.TargetAction) do
        local options = {}
        for _, t in pairs(tables) do
            if k == "Treys" then
                options = {
                    type = 'client',
                    event = "nazu-dinerjob:client:Use" .. k,
                    icon = 'fas fa-utensils',
                    label = "トレイ",
                }
            elseif k == "Stash" then
                options = {
                    type = 'client',
                    event = "nazu-dinerjob:client:Use" .. k,
                    icon = 'fas fa-box',
                    label = "倉庫",
                    job = Config.Jobs
                }
            elseif k == "Tables" then
                options = {
                    type = 'client',
                    event = "nazu-dinerjob:client:Use" .. k,
                    icon = 'fas fa-utensils',
                    label = "テーブル",
                }
            elseif k == "Refrige" then
                options = {
                    type = 'client',
                    event = "nazu-dinerjob:client:Use" .. k,
                    icon = 'fas fa-otter',
                    label = "冷蔵庫",
                    job = Config.Jobs
                }
            elseif k == "Grill" then
                options = {
                    type = 'client',
                    event = "nazu-dinerjob:client:Use" .. k,
                    icon = 'fas fa-fire-burner',
                    label = "グリル",
                    job = Config.Jobs
                }
            elseif k == "Drinks" then
                options = {
                    type = 'client',
                    event = "nazu-dinerjob:client:Use" .. k,
                    icon = 'fas fa-wine-glass',
                    label = "ドリンク",
                    job = Config.Jobs
                }
            elseif k == "CoffeeMaker" then
                options = {
                    type = 'client',
                    event = "nazu-dinerjob:client:Use" .. k,
                    icon = 'fas fa-mug-saucer',
                    label = "コーヒーメーカー",
                    job = Config.Jobs
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