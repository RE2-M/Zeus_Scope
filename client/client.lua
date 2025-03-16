if Config.Version ~= "VORP" then return end

local Core = exports.vorp_core:GetCore()
local playerPed = PlayerPedId()

local function AttachScopeComponent() -- For admin command
	local playerPed = PlayerPedId()
	local ret, currentWeapon = GetCurrentPedWeapon(playerPed, true)

	if ret and currentWeapon == `WEAPON_REPEATER_WINCHESTER` then
		--GiveWeaponComponentToEntity(playerPed, 85701152, 0xA84762EC, true) -- Stock Sight
		--GiveWeaponComponentToEntity(playerPed, 431616357, 0xA84762EC, true) -- Improved
		GiveWeaponComponentToEntity(playerPed, -404520310, 0xA84762EC, true) -- Short Scope
	elseif ret and currentWeapon == `WEAPON_REPEATER_HENRY` then
		--GiveWeaponComponentToEntity(playerPed, 1052491799, 0x95B24592, true) -- Stock Sight
		--GiveWeaponComponentToEntity(playerPed, -1165022028, 0x95B24592, true) -- Improved Sight
		GiveWeaponComponentToEntity(playerPed, -404520310, 0x95B24592, true) -- Short Scope
	elseif ret and currentWeapon == `WEAPON_REPEATER_EVANS` then
		--GiveWeaponComponentToEntity(playerPed, 1258698427, 0x7194721E, true) -- Stock Sight
		--GiveWeaponComponentToEntity(playerPed, -1098615404, 0x7194721E, true) -- Improved Sight
		GiveWeaponComponentToEntity(playerPed, -404520310, 0x7194721E, true) -- Short Scope
	elseif ret and currentWeapon == `WEAPON_REPEATER_CARBINE` then
		--GiveWeaponComponentToEntity(playerPed, 1258698427, 0xF5175BA1, true) -- Stock Sight
		--GiveWeaponComponentToEntity(playerPed, -1098615404, 0xF5175BA1, true) -- Improved Sight
		GiveWeaponComponentToEntity(playerPed, -404520310, 0xF5175BA1, true) -- Short Scope
	elseif ret and currentWeapon == `WEAPON_RIFLE_VARMINT` then
		--GiveWeaponComponentToEntity(playerPed, -404520310, 0xDDF7BC1E, true) -- Short Scope
		GiveWeaponComponentToEntity(playerPed, -1844750633, 0xDDF7BC1E, true) -- Medium Scope
	elseif ret and currentWeapon == `WEAPON_RIFLE_BOLTACTION` then
		--GiveWeaponComponentToEntity(playerPed, 1311478812, 0x772C8DD6, true) -- Improved Sight
		GiveWeaponComponentToEntity(playerPed, -404520310, 0x772C8DD6, true) -- Short Scope
		--GiveWeaponComponentToEntity(playerPed, -1844750633, 0x772C8DD6, true) -- Medium Scope
		--GiveWeaponComponentToEntity(playerPed, -1545766277, 0x772C8DD6, true) -- Long Scope -- Doesn't work
	elseif ret and currentWeapon == `WEAPON_RIFLE_SPRINGFIELD` then
		--GiveWeaponComponentToEntity(playerPed, 893095238, 0x63F46DE6, true) -- Stock Sight
		--GiveWeaponComponentToEntity(playerPed, -1747228523, 0x63F46DE6, true) -- Improved Sight
		GiveWeaponComponentToEntity(playerPed, -404520310, 0x63F46DE6, true) -- Short Scope
		--GiveWeaponComponentToEntity(playerPed, -1844750633, 0x63F46DE6, true) -- Medium Scope
		--GiveWeaponComponentToEntity(playerPed, -1545766277, 0x63F46DE6, true) -- Long Scope -- Doesn't work
	elseif ret and currentWeapon == `WEAPON_SNIPERRIFLE_ROLLINGBLOCK` then
		--GiveWeaponComponentToEntity(playerPed, -555346213, 0xE1D2B317, true) -- Improved Sight
		--GiveWeaponComponentToEntity(playerPed, -404520310, 0xE1D2B317, true) -- Short Scope
		GiveWeaponComponentToEntity(playerPed, -1844750633, 0xE1D2B317, true) -- Medium Scope
		--GiveWeaponComponentToEntity(playerPed, -1545766277, 0xE1D2B317, true) -- Long Scope
	elseif ret and currentWeapon == `WEAPON_SNIPERRIFLE_CARCANO` then
		--GiveWeaponComponentToEntity(playerPed, -1301050378, 0x53944780, true) -- Stock Sight
		--GiveWeaponComponentToEntity(playerPed, -298805818, 0x53944780, true) -- Improved Sight
		--GiveWeaponComponentToEntity(playerPed, -404520310, 0x53944780, true) -- Short Scope
		--GiveWeaponComponentToEntity(playerPed, -1844750633, 0x53944780, true) -- Medium Scope
		GiveWeaponComponentToEntity(playerPed, -1545766277, 0x53944780, true) -- Long Scope
    else
		if Config.Notification.Enable then
			Core.NotifyLeft(Config.Notification.Successful, "There is no weapon to add scope component", "itemtype_textures", "itemtype_weapons", Config.Notification.NotificationTime, "COLOR_WHITE")
		end
		if Config.Debug then
        	print("There is no weapon to add scope component")
		end
	end
