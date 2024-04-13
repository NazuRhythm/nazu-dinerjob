Config = Config or {}
Loc = {}

Config.DebugMode = false

Config.Language = 'en'

Config.ImagePath = 'qb-inventory/html/images/'

Config.Notify = 'okok'

Config.ChargeType = "cash"
Config.Display_Currency = '$'
Config.Display_Price = true
Config.Display_x1 = false

Config.Jobs = { 
    DinerJob = {
        ['diner'] = 0,
    },
}

Config.Blips = {
    ['Diner`s Restaurant'] = {
        coords = vector3(1588.19, 6454.99, 26.01),
        sprite = 206,
        color = 0,
        scale = 0.6,
    },
}


Config.Foods = {

    -- Grille
    Grille = {
        ['nz_pancake'] = {
            description = false,
            price = 950,
            amount = 1,
            recipes = {
                ['nz_egg'] = 2,
                ['nz_milk'] = 1,
                ['nz_syrup'] = 1,
                ['nz_pancakemix'] = 1,
            },
        },
        ['nz_waffle'] = {
            description = false,
            price = 1200,
            amount = 1,
            recipes = {
                ['nz_egg'] = 2,
                ['nz_milk'] = 1,
                ['nz_pancakemix'] = 1,
            },
        },
        ['nz_wafflebacon'] = {
            description = false,
            price = 1500,
            amount = 1,
            recipes = {
                ['nz_egg'] = 2,
                ['nz_milk'] = 1,
                ['nz_raw_bacon'] = 1,
                ['nz_pancakemix'] = 1,
            },
        },
        ['nz_toast'] = {
            description = false,
            price = 1200,
            amount = 1,
            recipes = {
                ['nz_bread'] = 1,
                ['nz_butter'] = 3,
                ['nz_strawberry'] = 3,
            },
        },
        ['nz_sandwitch'] = {
            description = false,
            price = 1100,
            amount = 1,
            recipes = {
                ['nz_egg'] = 2,
                ['nz_bread'] = 1,
                ['nz_lettuce'] = 1,
                ['nz_raw_bacon'] = 2,
            },
        },
        ['nz_brakefastset'] = {
            description = false,
            price = 1250,
            amount = 1,
            recipes = {
                ['nz_egg'] = 2,
                ['nz_bread'] = 1,
                ['nz_raw_bacon'] = 1,
            },
        },
        ['nz_burger'] = {
            description = false,
            price = 1150,
            amount = 1,
            recipes = {
                ['nz_bread'] = 1,
                ['nz_tomato'] = 1,
                ['nz_lettuce'] = 1,
            },
        },
    },

    Cutting = {
        ['nz_salad'] = {
            description = false,
            price = 670,
            amount = 1,
            recipes = {
                ['nz_egg'] = 1,
                ['nz_tomato'] = 1,
                ['nz_avocado'] = 1,
                ['nz_lettuce'] = 1,
                ['nz_cucumber'] = 1,
            },
        },
    },

    -- Drink
    Drink = {
        ['kurkakola'] = {
            description = false,
            price = 200,
            amount = 1,
            recipes = {},
        },
        ['wine'] = {
            description = false,
            price = 150,
            amount = 1,
            recipes = {},
        },
        ['water_bottle'] = {
            description = false,
            price = 150,
            amount = 1,
            recipes = {}, -- {} or table.
        },
    },

    -- Coffee
    Coffee = {
        ['coffee'] = {
            description = false,
            price = 150,
            recipes = {},
        },
    }
}

