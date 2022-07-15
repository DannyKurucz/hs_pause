

RegisterServerEvent("quit")
AddEventHandler("quit", function()
    local source = source
    DropPlayer(source, "Thanks for playing, see soon!")
end)