end

local function RemoveScopeComponent() -- For admin command
	local playerPed = PlayerPedId()
	local ret, currentWeapon = GetCurrentPedWeapon(playerPed, true)

	if ret and currentWeapon == `WEAPON_REPEATER_WINCHESTER` then
		--RemoveWeaponComponentFromPed(playerPed, 85701152, 0xA84762EC) -- Stock Sight
		--RemoveWeaponComponentFromPed(playerPed, 431616357, 0xA84762EC) -- Improved
		RemoveWeaponComponentFromPed(playerPed, -404520310, 0xA84762EC) -- Short Scope
	elseif ret and currentWeapon == `WEAPON_REPEATER_HENRY` then
		--RemoveWeaponComponentFromPed(playerPed, 1052491799, 0x95B24592) -- Stock Sight
		--RemoveWeaponComponentFromPed(playerPed, -1165022028, 0x95B24592) -- Improved Sight
		RemoveWeaponComponentFromPed(playerPed, -404520310, 0x95B24592) -- Short Scope
	elseif ret and currentWeapon == `WEAPON_REPEATER_EVANS` then
		--RemoveWeaponComponentFromPed(playerPed, 1258698427, 0x7194721E) -- Stock Sight
		--RemoveWeaponComponentFromPed(playerPed, -1098615404, 0x7194721E) -- Improved Sight
		RemoveWeaponComponentFromPed(playerPed, -404520310, 0x7194721E) -- Short Scope
	elseif ret and currentWeapon == `WEAPON_REPEATER_CARBINE` then
		--RemoveWeaponComponentFromPed(playerPed, 1258698427, 0xF5175BA1) -- Stock Sight
		--RemoveWeaponComponentFromPed(playerPed, -1098615404, 0xF5175BA1) -- Improved Sight
		RemoveWeaponComponentFromPed(playerPed, -404520310, 0xF5175BA1) -- Short Scope
	elseif ret and currentWeapon == `WEAPON_RIFLE_VARMINT` then
		--RemoveWeaponComponentFromPed(playerPed, -404520310, 0xDDF7BC1E) -- Short Scope
		RemoveWeaponComponentFromPed(playerPed, -1844750633, 0xDDF7BC1E) -- Medium Scope
	elseif ret and currentWeapon == `WEAPON_RIFLE_BOLTACTION` then
		--RemoveWeaponComponentFromPed(playerPed, 1311478812, 0x772C8DD6) -- Improved Sight
		RemoveWeaponComponentFromPed(playerPed, -404520310, 0x772C8DD6) -- Short Scope
		--RemoveWeaponComponentFromPed(playerPed, -1844750633, 0x772C8DD6) -- Medium Scope
		--RemoveWeaponComponentFromPed(playerPed, -1545766277, 0x772C8DD6) -- Long Scope -- Doesn't work
	elseif ret and currentWeapon == `WEAPON_RIFLE_SPRINGFIELD` then
		--RemoveWeaponComponentFromPed(playerPed, 893095238, 0x63F46DE6) -- Stock Sight
		--RemoveWeaponComponentFromPed(playerPed, -1747228523, 0x63F46DE6) -- Improved Sight
		RemoveWeaponComponentFromPed(playerPed, -404520310, 0x63F46DE6) -- Short Scope
		--RemoveWeaponComponentFromPed(playerPed, -1844750633, 0x63F46DE6) -- Medium Scope
		--RemoveWeaponComponentFromPed(playerPed, -1545766277, 0x63F46DE6) -- Long Scope -- Doesn't work
	elseif ret and currentWeapon == `WEAPON_SNIPERRIFLE_ROLLINGBLOCK` then
		--RemoveWeaponComponentFromPed(playerPed, -555346213, 0xE1D2B317) -- Improved Sight
		--RemoveWeaponComponentFromPed(playerPed, -404520310, 0xE1D2B317) -- Short Scope
		RemoveWeaponComponentFromPed(playerPed, -1844750633, 0xE1D2B317) -- Medium Scope
		--RemoveWeaponComponentFromPed(playerPed, -1545766277, 0xE1D2B317) -- Long Scope
	elseif ret and currentWeapon == `WEAPON_SNIPERRIFLE_CARCANO` then
		--RemoveWeaponComponentFromPed(playerPed, -1301050378, 0x53944780) -- Stock Sight
		--RemoveWeaponComponentFromPed(playerPed, -298805818, 0x53944780) -- Improved Sight
		--RemoveWeaponComponentFromPed(playerPed, -404520310, 0x53944780) -- Short Scope
		--RemoveWeaponComponentFromPed(playerPed, -1844750633, 0x53944780) -- Medium Scope
		RemoveWeaponComponentFromPed(playerPed, -1545766277, 0x53944780) -- Long Scope
    else
		if Config.Notification.Enable then
			Core.NotifyLeft(Config.Notification.Successful, "There is no weapon to remove scope component", "itemtype_textures", "itemtype_weapons", Config.Notification.NotificationTime, "COLOR_RED")
		end
		if Config.Debug then
        	print("There is no weapon to remove scope component")
		end
	end
