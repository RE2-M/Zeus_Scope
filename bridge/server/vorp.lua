if not lib.checkDependency('rsg-core', '2.0', true) then return end

local Core = exports.vorp_core:GetCore()

function RegisterUsableItems()
    for weaponType, weaponData in pairs(Config.Weapons) do
        for scopeType, scopeData in pairs(weaponData) do
            exports.vorp_inventory:registerUsableItem(scopeData.item, function(data)
                if Config.ScopeAttachToolRequire then
                    local scopeAttachItem = exports.vorp_inventory:getItemCount(data.source, nil, Config.ScopeAttachToolItem)
                    if scopeAttachItem > 0 then
                        TriggerClientEvent("Zeus_Scope:AddScope", data.source,scopeData)
                        if Config.RemoveScopeAttachToolAfterUse then
                            exports.vorp_inventory:subItem(data.source, Config.ScopeAttachToolItem, 1)
                        end
                    else
                        if Config.Notification.Enable then
                            sendNotification(data.source, Config.Notification.Warning, Config.Notification.NoAttachTool, "scoretimer_textures", "scoretimer_generic_cross", Config.Notification.NotificationTime, "COLOR_RED")
                        end
                    end
                else
                    TriggerClientEvent("Zeus_Scope:AddScope", data.source)
                end
                if Config.CloseInventory then
                    exports.vorp_inventory:closeInventory(data.source)
                end
            end)
        end
    end
    
end

function RegisterScopeWithAttachTool(){
    exports.vorp_inventory:registerUsableItem(Config.ScopeAttachToolItem, function(data)
        TriggerClientEvent("Zeus_Scope:RemoveScope", data.source)

        if Config.CloseInventory then
            exports.vorp_inventory:closeInventory(data.source)
        end
    end)
}

function addScopeItem(src,Item)
    if exports.vorp_inventory:canCarryItem(src, Item, 1) then
        exports.vorp_inventory:addItem(src, Item, 1)
    else
        if Config.Notification.Enable then
            sendNotification(src, Config.Notification.Warning, Config.Notification.NoSpace, "scoretimer_textures", "scoretimer_generic_cross", Config.Notification.NotificationTime, "COLOR_RED")
        end
    end
end

function removeScopeItem(src,Item){
    exports.vorp_inventory:subItem(src, Item, 1)
}


function sendNotification(src,title,message,texture,type,duration,color)
    Core.NotifyLeft(src, title, message, texture, type, duration, color)
end