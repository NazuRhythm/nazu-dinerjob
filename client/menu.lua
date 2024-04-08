Citizen.CreateThread(function()
    local Options = {}
    
    -- ドリンクバー
    for k, _ in pairs(Config.Foods.Drink) do
        Options[#Options+1] = {
            title = QBCore.Shared.Items[k].label,
            description = '',
            icon = "nui://" .. Config.ImagePath .. QBCore.Shared.Items[k].image,
        }
    end
    
    -- ドリンクバー
    lib.registerContext({
        id = 'nazu_drink_bar',
        title = 'ドリンクバー',
        options = { Options },
    })
end)

lib.registerContext({
    id = 'nazu_drink_bar',
    title = 'ドリンクバー',
    options = { Options },
})