if not lib.checkDependency('rsg-core', '2.0', true) then return end

local Core = exports.vorp_core:GetCore()


function sendNotification(title,message,texture,type,duration,color)
    Core.NotifyLeft(title, message, texture, type, duration, color)
end