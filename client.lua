AddEventHandler("onClientResourceStart", function(resName)
    if GetCurrentResourceName() ~= resName then return end
    SendNUIMessage({ eventName = "loadProgress", loadFraction = 0.0 })
end)

AddEventHandler("onResourceStart", function(resource)
    if resource == GetCurrentResourceName() then
        SendNUIMessage({ eventName = "loadProgress", loadFraction = 0.0 })
    end
end)

RegisterNetEvent("onClientResourceLoadProgress")
AddEventHandler("onClientResourceLoadProgress", function(resourceName, loadFraction)
    if resourceName == GetCurrentResourceName() then
        SendNUIMessage({ eventName = "loadProgress", loadFraction = loadFraction })
    end
end)

AddEventHandler("onClientMapStart", function()
    SetNuiFocus(false, false)
end)
