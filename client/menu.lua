Loc = Loc[Config.Language]

Citizen.CreateThread(function()
    CreateGrillMenu()
    CreateCuttingMenu()
    CreateDrinkBarMenu()                        
    CreateCoffeeMenu()
end)

function CreateGrillMenu()
    local Options = {}
    
    -- Grille Menu
    for k, v in pairs(Config.Foods.Grille) do
        Options[#Options+1] = {
            title = GetTheTitle(k, v),
            description = v.description and v.description or GetRecipe(Config.Foods.Grille[k]),
            icon = "nui://" .. Config.ImagePath .. QBCore.Shared.Items[k].image,
            onSelect = function()
                Grilling(k, v)
            end
        }
    end
    
    -- Grille Menu
    lib.registerContext({
        id = 'nazu_grille',
        title = Loc.Menu.grille,
        options = Options,
    })
end

function CreateCuttingMenu()
    local Options = {}
    
    -- Cutting Menu
    for k, v in pairs(Config.Foods.Cutting) do
        Options[#Options+1] = {
            title = GetTheTitle(k, v),
            description = v.description and v.description or GetRecipe(Config.Foods.Cutting[k]),
            icon = "nui://" .. Config.ImagePath .. QBCore.Shared.Items[k].image,
            onSelect = function()
                Cutting(k, v)
            end
        }
    end
    
    -- Cutting Menu
    lib.registerContext({
        id = 'nazu_cuttingboard',
        title = Loc.Menu.cutting_board,
        options = Options,
    })
end

function CreateDrinkBarMenu()
    local Options = {}
    
    -- Drink Bar
    for k, v in pairs(Config.Foods.Drink) do
        Options[#Options+1] = {
            title = GetTheTitle(k, v),
            description = v.description and v.description or GetRecipe(Config.Foods.Drink[k]),
            icon = "nui://" .. Config.ImagePath .. QBCore.Shared.Items[k].image,
            onSelect = function()
                TakeDrinks(k, v)
            end
        }
    end
    
    -- Drink Bar
    lib.registerContext({
        id = 'nazu_drink_bar',
        title = Loc.Menu.drink_bar,
        options = Options,
    })
end

function CreateCoffeeMenu()
    local Options = {}
    
    -- Coffee Menu
    for k, v in pairs(Config.Foods.Coffee) do
        Options[#Options+1] = {
            title = GetTheTitle(k, v),
            description = v.description and v.description or GetRecipe(Config.Foods.Coffee[k]),
            icon = "nui://" .. Config.ImagePath .. QBCore.Shared.Items[k].image,
            onSelect = function()
                MakeCoffee(k, v)
            end
        }
    end
    
    -- Coffee Menu
    lib.registerContext({
        id = 'nazu_coffee_maker',
        title = Loc.Menu.coffee_maker,
        options = Options,
    })
end