end

local function RemoveScope()
	local playerPed = PlayerPedId()
	local ret, currentWeapon = GetCurrentPedWeapon(playerPed, true)

	if ret and currentWeapon == `WEAPON_REPEATER_WINCHESTER` then
		if Citizen.InvokeNative(0xBBC67A6F965C688A, PlayerPedId(), -404520310, 0xA84762EC) then
			RemoveWeaponComponentFromPed(playerPed, -404520310, 0xA84762EC) -- Short Scope
			TriggerServerEvent("Zeus_Scope:AddScopeItem", Config.ScopeItems.WEAPON_REPEATER_WINCHESTER_SHORT)
			if Config.Notification then
				Core.NotifyLeft(Config.Notification.Successful, Config.Notification.ScopeRemoved, "inventory_items", "weapon_repeater_lancaster", Config.Notification.NotificationTime, "COLOR_WHITE")
			end
		end
	elseif ret and currentWeapon == `WEAPON_REPEATER_HENRY` then
		if Citizen.InvokeNative(0xBBC67A6F965C688A, PlayerPedId(), -404520310, 0x95B24592) then
			RemoveWeaponComponentFromPed(playerPed, -404520310, 0x95B24592) -- Short Scope
			TriggerServerEvent("Zeus_Scope:AddScopeItem", Config.ScopeItems.WEAPON_REPEATER_HENRY_SHORT)
			if Config.Notification then
				Core.NotifyLeft(Config.Notification.Successful, Config.Notification.ScopeRemoved, "inventory_items", "weapon_repeater_henry", Config.Notification.NotificationTime, "COLOR_WHITE")
			end
		end
	elseif ret and currentWeapon == `WEAPON_REPEATER_EVANS` then
		if Citizen.InvokeNative(0xBBC67A6F965C688A, PlayerPedId(), -404520310, 0x7194721E) then
			RemoveWeaponComponentFromPed(playerPed, -404520310, 0x7194721E) -- Short Scope
			TriggerServerEvent("Zeus_Scope:AddScopeItem", Config.ScopeItems.WEAPON_REPEATER_EVANS_SHORT)
			if Config.Notification then
				Core.NotifyLeft(Config.Notification.Successful, Config.Notification.ScopeRemoved, "inventory_items", "weapon_repeater_henry", Config.Notification.NotificationTime, "COLOR_WHITE") -- There is no texture for Repeater Evans
			end
		end
	elseif ret and currentWeapon == `WEAPON_REPEATER_CARBINE` then
		if Citizen.InvokeNative(0xBBC67A6F965C688A, PlayerPedId(), -404520310, 0xF5175BA1) then
			RemoveWeaponComponentFromPed(playerPed, -404520310, 0xF5175BA1) -- Short Scope
			TriggerServerEvent("Zeus_Scope:AddScopeItem", Config.ScopeItems.WEAPON_REPEATER_CARBINE_SHORT)
			if Config.Notification then
				Core.NotifyLeft(Config.Notification.Successful, Config.Notification.ScopeRemoved, "inventory_items", "weapon_repeater_carbine", Config.Notification.NotificationTime, "COLOR_WHITE")
			end
		end
	elseif ret and currentWeapon == `WEAPON_RIFLE_VARMINT` then
		if Citizen.InvokeNative(0xBBC67A6F965C688A, PlayerPedId(), -404520310, 0xDDF7BC1E) then
			RemoveWeaponComponentFromPed(playerPed, -404520310, 0xDDF7BC1E) -- Short Scope
			TriggerServerEvent("Zeus_Scope:AddScopeItem", Config.ScopeItems.WEAPON_RIFLE_VARMINT_SHORT)
			if Config.Notification then
				Core.NotifyLeft(Config.Notification.Successful, Config.Notification.ScopeRemoved, "inventory_items", "weapon_rifle_varmint", Config.Notification.NotificationTime, "COLOR_WHITE")
			end
		elseif Citizen.InvokeNative(0xBBC67A6F965C688A, PlayerPedId(), -1844750633, 0xDDF7BC1E) then
			RemoveWeaponComponentFromPed(playerPed, -1844750633, 0xDDF7BC1E) -- Medium Scope
			TriggerServerEvent("Zeus_Scope:AddScopeItem", Config.ScopeItems.WEAPON_RIFLE_VARMINT_MEDIUM)
			if Config.Notification then
				Core.NotifyLeft(Config.Notification.Successful, Config.Notification.ScopeRemoved, "inventory_items", "weapon_rifle_varmint", Config.Notification.NotificationTime, "COLOR_WHITE")
			end
		end
	elseif ret and currentWeapon == `WEAPON_RIFLE_BOLTACTION` then
		if Citizen.InvokeNative(0xBBC67A6F965C688A, PlayerPedId(), -404520310, 0x772C8DD6) then
			RemoveWeaponComponentFromPed(playerPed, -404520310, 0x772C8DD6) -- Short Scope
			TriggerServerEvent("Zeus_Scope:AddScopeItem", Config.ScopeItems.WEAPON_RIFLE_BOLTACTION_SHORT)
			if Config.Notification then
				Core.NotifyLeft(Config.Notification.Successful, Config.Notification.ScopeRemoved, "inventory_items", "weapon_rifle_boltaction", Config.Notification.NotificationTime, "COLOR_WHITE")
			end
		elseif Citizen.InvokeNative(0xBBC67A6F965C688A, PlayerPedId(), -1844750633, 0x772C8DD6) then
			RemoveWeaponComponentFromPed(playerPed, -1844750633, 0x772C8DD6) -- Medium Scope
			TriggerServerEvent("Zeus_Scope:AddScopeItem", Config.ScopeItems.WEAPON_RIFLE_BOLTACTION_MEDIM)
			if Config.Notification then
				Core.NotifyLeft(Config.Notification.Successful, Config.Notification.ScopeRemoved, "inventory_items", "weapon_rifle_boltaction", Config.Notification.NotificationTime, "COLOR_WHITE")
			end
		end
		--RemoveWeaponComponentFromPed(playerPed, -1545766277, 0x772C8DD6) -- Long Scope -- Doesn't work
	elseif ret and currentWeapon == `WEAPON_RIFLE_SPRINGFIELD` then
		if Citizen.InvokeNative(0xBBC67A6F965C688A, PlayerPedId(), -404520310, 0x63F46DE6) then
			RemoveWeaponComponentFromPed(playerPed, -404520310, 0x63F46DE6) -- Short Scope
			TriggerServerEvent("Zeus_Scope:AddScopeItem", Config.ScopeItems.WEAPON_RIFLE_SPRINGFIELD_SHORT)
			if Config.Notification then
				Core.NotifyLeft(Config.Notification.Successful, Config.Notification.ScopeRemoved, "inventory_items", "weapon_rifle_springfield", Config.Notification.NotificationTime, "COLOR_WHITE")
			end
		elseif Citizen.InvokeNative(0xBBC67A6F965C688A, PlayerPedId(), -1844750633, 0x63F46DE6) then
			RemoveWeaponComponentFromPed(playerPed, -1844750633, 0x63F46DE6) -- Medium Scope
			TriggerServerEvent("Zeus_Scope:AddScopeItem", Config.ScopeItems.WEAPON_RIFLE_SPRINGFIELD_MEDIUM)
			if Config.Notification then
				Core.NotifyLeft(Config.Notification.Successful, Config.Notification.ScopeRemoved, "inventory_items", "weapon_rifle_springfield", Config.Notification.NotificationTime, "COLOR_WHITE")
			end
		end
		--RemoveWeaponComponentFromPed(playerPed, -1545766277, 0x63F46DE6) -- Long Scope -- Doesn't work
	elseif ret and currentWeapon == `WEAPON_SNIPERRIFLE_ROLLINGBLOCK` then
		if Citizen.InvokeNative(0xBBC67A6F965C688A, PlayerPedId(), -404520310, 0xE1D2B317) then
			RemoveWeaponComponentFromPed(playerPed, -404520310, 0xE1D2B317) -- Short Scope
			TriggerServerEvent("Zeus_Scope:AddScopeItem", Config.ScopeItems.WEAPON_SNIPERRIFLE_ROLLINGBLOCK_SHORT)
			if Config.Notification then
				Core.NotifyLeft(Config.Notification.Successful, Config.Notification.ScopeRemoved, "inventory_items", "weapon_sniperrifle_rollingblock", Config.Notification.NotificationTime, "COLOR_WHITE")
			end
		elseif Citizen.InvokeNative(0xBBC67A6F965C688A, PlayerPedId(), -1844750633, 0xE1D2B317) then
			RemoveWeaponComponentFromPed(playerPed, -1844750633, 0xE1D2B317) -- Medium Scope
			TriggerServerEvent("Zeus_Scope:AddScopeItem", Config.ScopeItems.WEAPON_SNIPERRIFLE_ROLLINGBLOCK_MEDIUM)
			if Config.Notification then
				Core.NotifyLeft(Config.Notification.Successful, Config.Notification.ScopeRemoved, "inventory_items", "weapon_sniperrifle_rollingblock", Config.Notification.NotificationTime, "COLOR_WHITE")
			end
		elseif Citizen.InvokeNative(0xBBC67A6F965C688A, PlayerPedId(), -1545766277, 0xE1D2B317) then
			RemoveWeaponComponentFromPed(playerPed, -1545766277, 0xE1D2B317) -- Long Scope
			TriggerServerEvent("Zeus_Scope:AddScopeItem", Config.ScopeItems.WEAPON_SNIPERRIFLE_ROLLINGBLOCK_LONG)
			if Config.Notification then
				Core.NotifyLeft(Config.Notification.Successful, Config.Notification.ScopeRemoved, "inventory_items", "weapon_sniperrifle_rollingblock", Config.Notification.NotificationTime, "COLOR_WHITE")
			end
		end
	elseif ret and currentWeapon == `WEAPON_SNIPERRIFLE_CARCANO` then
		if Citizen.InvokeNative(0xBBC67A6F965C688A, PlayerPedId(), -404520310, 0x53944780) then
			RemoveWeaponComponentFromPed(playerPed, -404520310, 0x53944780) -- Short Scope
			TriggerServerEvent("Zeus_Scope:AddScopeItem", Config.ScopeItems.WEAPON_SNIPERRIFLE_CARCANO_SHORT)
			if Config.Notification then
				Core.NotifyLeft(Config.Notification.Successful, Config.Notification.ScopeRemoved, "inventory_items", "weapon_sniperrifle_carcano", Config.Notification.NotificationTime, "COLOR_WHITE")
			end
		elseif Citizen.InvokeNative(0xBBC67A6F965C688A, PlayerPedId(), -1844750633, 0x53944780) then
			RemoveWeaponComponentFromPed(playerPed, -1844750633, 0x53944780) -- Medium Scope
			TriggerServerEvent("Zeus_Scope:AddScopeItem", Config.ScopeItems.WEAPON_SNIPERRIFLE_CARCANO_MEDIUM)
			if Config.Notification then
				Core.NotifyLeft(Config.Notification.Successful, Config.Notification.ScopeRemoved, "inventory_items", "weapon_sniperrifle_carcano", Config.Notification.NotificationTime, "COLOR_WHITE")
			end
		elseif Citizen.InvokeNative(0xBBC67A6F965C688A, PlayerPedId(), -1545766277, 0x53944780) then
			RemoveWeaponComponentFromPed(playerPed, -1545766277, 0x53944780) -- Long Scope
			TriggerServerEvent("Zeus_Scope:AddScopeItem", Config.ScopeItems.WEAPON_SNIPERRIFLE_CARCANO_LONG)
			if Config.Notification then
				Core.NotifyLeft(Config.Notification.Successful, Config.Notification.ScopeRemoved, "inventory_items", "weapon_sniperrifle_carcano", Config.Notification.NotificationTime, "COLOR_WHITE")
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
				Core.NotifyLeft(Config.Notification.Successful, "Scope Component Attached", "itemtype_textures", "itemtype_weapons", Config.Notification.NotificationTime, "COLOR_WHITE")
			end
			if Config.Debug then
				print("Scope Component Attached")
			end
		else
			if Config.Notification.Enable then
				Core.NotifyLeft(Config.Notification.Warning, "You dont have enough permissions to use this command", "scoretimer_textures", "scoretimer_generic_cross", Config.Notification.NotificationTime, "COLOR_RED")
			end
		end
	end, false)

	RegisterCommand(Config.AdminRemoveScopeCommand, function()
		if LocalPlayer.state.Character.Group == Config.Group then
			RemoveScopeComponent()
			if Config.Notification.Enable then
				Core.NotifyLeft(Config.Notification.Successful, "Scope Component Removed", "itemtype_textures", "itemtype_weapons", Config.Notification.NotificationTime, "COLOR_WHITE")
			end
			if Config.Debug then
				print("Scope Component Removed")
			end
		else
			if Config.Notification.Enable then
				Core.NotifyLeft(Config.Notification.Warning, "You dont have enough permissions to use this command", "scoretimer_textures", "scoretimer_generic_cross", Config.Notification.NotificationTime, "COLOR_RED")
			end
		end
	end, false)
