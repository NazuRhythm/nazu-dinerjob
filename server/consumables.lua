---- Events ----
for k,_ in pairs(Config.ConsumablesEat) do
    QBCore.Functions.CreateUseableItem(k, function(source, item)
        local xplayer = QBCore.Functions.GetPlayer(source)
        if not xplayer.Functions.RemoveItem(k, 1, item.slot) then return end
        TriggerClientEvent('nazu-dinerjob:client:Eating', source, item)
    end)
end
