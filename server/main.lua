RegisterNetEvent(resName..':server:ChargePlayer', function (cost, type, newsrc)
    local src = newsrc or source
    if type == "cash" then
        QBCore.Functions.GetPlayer(src).Functions.RemoveMoney("cash", cost, "Charge on Diner.")
    elseif type == "bank" then
        QBCore.Functions.GetPlayer(src).Functions.RemoveMoney("bank", cost, "Charge on Diner.")
    end
end)

RegisterNetEvent(resName..':server:GiveItem', function (item, amount, newsrc)
    local src = source
    local xplayer = QBCore.Functions.GetPlayer(src)
    if xplayer then
        xplayer.Functions.AddItem(item, amount)
        TriggerClientEvent(Config.BaseInv..':client:ItemBox', src, QBCore.Shared.Items[item], "add", amount or 1)
    end
end)

RegisterNetEvent(resName..':server:RemoveItem', function (items, newsrc)
    local src = source
    local xplayer = QBCore.Functions.GetPlayer(src)
    if xplayer then
        for k, v in pairs(items) do
            xplayer.Functions.RemoveItem(k, v or 1)
            TriggerClientEvent(Config.BaseInv..':client:ItemBox', src, QBCore.Shared.Items[k], "remove", v or 1)
        end
    end
end)