end

if Config.RemoveScopeWithCommand then
	RegisterCommand(Config.RemoveScopeCommand, function()
		RemoveScope()
	end, false)
end

RegisterNetEvent("Zeus_Scope:AddScopeRepeaterWinchesterShort")
AddEventHandler("Zeus_Scope:AddScopeRepeaterWinchesterShort", function()
	if Config.Animation then
		Animation()
		Wait(Config.Anim.AnimDuration)
		GiveWeaponComponentToEntity(playerPed, -404520310, 0xA84762EC, true)
	else
		GiveWeaponComponentToEntity(playerPed, -404520310, 0xA84762EC, true) -- WEAPON_REPEATER_WINCHESTER [Short Scope]
	end

	if Config.Notification then
		Core.NotifyLeft(Config.Notification.Successful, Config.Notification.ScopeAttached, "inventory_items", "weapon_repeater_lancaster", Config.Notification.NotificationTime, "COLOR_WHITE")
	end

	TriggerServerEvent("Zeus_Scope:RemoveScopeItem", Config.ScopeItems.WEAPON_REPEATER_WINCHESTER_SHORT)
end)

RegisterNetEvent("Zeus_Scope:AddScopeRepeaterHenryShort")
AddEventHandler("Zeus_Scope:AddScopeRepeaterHenryShort", function()
	if Config.Animation then
		Animation()
		Wait(Config.Anim.AnimDuration)
		GiveWeaponComponentToEntity(playerPed, -404520310, 0x95B24592, true)
	else
		GiveWeaponComponentToEntity(playerPed, -404520310, 0x95B24592, true) -- WEAPON_REPEATER_HENRY [Short Scope]
	end

	if Config.Notification then
		Core.NotifyLeft(Config.Notification.Successful, Config.Notification.ScopeAttached, "inventory_items", "weapon_repeater_henry", Config.Notification.NotificationTime, "COLOR_WHITE")
	end

	TriggerServerEvent("Zeus_Scope:RemoveScopeItem", Config.ScopeItems.WEAPON_REPEATER_HENRY_SHORT)
end)

