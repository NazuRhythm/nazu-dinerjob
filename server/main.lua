RegisterNetEvent(resName..':server:ChargePlayer', function (cost, type, newsrc)
    local src = newsrc or source
    if type == "cash" then
        QBCore.Functions.GetPlayer(src).Functions.RemoveMoney("cash", cost, "Charge on Diner.")
    elseif type == "bank" then
        QBCore.Functions.GetPlayer(src).Functions.RemoveMoney("bank", cost, "Charge on Diner.")
    end
end)

RegisterNetEvent(resName..':server:GiveItem', function (item, cost, newsrc)
    local src = newsrc or source
    
end)

RegisterNetEvent(resName..':server:RemoveItem', function (item, cost, newsrc)
    local src = newsrc or source
    
end)