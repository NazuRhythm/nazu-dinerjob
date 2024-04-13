function Grilling(k, v)
    local HasMoney = false
    local HasItems = false
    
    HasMoney = lib.callback.await(resName..':server:PlayerHasMoney', 100, v.price)
    HasItems = lib.callback.await(resName..':server:PlayerHasItem', 100, v.recipes)

    if not HasMoney then triggerNotify(Loc.Notify.title, Loc.Notify.dont_have_enough_money, 'warning') return end
    if not HasItems then triggerNotify(Loc.Notify.title, Loc.Notify.dont_have_enough_item, 'warning') return end

    QBCore.Functions.Progressbar('nazu_Grilling', string.format(Loc.Progressbar.using_grille, QBCore.Shared.Items[k].label), 5 * 1000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = 'amb@prop_human_bum_shopping_cart@male@idle_a',
        anim = 'idle_c',
        flags = 1,
    }, {}, {}, function()
        
        Wait(915)
        ClearPedTasks(PlayerPedId())
        TriggerServerEvent(resName..':server:ChargePlayer', v.price, Config.ChargeType)
        TriggerServerEvent(resName..':server:RemoveItem', v.recipes)
        TriggerServerEvent(resName..':server:GiveItem', k, v.amount or 1)
    end, function()

        Wait(915)
        ClearPedTasks(PlayerPedId())
    end)

end

function Cutting(k, v)
    local HasMoney = false
    local HasItems = false
    
    HasMoney = lib.callback.await(resName..':server:PlayerHasMoney', 100, v.price)
    HasItems = lib.callback.await(resName..':server:PlayerHasItem', 100, v.recipes)

    if not HasMoney then triggerNotify(Loc.Notify.title, Loc.Notify.dont_have_enough_money, 'warning') return end
    if not HasItems then triggerNotify(Loc.Notify.title, Loc.Notify.dont_have_enough_item, 'warning') return end

    QBCore.Functions.Progressbar('nazu_Cutting', string.format(Loc.Progressbar.using_cutting, QBCore.Shared.Items[k].label), 5 * 1000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = 'amb@prop_human_bum_shopping_cart@male@idle_a',
        anim = 'idle_c',
        flags = 1,
    }, {}, {}, function()
        ClearPedTasks(PlayerPedId())

        Wait(915)
        TriggerServerEvent(resName..':server:ChargePlayer', v.price, Config.ChargeType)
        TriggerServerEvent(resName..':server:RemoveItem', v.recipes)
        TriggerServerEvent(resName..':server:GiveItem', k, v.amount or 1)
        
    end, function()

        Wait(915)
        ClearPedTasks(PlayerPedId())
    end)
end

function TakeDrinks(k, v)
    local HasMoney = false
    local HasItems = false
    
    HasMoney = lib.callback.await(resName..':server:PlayerHasMoney', 100, v.price)
    HasItems = lib.callback.await(resName..':server:PlayerHasItem', 100, v.recipes)

    if not HasMoney then triggerNotify(Loc.Notify.title, Loc.Notify.dont_have_enough_money, 'warning') return end
    if not HasItems then triggerNotify(Loc.Notify.title, Loc.Notify.dont_have_enough_item, 'warning') return end
    
    QBCore.Functions.Progressbar('nazu_TakeDrinks', string.format(Loc.Progressbar.using_drink_bar, QBCore.Shared.Items[k].label), 5 * 1000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = 'amb@prop_human_bum_shopping_cart@male@idle_a',
        anim = 'idle_c',
        flags = 1,
    }, {}, {}, function()
        ClearPedTasks(PlayerPedId())

        Wait(915)
        TriggerServerEvent(resName..':server:ChargePlayer', v.price, Config.ChargeType)
        TriggerServerEvent(resName..':server:RemoveItem', v.recipes)
        TriggerServerEvent(resName..':server:GiveItem', k, v.amount or 1)
    end, function()

        Wait(915)
        ClearPedTasks(PlayerPedId())
    end)
end

function MakeCoffee(k, v)
    QBCore.Functions.Progressbar('nazu_TakeDrinks', string.format(Loc.Progressbar.using_coffee_maker, QBCore.Shared.Items[k].label), 5 * 1000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = 'amb@prop_human_bum_shopping_cart@male@idle_a',
        anim = 'idle_c',
        flags = 1,
    }, {}, {}, function()
        ClearPedTasks(PlayerPedId())

        Wait(915)
        TriggerServerEvent(resName..':server:ChargePlayer', v.price, Config.ChargeType)
        TriggerServerEvent(resName..':server:RemoveItem', v.recipes)
        TriggerServerEvent(resName..':server:GiveItem', k, v.amount or 1)
    end, function()

        Wait(915)
        ClearPedTasks(PlayerPedId())
    end)
end