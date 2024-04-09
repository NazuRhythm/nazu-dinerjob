function TakeDrinks(k)
    QBCore.Functions.Progressbar('nazu_TakeDrinks', 'ドリンクバーで' .. k ..'を入れてます...', 5 * 1000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = 'amb@prop_human_bum_shopping_cart@male@idle_a',
        anim = 'idle_c',
        flags = 1,
    }, {}, {}, function()



        Wait(600)
        ClearPedTasks(PlayerPedId())
    end, function()

        

        Wait(600)
        ClearPedTasks(PlayerPedId())
    end)
end

function MakeCoffee(k)
    QBCore.Functions.Progressbar('nazu_TakeDrinks', 'コーヒーメーカーで' .. k ..'を入れてます...', 5 * 1000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = 'amb@prop_human_bum_shopping_cart@male@idle_a',
        anim = 'idle_c',
        flags = 1,
    }, {}, {}, function()



        Wait(600)
        ClearPedTasks(PlayerPedId())
    end, function()

        

        Wait(600)
        ClearPedTasks(PlayerPedId())
    end)
end