Config.Diners = {
    ['Treys'] = {
        {
            name = 'nazu_dinerjob_trey1',
            label = 'Trey１',
            coords = vector3(1593.61, 6453.82, 26.01), d = 0.4, w = 0.6,
            heading = 336,
            minZ = 26.01,
            maxZ = 26.46,
        },
        {
            name = 'nazu_dinerjob_trey2',
            label = 'Trey２',
            coords = vector3(1590.37, 6455.29, 26.01), d = 0.4, w = 0.6,
            heading = 336,
            minZ = 26.01,
            maxZ = 26.41,
        },
        {
            name = 'nazu_dinerjob_trey3',
            label = 'Trey３',
            coords = vector3(1586.68, 6457.07, 26.01), d = 0.4, w = 0.6,
            heading = 332,
            minZ = 26.01,
            maxZ = 26.46,
        },
        {
            name = 'nazu_dinerjob_trey4',
            label = 'Trey４',
            coords = vector3(1584.79, 6458.46, 26.01), d = 0.4, w = 0.6,
            heading = 306,
            minZ = 26.01,
            maxZ = 26.41,
        },
    },
    ['Tables'] = {
        {
            name = 'nazu_dinerjob_table1',
            label = 'Table１',
            coords = vector3(1592.77, 6450.77, 26.01), d = 1.4, w = 0.8,
            heading = 336,
            minZ = 25.75,
            maxZ = 26.46,
        },
        {
            name = 'nazu_dinerjob_table2',
            label = 'Table２',
            coords = vector3(1590.98, 6451.58, 26.01), d = 1.4, w = 0.8,
            heading = 335,
            minZ = 25.75,
            maxZ = 26.41,
        },
        {
            name = 'nazu_dinerjob_table3',
            label = 'Table３',
            coords = vector3(1589.14, 6452.44, 26.01), d = 1.4, w = 0.8,
            heading = 335,
            minZ = 25.75,
            maxZ = 26.41,
        },
        {
            name = 'nazu_dinerjob_table4',
            label = 'Table４',
            coords = vector3(1587.34, 6453.29, 26.01), d = 1.4, w = 0.8,
            heading = 334,
            minZ = 25.75,
            maxZ = 26.41,
        },
        {
            name = 'nazu_dinerjob_table5',
            label = 'Table５',
            coords = vector3(1585.52, 6454.1, 26.01), d = 1.4, w = 0.8,
            heading = 336,
            minZ = 25.75,
            maxZ = 26.36,
        },
        {
            name = 'nazu_dinerjob_table6',
            label = 'Table６',
            coords = vector3(1583.71, 6454.98, 26.01), d = 1.4, w = 0.8,
            heading = 334,
            minZ = 25.75,
            maxZ = 26.46,
        },
        {
            name = 'nazu_dinerjob_table7',
            label = 'Table７',
            coords = vector3(1581.89, 6455.85, 26.01), d = 1.4, w = 0.8,
            heading = 334,
            minZ = 25.75,
            maxZ = 26.36,
        },
    },
    ['CuttingBoard'] = {
        {
            name = 'nazu_dinerjob_cuttingboard1',
            label = 'Cutting Board',
            coords = vector3(1586.92, 6459.28, 26.01), d = 0.7, w = 0.5,
            heading = 65,
            minZ = 26.01,
            maxZ = 26.41,
        },
    },
    ['Grille'] = {
        {
            name = 'nazu_dinerjob_grille1',
            label = 'Grille',
            coords = vector3(1587.96, 6459.01, 26.01), d = 1.4, w = 0.6,
            heading = 65,
            minZ = 26.01,
            maxZ = 26.41,
        },
    },
    ['Drinks'] = {
        {
            name = 'nazu_dinerjob_drinks1',
            label = 'Drink Bar',
            coords = vector3(1586.16, 6459.9, 26.01), d = 1.1, w = 1.1,
            heading = 65,
            minZ = 26.01,
            maxZ = 27.01,
        },
        {
            name = 'nazu_dinerjob_drinks2',
            label = 'Drink Bar',
            coords = vector3(1594.19, 6456.03, 26.01), d = 0.6, w = 0.6,
            heading = 336,
            minZ = 26.01,
            maxZ = 27.11,
        },
    },
    ['CoffeeMaker'] = {
        {
            name = 'nazu_dinerjob_coffeemaker1',
            label = 'Coffee Maker',
            coords = vector3(1592.33, 6456.91, 26.01), d = 2.0, w = 0.6,
            heading = 64,
            minZ = 26.01,
            maxZ = 26.91,
        },
    },
    ['Refrige'] = {
        {
            name = 'nazu_dinerjob_refrige1',
            label = 'Refrige',
            coords = vector3(1586.03, 6459.63, 26.01), d = 1.7, w = 0.7,
            heading = 65,
            minZ = 23.01,
            maxZ = 26.10,
        },
    },
    ['Stash'] = {
        {
            name = 'nazu_dinerjob_stash1',
            label = 'Stash １',
            coords = vector3(1593.15, 6454.1, 26.01), d = 1.8, w = 0.4,
            heading = 65,
            minZ = 22.01,
            maxZ = 26.01,
        },
        {
            name = 'nazu_dinerjob_stash2',
            label = 'Stash ２',
            coords = vector3(1595.22, 6455.8, 26.01), d = 1.5, w = 0.3,
            heading = 64,
            minZ = 26.01,
            maxZ = 27.51,
        },
    },

}

Config.StashInfo = {
    ['Treys'] = {
        maxWeight = 500000,
        slots = 5,
    },
    ['Tables'] = {
        maxWeight = 500000,
        slots = 12,
    },
    ['Refrige'] = {
        maxWeight = 1000000,
        slots = 56,
    },
    ['Stash'] = {
        maxWeight = 1000000,
        slots = 56,
    },
}






---------------------
-- DO NOT TOUCH THIS
--------------
Config.BaseInv = 'inventory'