RegisterNetEvent("Zeus_Scope:AddScopeRepeaterEvansShort")
AddEventHandler("Zeus_Scope:AddScopeRepeaterEvansShort", function()
	if Config.Animation then
		Animation()
		Wait(Config.Anim.AnimDuration)
		GiveWeaponComponentToEntity(playerPed, -404520310, 0x7194721E, true)
	else
		GiveWeaponComponentToEntity(playerPed, -404520310, 0x7194721E, true) -- WEAPON_REPEATER_EVANS [Short Scope]
	end

	if Config.Notification then
		Core.NotifyLeft(Config.Notification.Successful, Config.Notification.ScopeAttached, "inventory_items", "weapon_repeater_lancaster", Config.Notification.NotificationTime, "COLOR_WHITE") -- There is no texture for Repeater Evans
	end

	TriggerServerEvent("Zeus_Scope:RemoveScopeItem", Config.ScopeItems.WEAPON_REPEATER_EVANS_SHORT)
end)

RegisterNetEvent("Zeus_Scope:AddScopeRepeaterCarbineShort")
AddEventHandler("Zeus_Scope:AddScopeRepeaterCarbineShort", function()
	if Config.Animation then
		Animation()
		Wait(Config.Anim.AnimDuration)
		GiveWeaponComponentToEntity(playerPed, -404520310, 0xF5175BA1, true)
	else
		GiveWeaponComponentToEntity(playerPed, -404520310, 0xF5175BA1, true) -- WEAPON_REPEATER_CARBINE [Short Scope]
	end

	if Config.Notification then
		Core.NotifyLeft(Config.Notification.Successful, Config.Notification.ScopeAttached, "inventory_items", "weapon_repeater_carbine", Config.Notification.NotificationTime, "COLOR_WHITE") -- There is no texture for Repeater Evans
	end

	TriggerServerEvent("Zeus_Scope:RemoveScopeItem", Config.ScopeItems.WEAPON_REPEATER_CARBINE_SHORT)
end)

