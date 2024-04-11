Citizen.CreateThread(function()
    CreateDrinkBarMenu()
    CreateGrillMenu()
    CreateCuttingMenu()
    CreateCoffeeMenu()
end)

function CreateDrinkBarMenu()
    local Options = {}
    
    -- Drink Bar
    for k, v in pairs(Config.Foods.Drink) do
        Options[#Options+1] = {
            title = GetTheTitle(k, v.price),
            description = v.description and v.description or GetRecipe(Config.Foods.Drink[k]),
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
            title = GetTheTitle(k, v.price),
            description = v.description and v.description or GetRecipe(Config.Foods.Grille[k]),
            icon = "nui://" .. Config.ImagePath .. QBCore.Shared.Items[k].image,
            onSelect = function()
                Grilling(k)
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

function CreateCuttingMenu()
    local Options = {}
    
    -- Grille Menu
    for k, v in pairs(Config.Foods.Cutting) do
        Options[#Options+1] = {
            title = GetTheTitle(k, v.price),
            description = v.description and v.description or GetRecipe(Config.Foods.Grille[k]),
            icon = "nui://" .. Config.ImagePath .. QBCore.Shared.Items[k].image,
            onSelect = function()
                Cutting(k)
            end
        }
    end
    
    -- Grille Menu
    lib.registerContext({
        id = 'nazu_cuttingboard',
        title = 'まな板',
        options = Options,
    })
end

function CreateCoffeeMenu()
    local Options = {}
    
    -- Coffee Menu
    for k, v in pairs(Config.Foods.Coffee) do
        Options[#Options+1] = {
            title = GetTheTitle(k, v.price),
            description = v.description and v.description or GetRecipe(Config.Foods.Coffee[k]),
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