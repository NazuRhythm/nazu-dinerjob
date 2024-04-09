Citizen.CreateThread(function()
    CreateDrinkBarMenu()
    CreateGrillMenu()
    CreateCoffeeMenu()
end)

function CreateDrinkBarMenu()
    local Options = {}
    
    -- Drink Bar
    for k, v in pairs(Config.Foods.Drink) do
        Options[#Options+1] = {
            title = QBCore.Shared.Items[k].label,
            description = v.description,
            icon = "nui://" .. Config.ImagePath .. QBCore.Shared.Items[k].image,
            onSelect = function()
                TakeDrinks(k)
            end
        }
    end
    
    -- Drink Bar
    lib.registerContext({
        id = 'nazu_drink_bar',
        title = 'ドリンクバー',
        options = Options,
    })
end

function CreateGrillMenu()
    local Options = {}
    
    -- Grille Menu
    for k, v in pairs(Config.Foods.Grille) do
        Options[#Options+1] = {
            title = QBCore.Shared.Items[k].label,
            description = v.description,
            icon = "nui://" .. Config.ImagePath .. QBCore.Shared.Items[k].image,
            onSelect = function()
                -- TakeDrinks(k)
                print("nui://" .. Config.ImagePath .. QBCore.Shared.Items[k].image)
            end
        }
    end
    
    -- Grille Menu
    lib.registerContext({
        id = 'nazu_grille',
        title = 'グリル焼き',
        options = Options,
    })
end

function CreateCoffeeMenu()
    local Options = {}
    
    -- Coffee Menu
    for k, v in pairs(Config.Foods.Coffee) do
        Options[#Options+1] = {
            title = QBCore.Shared.Items[k].label,
            description = v.description,
            icon = "nui://" .. Config.ImagePath .. QBCore.Shared.Items[k].image,
            onSelect = function()
                MakeCoffee(k)
            end
        }
    end
    
    -- Coffee Menu
    lib.registerContext({
        id = 'nazu_coffee_maker',
        title = 'コーヒーメーカー',
        options = Options,
    })
end