RegisterServerEvent("checkAdmin")
AddEventHandler("checkAdmin", function(identifiers)
    local src = source
    local isAdmin = false
    
    if IsPlayerAceAllowed(src, "command") then
        isAdmin = true
    else
        for _, identifier in pairs(identifiers) do
            if identifier and IsPlayerAceAllowed(identifier, "command") then
                isAdmin = true
                break
            end
        end
    end
    
    TriggerClientEvent("adminStatus", src, isAdmin)
end)