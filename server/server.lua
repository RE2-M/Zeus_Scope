if Config.UseScopeItems then
    RegisterUsableItems()
end

if Config.RemoveScopeWithAttachTool then
    RegisterScopeWithAttachTool()
end

RegisterNetEvent("Zeus_Scope:AddScopeItem", function(Item)
    addScopeItem(source,Item)
end)

RegisterNetEvent("Zeus_Scope:RemoveScopeItem", function(Item)
    removeScopeItem(source,Item)
end)