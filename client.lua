Citizen.CreateThread(function()
    while true do
        Citizen.Wait(100)
        TriggerServerEvent("getBasics")
        SendNUIMessage({
            show = IsPauseMenuActive(),
            armor = GetPedArmour(GetPlayerPed(-1)),
            health = (GetEntityHealth(GetPlayerPed(-1))-100)
       })
    end
end)