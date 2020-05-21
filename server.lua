RegisterServerEvent("txadminmenu.getIsAllowed")
AddEventHandler("txadminmenu.getIsAllowed", function(source)
    if IsPlayerAceAllowed(source, "txadmin.menu.perm") then
        TriggerClientEvent("txadminmenu.returnIsAllowed", source, true)
    else
        TriggerClientEvent("txadminmenu.returnIsAllowed", source, false)
    end
end)