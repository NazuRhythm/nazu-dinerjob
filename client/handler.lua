AddEventHandler('onResourceStop', function(resourceName)
    if (GetCurrentResourceName() ~= resourceName) then
      return
    end
    
    -- Destroy Zone
    for k, tables in pairs(Config.Diners) do for _, t in pairs(tables) do exports['qb-target']:RemoveZone(t.name) end end
end)