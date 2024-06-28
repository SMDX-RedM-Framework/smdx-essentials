local SMDXCore = exports['smdx-core']:GetCoreObject()

SMDXCore.Commands.Add('bandana', 'Bandana on/off', {}, false, function(source)
    local src = source
    TriggerClientEvent('smdx-bandana:client:ToggleBandana', src)
end)