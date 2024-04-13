function triggerNotify(title, message, type, src)
	if Config.Notify == "okok" then
		if not src then exports['okokNotify']:Alert(title, message, 6000, type, true)
		else TriggerClientEvent('okokNotify:Alert', src, title, message, 6000, type, true) end
	elseif Config.Notify == "qb" then
		if not src then	TriggerEvent("QBCore:Notify", message, type)
		else TriggerClientEvent("QBCore:Notify", src, message, type) end
	elseif Config.Notify == "ox" then
		if not src then exports.ox_lib:notify({title = title, description = message, type = type or "success"})
		else TriggerClientEvent('ox_lib:notify', src, { type = type or "success", title = title, description = message }) end
	elseif Config.Notify == "custom" then
		-- your custom notify here.
	end
end