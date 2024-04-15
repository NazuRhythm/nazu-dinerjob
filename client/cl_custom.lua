function GetTheTitle(k, v)
    return  (Config.Display_Price and '【' .. Config.Display_Currency .. tostring(v.price) .. '】' or '') .. QBCore.Shared.Items[k].label .. ' ' .. (Config.Display_x1 and 'x' .. tostring(v.amount) or '')
end

function GetRecipe(data)
    local result = ""
    if data ~= nil then
        if data.recipes ~= nil then
            for k,v in pairs(data.recipes) do
                if result ~= "" then
                    result = result .. " " .. QBCore.Shared.Items[k].label .. ' ' ..  'x' .. tostring(v) .. '\n'
                else
                    result = QBCore.Shared.Items[k].label .. ' ' .. 'x' .. tostring(v) .. '\n'
                end
            end
        else
            result = "No Recipe"
        end
    end

    return result
end