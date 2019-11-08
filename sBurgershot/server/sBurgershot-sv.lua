ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
RegisterServerEvent('Buy')
AddEventHandler('Buy', function(item)
    local _source = source
    local xPlayer  = ESX.GetPlayerFromId(source)
    if item ~= "Menu" then
        local price = Config.Price[item]
        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem(item, 1)
    else
        local price = Config.Price["Menu"]
        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('bigmac', 1)
        xPlayer.addInventoryItem('cola', 1)
        xPlayer.addInventoryItem('donut', 1)
    end
end)