RegisterNetEvent("Zeus_Scope:AddScopeRifleVarmintShort")
AddEventHandler("Zeus_Scope:AddScopeRifleVarmintShort", function()
	if Config.Animation then
		Animation()
		Wait(Config.Anim.AnimDuration)
		GiveWeaponComponentToEntity(playerPed, -404520310, 0xDDF7BC1E, true)
	else
		GiveWeaponComponentToEntity(playerPed, -404520310, 0xDDF7BC1E, true) -- WEAPON_RIFLE_VARMINT [Short Scope]
	end

	if Config.Notification then
		Core.NotifyLeft(Config.Notification.Successful, Config.Notification.ScopeAttached, "inventory_items", "weapon_rifle_varmint", Config.Notification.NotificationTime, "COLOR_WHITE")
	end

	TriggerServerEvent("Zeus_Scope:RemoveScopeItem", Config.ScopeItems.WEAPON_RIFLE_VARMINT_SHORT)
end)

RegisterNetEvent("Zeus_Scope:AddScopeRifleVarmintMedium")
AddEventHandler("Zeus_Scope:AddScopeRifleVarmintMedium", function()
	if Config.Animation then
		Animation()
		Wait(Config.Anim.AnimDuration)
		GiveWeaponComponentToEntity(playerPed, -1844750633, 0xDDF7BC1E, true)
	else
		GiveWeaponComponentToEntity(playerPed, -1844750633, 0xDDF7BC1E, true) -- WEAPON_RIFLE_VARMINT [Medium Scope]
	end

	if Config.Notification then
		Core.NotifyLeft(Config.Notification.Successful, Config.Notification.ScopeAttached, "inventory_items", "weapon_rifle_varmint", Config.Notification.NotificationTime, "COLOR_WHITE")
	end

	TriggerServerEvent("Zeus_Scope:RemoveScopeItem", Config.ScopeItems.WEAPON_RIFLE_VARMINT_MEDIUM)
end)

