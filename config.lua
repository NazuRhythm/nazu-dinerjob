Config = Config or {}
Locales = Locales or {}

Config.DebugMode = true

Config.Language = 'en'

Config.Inventory = 'qb'

Config.Jobs = { 
    DinerJob = {
        ['tow'] = 0,
        ['mechanic'] = 0,
    },
    -- PoliceJob = {
    --     ['police'] = 0,
    -- }
}

Config.Blips = {
    ['Diner`s Restaurant'] = {
        coords = vector3(1588.19, 6454.99, 26.01),
        sprite = 206,
        color = 0,
        scale = 0.6,
    },
}

Config.ImagePath = 'qb-inventory/html/images/'

Config.Foods = {

    -- Eat
    Eat = {
        [''] = math.random(25, 34),
    },

    -- Drink
    Drink = {
        ['wine'] = math.random(25, 34),
    }
}

Config.Diners = {
    ['Treys'] = {
        {
            name = 'nazu_dinerjob_trey1',
            coords = vector3(1593.61, 6453.82, 26.01), d = 0.4, w = 0.6,
            heading = 336,
            minZ = 26.01,
            maxZ = 26.46,
        },
        {
            name = 'nazu_dinerjob_trey2',
            coords = vector3(1590.37, 6455.29, 26.01), d = 0.4, w = 0.6,
            heading = 336,
            minZ = 26.01,
            maxZ = 26.41,
        },
        {
            name = 'nazu_dinerjob_trey3',
            coords = vector3(1586.68, 6457.07, 26.01), d = 0.4, w = 0.6,
            heading = 332,
            minZ = 26.01,
            maxZ = 26.46,
        },
        {
            name = 'nazu_dinerjob_trey4',
            coords = vector3(1584.79, 6458.46, 26.01), d = 0.4, w = 0.6,
            heading = 306,
            minZ = 26.01,
            maxZ = 26.41,
        },
    },
    ['Tables'] = {
        {
            name = 'nazu_dinerjob_table1',
            coords = vector3(1592.77, 6450.77, 26.01), d = 1.4, w = 0.8,
            heading = 336,
            minZ = 25.75,
            maxZ = 26.46,
        },
        {
            name = 'nazu_dinerjob_table2',
            coords = vector3(1590.98, 6451.58, 26.01), d = 1.4, w = 0.8,
            heading = 335,
            minZ = 25.75,
            maxZ = 26.41,
        },
        {
            name = 'nazu_dinerjob_table3',
            coords = vector3(1589.14, 6452.44, 26.01), d = 1.4, w = 0.8,
            heading = 335,
            minZ = 25.75,
            maxZ = 26.41,
        },
        {
            name = 'nazu_dinerjob_table4',
            coords = vector3(1587.34, 6453.29, 26.01), d = 1.4, w = 0.8,
            heading = 334,
            minZ = 25.75,
            maxZ = 26.41,
        },
        {
            name = 'nazu_dinerjob_table5',
            coords = vector3(1585.52, 6454.1, 26.01), d = 1.4, w = 0.8,
            heading = 336,
            minZ = 25.75,
            maxZ = 26.36,
        },
        {
            name = 'nazu_dinerjob_table6',
            coords = vector3(1583.71, 6454.98, 26.01), d = 1.4, w = 0.8,
            heading = 334,
            minZ = 25.75,
            maxZ = 26.46,
        },
        {
            name = 'nazu_dinerjob_table7',
            coords = vector3(1581.89, 6455.85, 26.01), d = 1.4, w = 0.8,
            heading = 334,
            minZ = 25.75,
            maxZ = 26.36,
        },
    },
    ['Grill'] = {
        {
            name = 'nazu_dinerjob_grill1',
            coords = vector3(1587.96, 6459.01, 26.01), d = 1.4, w = 0.6,
            heading = 65,
            minZ = 26.01,
            maxZ = 26.41,
        },
    },
    ['Drinks'] = {
        {
            name = 'nazu_dinerjob_drinks1',
            coords = vector3(1586.03, 6459.63, 26.01), d = 1.7, w = 0.7,
            heading = 65,
            minZ = 26.01,
            maxZ = 27.01,
        },
        {
            name = 'nazu_dinerjob_drinks2',
            coords = vector3(1594.19, 6456.03, 26.01), d = 0.6, w = 0.6,
            heading = 336,
            minZ = 26.01,
            maxZ = 27.11,
        },
    },
    ['CoffeeMaker'] = {
        {
            name = 'nazu_dinerjob_coffeemaker1',
            coords = vector3(1592.33, 6456.91, 26.01), d = 2.0, w = 0.6,
            heading = 64,
            minZ = 26.01,
            maxZ = 26.91,
        },
    },
    ['Refrige'] = {
        {
            name = 'nazu_dinerjob_refrige1',
            coords = vector3(1586.03, 6459.63, 26.01), d = 1.7, w = 0.7,
            heading = 65,
            minZ = 23.01,
            maxZ = 26.10,
        },
    },
    ['Stash'] = {
        {
            name = 'nazu_dinerjob_stash1',
            coords = vector3(1593.15, 6454.1, 26.01), d = 1.8, w = 0.4,
            heading = 65,
            minZ = 22.01,
            maxZ = 26.01,
        },
        {
            name = 'nazu_dinerjob_stash2',
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