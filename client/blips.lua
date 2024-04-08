Citizen.CreateThread(function()
    for k, v in pairs(Config.Blips) do
        local blip = AddBlipForCoord(v.coords)
        SetBlipAsShortRange(blip, true)
        SetBlipSprite(blip, v.sprite or 1)
        SetBlipColour(blip, v.color or 0)
        SetBlipScale(blip, v.scale or 0.7)
	    SetBlipDisplay(blip, (6))
        BeginTextCommandSetBlipName('STRING')
	    AddTextComponentString(tostring(k))
        EndTextCommandSetBlipName(blip)
    end
end)