RegisterNetEvent("Zeus_Scope:AddScopeRifleBoltactionShort")
AddEventHandler("Zeus_Scope:AddScopeRifleBoltactionShort", function()
	if Config.Animation then
		Animation()
		Wait(Config.Anim.AnimDuration)
		GiveWeaponComponentToEntity(playerPed, -404520310, 0x772C8DD6, true)
	else
		GiveWeaponComponentToEntity(playerPed, -404520310, 0x772C8DD6, true) -- WEAPON_RIFLE_BOLTACTION [Short Scope]
	end

	if Config.Notification then
		Core.NotifyLeft(Config.Notification.Successful, Config.Notification.ScopeAttached, "inventory_items", "weapon_rifle_boltaction", Config.Notification.NotificationTime, "COLOR_WHITE")
	end

	TriggerServerEvent("Zeus_Scope:RemoveScopeItem", Config.ScopeItems.WEAPON_RIFLE_BOLTACTION_SHORT)
end)

RegisterNetEvent("Zeus_Scope:AddScopeRifleBoltactionMedium")
AddEventHandler("Zeus_Scope:AddScopeRifleBoltactionMedium", function()
	if Config.Animation then
		Animation()
		Wait(Config.Anim.AnimDuration)
		GiveWeaponComponentToEntity(playerPed, -1844750633, 0x772C8DD6, true)
	else
		GiveWeaponComponentToEntity(playerPed, -1844750633, 0x772C8DD6, true) -- WEAPON_RIFLE_BOLTACTION [Medium Scope]
	end

	if Config.Notification then
		Core.NotifyLeft(Config.Notification.Successful, Config.Notification.ScopeAttached, "inventory_items", "weapon_rifle_boltaction", Config.Notification.NotificationTime, "COLOR_WHITE")
	end

	TriggerServerEvent("Zeus_Scope:RemoveScopeItem", Config.ScopeItems.WEAPON_RIFLE_BOLTACTION_MEDIM)
end)

RegisterNetEvent("Zeus_Scope:AddScopeRifleSpringfieldShort")
AddEventHandler("Zeus_Scope:AddScopeRifleSpringfieldShort", function()
	if Config.Animation then
		Animation()
		Wait(Config.Anim.AnimDuration)
		GiveWeaponComponentToEntity(playerPed, -404520310, 0x63F46DE6, true)
	else
		GiveWeaponComponentToEntity(playerPed, -404520310, 0x63F46DE6, true) -- WEAPON_RIFLE_SPRINGFIELD [Short Scope]
	end

	if Config.Notification then
		Core.NotifyLeft(Config.Notification.Successful, Config.Notification.ScopeAttached, "inventory_items", "weapon_rifle_springfield", Config.Notification.NotificationTime, "COLOR_WHITE")
	end

	TriggerServerEvent("Zeus_Scope:RemoveScopeItem", Config.ScopeItems.WEAPON_RIFLE_SPRINGFIELD_SHORT)
end)

RegisterNetEvent("Zeus_Scope:AddScopeRifleSpringfieldMedium")
AddEventHandler("Zeus_Scope:AddScopeRifleSpringfieldMedium", function()
	if Config.Animation then
		Animation()
		Wait(Config.Anim.AnimDuration)
		GiveWeaponComponentToEntity(playerPed, -1844750633, 0x63F46DE6, true)
	else
		GiveWeaponComponentToEntity(playerPed, -1844750633, 0x63F46DE6, true) -- WEAPON_RIFLE_SPRINGFIELD [Medium Scope]
	end

	if Config.Notification then
		Core.NotifyLeft(Config.Notification.Successful, Config.Notification.ScopeAttached, "inventory_items", "weapon_rifle_springfield", Config.Notification.NotificationTime, "COLOR_WHITE")
	end

	TriggerServerEvent("Zeus_Scope:RemoveScopeItem", Config.ScopeItems.WEAPON_RIFLE_SPRINGFIELD_MEDIUM)
end)

RegisterNetEvent("Zeus_Scope:AddScopeSniperRifleRollingblockShort")
AddEventHandler("Zeus_Scope:AddScopeSniperRifleRollingblockShort", function()
	if Config.Animation then
		Animation()
		Wait(Config.Anim.AnimDuration)
		GiveWeaponComponentToEntity(playerPed, -404520310, 0xE1D2B317, true)
	else
		GiveWeaponComponentToEntity(playerPed, -404520310, 0xE1D2B317, true) -- WEAPON_SNIPERRIFLE_ROLLINGBLOCK [Short Scope]
	end

	if Config.Notification then
		Core.NotifyLeft(Config.Notification.Successful, Config.Notification.ScopeAttached, "inventory_items", "weapon_sniperrifle_rollingblock", Config.Notification.NotificationTime, "COLOR_WHITE")
	end

	TriggerServerEvent("Zeus_Scope:RemoveScopeItem", Config.ScopeItems.WEAPON_SNIPERRIFLE_ROLLINGBLOCK_SHORT)
end)

