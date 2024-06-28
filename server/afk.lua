local SMDXCore = exports['smdx-core']:GetSMDX()

RegisterNetEvent('KickForAFK', function()
    DropPlayer(source, 'You Have Been Kicked For Being AFK')
end)

SMDXCore.Functions.CreateCallback('smdx-afkkick:server:GetPermissions', function(source, cb)
    cb(SMDXCore.Functions.GetPermission(source))
end)