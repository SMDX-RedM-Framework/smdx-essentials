local SMDXCore = exports['smdx-core']:GetSMDX()

-- Drink

SMDXCore.Functions.CreateUseableItem("water", function(source, item)
    local Player = SMDXCore.Functions.GetPlayer(source)
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)

SMDXCore.Functions.CreateUseableItem("whiskey", function(source, item)
    local Player = SMDXCore.Functions.GetPlayer(source)
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:DrinkWhiskey", source, item.name)
    end
end)

SMDXCore.Functions.CreateUseableItem("beer", function(source, item)
    local Player = SMDXCore.Functions.GetPlayer(source)
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:DrinkBeer", source, item.name)
    end
end)

SMDXCore.Functions.CreateUseableItem("coffee", function(source, item)
    local Player = SMDXCore.Functions.GetPlayer(source)
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", source, item.name)
    end
end)

-- EAT

SMDXCore.Functions.CreateUseableItem("sandwich", function(source, item)
    local Player = SMDXCore.Functions.GetPlayer(source)
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end)

SMDXCore.Functions.CreateUseableItem("bread", function(source, item)
    local Player = SMDXCore.Functions.GetPlayer(source)
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end)

SMDXCore.Functions.CreateUseableItem("apple", function(source, item)
    local Player = SMDXCore.Functions.GetPlayer(source)
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end)

SMDXCore.Functions.CreateUseableItem("chocolate", function(source, item)
    local Player = SMDXCore.Functions.GetPlayer(source)
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end)

SMDXCore.Functions.CreateUseableItem("stew", function(source, item)
    local Player = SMDXCore.Functions.GetPlayer(source)
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:EatStew", source, item.name)
    end
end)

SMDXCore.Functions.CreateUseableItem("cooked_meat", function(source, item)
    local Player = SMDXCore.Functions.GetPlayer(source)
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end)

SMDXCore.Functions.CreateUseableItem("cooked_fish", function(source, item)
    local Player = SMDXCore.Functions.GetPlayer(source)
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end)

-- OTHER

SMDXCore.Functions.CreateUseableItem("cigarette", function(source, item)
    local Player = SMDXCore.Functions.GetPlayer(source)
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Smoke", source, item.name)
    end
end)

SMDXCore.Functions.CreateUseableItem("cigar", function(source, item)
    local Player = SMDXCore.Functions.GetPlayer(source)
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Smoke", source, item.name)
    end
end)

SMDXCore.Functions.CreateUseableItem("binoculars", function(source, item)
    local Player = SMDXCore.Functions.GetPlayer(source)
    TriggerClientEvent("binoculars:Toggle", source)
end)

SMDXCore.Functions.CreateUseableItem("dual", function(source, item)
    local Player = SMDXCore.Functions.GetPlayer(source)
    TriggerClientEvent("qb:Dual", source)
end)

-- player field bandage
SMDXCore.Functions.CreateUseableItem("fieldbandage", function(source, item)
    local Player = SMDXCore.Functions.GetPlayer(source)
    TriggerClientEvent('consumables:client:UseFieldBandage', source)
end)

-- remove item
RegisterNetEvent('consumables:server:removeitem', function(item, amount)
    local src = source
    local Player = SMDXCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem(item, amount)
    TriggerClientEvent("inventory:client:ItemBox", src, SMDXCore.Shared.Items[item], "remove")
end)