RegisterNetEvent("Zeus_Scope:AddScopeSniperRifleRollingblockMedium")
AddEventHandler("Zeus_Scope:AddScopeSniperRifleRollingblockMedium", function()
	if Config.Animation then
		Animation()
		Wait(Config.Anim.AnimDuration)
		GiveWeaponComponentToEntity(playerPed, -1844750633, 0xE1D2B317, true)
	else
		GiveWeaponComponentToEntity(playerPed, -1844750633, 0xE1D2B317, true) -- WEAPON_SNIPERRIFLE_ROLLINGBLOCK [Medium Scope]
	end

	if Config.Notification then
		Core.NotifyLeft(Config.Notification.Successful, Config.Notification.ScopeAttached, "inventory_items", "weapon_sniperrifle_rollingblock", Config.Notification.NotificationTime, "COLOR_WHITE")
	end

	TriggerServerEvent("Zeus_Scope:RemoveScopeItem", Config.ScopeItems.WEAPON_SNIPERRIFLE_ROLLINGBLOCK_MEDIUM)
end)

RegisterNetEvent("Zeus_Scope:AddScopeSniperRifleRollingblockLong")
AddEventHandler("Zeus_Scope:AddScopeSniperRifleRollingblockLong", function()
	if Config.Animation then
		Animation()
		Wait(Config.Anim.AnimDuration)
		GiveWeaponComponentToEntity(playerPed, -1545766277, 0xE1D2B317, true)
	else
		GiveWeaponComponentToEntity(playerPed, -1545766277, 0xE1D2B317, true) -- WEAPON_SNIPERRIFLE_ROLLINGBLOCK [Long Scope]
	end

	if Config.Notification then
		Core.NotifyLeft(Config.Notification.Successful, Config.Notification.ScopeAttached, "inventory_items", "weapon_sniperrifle_rollingblock", Config.Notification.NotificationTime, "COLOR_WHITE")
	end

	TriggerServerEvent("Zeus_Scope:RemoveScopeItem", Config.ScopeItems.WEAPON_SNIPERRIFLE_ROLLINGBLOCK_LONG)
end)

RegisterNetEvent("Zeus_Scope:AddScopeSniperRifleCarcanoShort")
AddEventHandler("Zeus_Scope:AddScopeSniperRifleCarcanoShort", function()
	if Config.Animation then
		Animation()
		Wait(Config.Anim.AnimDuration)
		GiveWeaponComponentToEntity(playerPed, -404520310, 0x53944780, true)
	else
		GiveWeaponComponentToEntity(playerPed, -404520310, 0x53944780, true) -- WEAPON_SNIPERRIFLE_CARCANO [Short Scope]
	end

	if Config.Notification then
		Core.NotifyLeft(Config.Notification.Successful, Config.Notification.ScopeAttached, "inventory_items", "weapon_sniperrifle_carcano", Config.Notification.NotificationTime, "COLOR_WHITE")
	end

	TriggerServerEvent("Zeus_Scope:RemoveScopeItem", Config.ScopeItems.WEAPON_SNIPERRIFLE_CARCANO_SHORT)
end)

RegisterNetEvent("Zeus_Scope:AddScopeSniperRifleCarcanoMedium")
AddEventHandler("Zeus_Scope:AddScopeSniperRifleCarcanoMedium", function()
	if Config.Animation then
		Animation()
		Wait(Config.Anim.AnimDuration)
		GiveWeaponComponentToEntity(playerPed, -1844750633, 0x53944780, true)
	else
		GiveWeaponComponentToEntity(playerPed, -1844750633, 0x53944780, true) -- WEAPON_SNIPERRIFLE_CARCANO [Medium Scope]
	end

	if Config.Notification then
		Core.NotifyLeft(Config.Notification.Successful, Config.Notification.ScopeAttached, "inventory_items", "weapon_sniperrifle_carcano", Config.Notification.NotificationTime, "COLOR_WHITE")
	end

	TriggerServerEvent("Zeus_Scope:RemoveScopeItem", Config.ScopeItems.WEAPON_SNIPERRIFLE_CARCANO_MEDIUM)
end)

RegisterNetEvent("Zeus_Scope:AddScopeSniperRifleCarcanoLong")
AddEventHandler("Zeus_Scope:AddScopeSniperRifleCarcanoLong", function()
	if Config.Animation then
		Animation()
		Wait(Config.Anim.AnimDuration)
		GiveWeaponComponentToEntity(playerPed, -1545766277, 0x53944780, true)
	else
		GiveWeaponComponentToEntity(playerPed, -1545766277, 0x53944780, true) -- WEAPON_SNIPERRIFLE_CARCANO [Long Scope]
	end

	if Config.Notification then
		Core.NotifyLeft(Config.Notification.Successful, Config.Notification.ScopeAttached, "inventory_items", "weapon_sniperrifle_carcano", Config.Notification.NotificationTime, "COLOR_WHITE")
	end

	TriggerServerEvent("Zeus_Scope:RemoveScopeItem", Config.ScopeItems.WEAPON_SNIPERRIFLE_CARCANO_LONG)
end)

RegisterNetEvent("Zeus_Scope:RemoveScope")
RegisterNetEvent("Zeus_Scope:RemoveScope", function()
	RemoveScope()
end)