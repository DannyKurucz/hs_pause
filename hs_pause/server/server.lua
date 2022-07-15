
RegisterServerEvent("quit")
AddEventHandler("quit", function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)

	xPlayer.kick("Thanks for playing, see soon!", _source)
end)

