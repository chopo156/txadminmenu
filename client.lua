local allowedToUse = false
Citizen.CreateThread(function()
    TriggerServerEvent("txadminmenu.getIsAllowed")
end)

RegisterNetEvent("txadminmenu.returnIsAllowed")
AddEventHandler("txadminmenu.returnIsAllowed", function(isAllowed)
    allowedToUse = isAllowed
end)

-- In your resource, check "allowedToUse" whenever you want to "do" something that needs permissions, for example
if allowedToUse then
    -- do your cool code here
    RegisterCommand('admin', function(source)
        open()
    end)

    RegisterCommand('closeadmin', function(source)
        close()
    end)

    RegisterNUICallback("fecharadmin", function(data)
        close()
    end)

    
    function open()
        SetNuiFocus(true, true)
        SendNUIMessage({
            action = "openui",
            display = true,
            website = Config.site
        })
    end

    function close()
        SetNuiFocus(false, false)
        SendNUIMessage({
            type = 'openui',
            display = false,
        })
    end
end