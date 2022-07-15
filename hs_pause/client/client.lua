
local display = false


Citizen.CreateThread(function()
	while true do
        Citizen.Wait(0)
        SetPauseMenuActive(false)
        if IsControlJustPressed(1, 200) or IsControlJustPressed(1, 199) then
            SetDisplay(not display)
            TriggerScreenblurFadeIn(1)
        end
        
    end
end)




RegisterNUICallback("resume", function()
    SetDisplay(false)
    TriggerScreenblurFadeOut(1000)
end)
RegisterNUICallback("map", function()
    SetDisplay(false)
    TriggerScreenblurFadeOut(1000)
    ActivateFrontendMenu(GetHashKey('FE_MENU_VERSION_MP_PAUSE'),0,-1)
    SetDisplay(false)

end)
RegisterNUICallback("settings", function()
    SetDisplay(false)
    TriggerScreenblurFadeOut(1000)
    ActivateFrontendMenu(GetHashKey('FE_MENU_VERSION_LANDING_MENU'),0,-1)
    SetDisplay(false)

end)

RegisterNUICallback("quit", function()
    SetDisplay(false)
    TriggerScreenblurFadeOut(1000)
    TriggerServerEvent("quit")
end)



function SetDisplay(bool)
    display = bool
    SetNuiFocus(bool, bool)
    SendNUIMessage({
        type = "ui",
        status = bool,
    })
end
  