lib.callback.register(resName..':server:PlayerHasMoney', function(source, cost, newsrc)
    local src = newsrc or source
    local hasMoney = 0
    local result = false
    
    if Config.ChargeType == "cash" then
        hasMoney = QBCore.Functions.GetPlayer(src).Functions.GetMoney("cash")
        
    elseif Config.ChargeType == "bank" then
        hasMoney = QBCore.Functions.GetPlayer(src).Functions.GetMoney("bank")
    end

    if hasMoney <= cost then
        result = false
    else
        result = true
    end

    return result
end)

lib.callback.register(resName..':server:PlayerHasItem', function(source, items)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local result = false
    local hasAmount = nil

    for item, needAmount in pairs(items) do
        -- print(item, amount)
        -- print("has " .. item, Player.Functions.GetItemByName(item).amount)
        hasAmount = Player.Functions.GetItemByName(item).amount
        if hasAmount ~= nil then
            print(hasAmount)
            if hasAmount <= needAmount then
                return false
            else
                result = true
            end
        end
        
        -- print(item, amount, result)
    end

    return true
end)