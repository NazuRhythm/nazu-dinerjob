function Grilling(k, v)
    local HasMoney = false
    local HasItems = false
    
    HasMoney = lib.callback.await(resName..':server:PlayerHasMoney', 100, v.price)
    HasItems = lib.callback.await(resName..':server:PlayerHasItem', 100, v.recipes)

    if HasMoney then
        if HasItems then

            QBCore.Functions.Progressbar('nazu_Grilling', QBCore.Shared.Items[k].label .. 'を料理中...', 5 * 1000, false, true, {
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
                TriggerServerEvent(resName..':server:ChargePlayer',v.price, Config.ChargeType)
            end, function()
        
                
        
                Wait(600)
                ClearPedTasks(PlayerPedId())
            end)
        
        else
            triggerNotify('Diner', 'You dont have enough ' .. "item" .. '.', 'warning')
            return
        end
    else
        triggerNotify('Diner', 'You dont have enough ' .. Config.ChargeType .. '.', 'warning')
        return
    end

end

function Cutting(k, v)
    QBCore.Functions.Progressbar('nazu_Cutting', QBCore.Shared.Items[k].label .. 'を使用しています...', 5 * 1000, false, true, {
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
        TriggerServerEvent(resName..':server:ChargePlayer',v.price, Config.ChargeType)
        
    end, function()

        

        Wait(600)
        ClearPedTasks(PlayerPedId())

        

    end)
end

function TakeDrinks(k, v)
    QBCore.Functions.Progressbar('nazu_TakeDrinks', 'ドリンクバーで' .. QBCore.Shared.Items[k].label ..'を入れてます...', 5 * 1000, false, true, {
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
        TriggerServerEvent(resName..':server:ChargePlayer',v.price, Config.ChargeType)
    end, function()

        

        Wait(600)
        ClearPedTasks(PlayerPedId())
    end)
end

function MakeCoffee(k, v)
    QBCore.Functions.Progressbar('nazu_TakeDrinks', 'コーヒーメーカーで' .. QBCore.Shared.Items[k].label ..'を入れてます...', 5 * 1000, false, true, {
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
        TriggerServerEvent(resName..':server:ChargePlayer',v.price, Config.ChargeType)
    end, function()

        

        Wait(600)
        ClearPedTasks(PlayerPedId())
    end)
end