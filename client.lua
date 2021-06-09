-- Credits to https://forum.cfx.re/t/release-vrp-hud-of-thirst-hunger-health-and-armor/176576

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(100)
        SendNUIMessage({
            show = IsPauseMenuActive(),
            armor = GetPedArmour(GetPlayerPed(-1)),
            health = (GetEntityHealth(GetPlayerPed(-1))-100)
       })
    end
end)
