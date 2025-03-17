local playerPed = PlayerPedId()

local function AttachScopeComponent(weaponIndex,weaponHash,scopeHash) -- For admin command
	local ret, currentWeapon = GetCurrentPedWeapon(PlayerPedId(), true)

	if ret and currentWeapon == weaponIndex then
		GiveWeaponComponentToEntity(PlayerPedId(), scopeHash, weaponHash, true) -- Short Scope
    else
		if Config.Notification.Enable then
			sendNotification(Config.Notification.Successful, "There is no weapon to add scope component", "itemtype_textures", "itemtype_weapons", Config.Notification.NotificationTime, "COLOR_WHITE")
		end
		if Config.Debug then
        	print("There is no weapon to add scope component")
		end
	end
end

-- local function RemoveScopeComponent() -- For admin command
-- 	local ret, currentWeapon = GetCurrentPedWeapon(PlayerPedId(), true)

-- 	if ret and Config.Weapons[currentWeapon] then
-- 		local weapon = Config.Weapons[currentWeapon]
-- 		--RemoveWeaponComponentFromPed(PlayerPedId(), 85701152, 0xA84762EC) -- Stock Sight
-- 		--RemoveWeaponComponentFromPed(PlayerPedId(), 431616357, 0xA84762EC) -- Improved
-- 		RemoveWeaponComponentFromPed(PlayerPedId(), weapon., 0xA84762EC) -- Short Scope
--     else
-- 		if Config.Notification.Enable then
-- 			sendNotification(Config.Notification.Successful, "There is no weapon to remove scope component", "itemtype_textures", "itemtype_weapons", Config.Notification.NotificationTime, "COLOR_RED")
-- 		end
-- 		if Config.Debug then
--         	print("There is no weapon to remove scope component")
-- 		end
-- 	end
-- end

local function RemoveScope()
	local ret, currentWeapon = GetCurrentPedWeapon(PlayerPedId(), true)

	if ret and Config.Weapons[currentWeapon] then
		local weapon = Config.Weapons[currentWeapon]
		for scopeType, scopeData in pairs(weapon) do
			if Citizen.InvokeNative(0xBBC67A6F965C688A, PlayerPedId(), scopeData.scopeHash, scopeData.weaponHash) then
				RemoveWeaponComponentFromPed(PlayerPedId(), scopeData.scopeHash, scopeData.weaponHash) -- Short Scope
				TriggerServerEvent("Zeus_Scope:AddScopeItem", scopeData.item)
				if Config.Notification then
					sendNotification(Config.Notification.Successful, Config.Notification.ScopeRemoved, "inventory_items", "Weapon", Config.Notification.NotificationTime, "COLOR_WHITE")
				end
			end
		end
	end
end

local function Animation()
    if not HasAnimDictLoaded(Config.Anim.AnimDict) then
        RequestAnimDict(Config.Anim.AnimDict)
        while not HasAnimDictLoaded(Config.Anim.AnimDict) do
            Wait(10)
        end
    end

    TaskPlayAnim(PlayerPedId(), Config.Anim.AnimDict, Config.Anim.AnimName, 8.0, -8.0, Config.Anim.AnimDuration, 1, 0, false, false, false)
end

if Config.AdminCommand then
	RegisterCommand(Config.AdminAddScopeCommand, function()
		if LocalPlayer.state.Character.Group == Config.Group then
			AttachScopeComponent()
			if Config.Notification.Enable then
				sendNotification(Config.Notification.Successful, "Scope Component Attached", "itemtype_textures", "itemtype_weapons", Config.Notification.NotificationTime, "COLOR_WHITE")
			end
			if Config.Debug then
				print("Scope Component Attached")
			end
		else
			if Config.Notification.Enable then
				sendNotification(Config.Notification.Warning, "You dont have enough permissions to use this command", "scoretimer_textures", "scoretimer_generic_cross", Config.Notification.NotificationTime, "COLOR_RED")
			end
		end
	end, false)

	RegisterCommand(Config.AdminRemoveScopeCommand, function()
		if LocalPlayer.state.Character.Group == Config.Group then
			RemoveScopeComponent()
			if Config.Notification.Enable then
				sendNotification(Config.Notification.Successful, "Scope Component Removed", "itemtype_textures", "itemtype_weapons", Config.Notification.NotificationTime, "COLOR_WHITE")
			end
			if Config.Debug then
				print("Scope Component Removed")
			end
		else
			if Config.Notification.Enable then
				sendNotification(Config.Notification.Warning, "You dont have enough permissions to use this command", "scoretimer_textures", "scoretimer_generic_cross", Config.Notification.NotificationTime, "COLOR_RED")
			end
		end
	end, false)
end

if Config.RemoveScopeWithCommand then
	RegisterCommand(Config.RemoveScopeCommand, function()
		RemoveScope()
	end, false)
end

RegisterNetEvent("Zeus_Scope:AddScope")
AddEventHandler("Zeus_Scope:AddScope", function(scopeData)
	if Config.Animation then
		Animation()
		Wait(Config.Anim.AnimDuration)
		GiveWeaponComponentToEntity(PlayerPedId(), scopeData.scopeHash, scopeData.weaponHash, true)
	else
		GiveWeaponComponentToEntity(PlayerPedId(), scopeData.scopeHash, scopeData.weaponHash, true)
	end

	if Config.Notification then
		sendNotification(Config.Notification.Successful, Config.Notification.ScopeAttached, "inventory_items", "weapon_repeater_lancaster", Config.Notification.NotificationTime, "COLOR_WHITE")
	end

	TriggerServerEvent("Zeus_Scope:RemoveScopeItem", Config.ScopeItems.WEAPON_REPEATER_WINCHESTER_SHORT)
end)