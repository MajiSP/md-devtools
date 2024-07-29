local isNUIopen = false

RegisterCommand('+openDevTools', function()
    if IsPlayerAdmin() then
        if not isNUIopen then
            SetNuiFocus(true, true)
            SendNUIMessage({
                openNUI = true,
                config = Config.categories
            })
            isNUIopen = true
        else
            SetNuiFocus(false, false)
            SendNUIMessage({
                closeNUI = true
            })
            isNUIopen = false
        end
    else
        print('You are not an admin!')
    end
end, false)

RegisterKeyMapping('+openDevTools', 'Open Dev Tools', 'keyboard', 'F5')

function IsPlayerAdmin()
    local playerId = PlayerId()
    local identifiers = {
        steam = GetPlayerName(playerId),
        license = GetPlayerName(playerId),
        discord = GetPlayerName(playerId)
    }
   
    TriggerServerEvent("checkAdmin", identifiers)
   
    local isAdmin = false
    RegisterNetEvent("adminStatus")
    AddEventHandler("adminStatus", function(status)
        isAdmin = status
    end)
   
    while isAdmin == false do
        Wait(0)
    end
   
    return isAdmin
end





-- examples of an NUI callback. MUST be the same name as action = in the config.lua file.
RegisterNUICallback('healPlayer', function(data, cb)

    cb({})
end)

RegisterNUICallback('armorPlayer', function(data, cb)

    cb({})
end)