display = false

RegisterCommand('admin', function(source, args, raw)
    open()
end)

RegisterCommand('closeadmin', function(source, args, raw)
    close()
end)

function open()
    SendNUIMessage({
        SetNuiFocus(true, true),
        type = 'ui',
        display = true
    })
end

function close()
    SendNUIMessage({
        SetNuiFocus(false, false),
        type = 'ui',
        display = false
    })
end
