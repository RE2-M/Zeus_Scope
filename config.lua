Config = {}

Config.Debug = false -- Dont make true on Live Server

-- Config.Version = "Standalone" or "VORP"
Config.Version = "Standalone" -- "Standalone" = Only the command is used to attach or remove the scope / "VORP" = All features in the config file can be used with VORP (features such as attaching a scope with an item)

--########## STANDALONE ##########--
Config.AddScopeCommand = "AddScope"
Config.RemoveScopeCommands = "RemoveScope"

--########## VORP ##########--
Config.AdminCommand = true -- If true than admin can add scope with command
Config.Group = "admin"
Config.AdminAddScopeCommand = "AddScopeAdmin"
Config.AdminRemoveScopeCommand = "AdminRemoveScopeAdmin"

Config.Animation = true -- Animation while attaching the scope
Config.Anim = {AnimDict = "mech_inspection@weapons@longarms@rifle_bolt_action@base", AnimName = "aim_enter", AnimDuration = 1500}

Config.UseScopeItems = true -- Attach the scopes through the item
Config.CloseInventory = true -- Close inventory after use the scope item

Config.ScopeAttachToolRequire = true -- If true, need to have a Config.ScopeAttachToolItem in the inventory to attach the scope -- false
Config.RemoveScopeAttachToolAfterUse = false -- If true, the attach tool is removed from the inventory after use
Config.ScopeAttachToolItem = "screwdriver" -- You need to add to DB or you can just run the SQL file (Extra/scopeitems.sql)

Config.RemoveScopeWithAttachTool = true -- If true, need to have a Config.ScopeAttachToolItem in the inventory to remove the scope -- false
Config.RemoveScopeWithCommand = false
Config.RemoveScopeCommand = "RemoveScope"

Config.Weapons = {
    WEAPON_REPEATER_WINCHESTER = {
        SHORT = {
            item = "scopeshortwinchester",
            weaponHash = 0xA84762EC, -- Please Dont Change this if you dont know how it work
            scopeHash = -404520310 -- Please Dont Change this if you dont know how it work
        }
    },
    WEAPON_REPEATER_HENRY = {
        SHORT = {
            item = "scopeshorthenry",
            weaponHash = 0x95B24592, -- Please Dont Change this if you dont know how it work
            scopeHash = -404520310 -- Please Dont Change this if you dont know how it work
        }
    },
    WEAPON_REPEATER_EVANS = {
        SHORT = {
            item = "scopeshortevans",
            weaponHash = 0x7194721E, -- Please Dont Change this if you dont know how it work
            scopeHash = -404520310 -- Please Dont Change this if you dont know how it work
        }
    },
    WEAPON_REPEATER_CARBINE = {
        SHORT = {
            item = "scopeshortcarbine",
            weaponHash = 0xF5175BA1, -- Please Dont Change this if you dont know how it work
            scopeHash = -404520310 -- Please Dont Change this if you dont know how it work
        }
    },
    WEAPON_RIFLE_VARMINT = {
        SHORT = {
            item = "scopeshortvarmint",
            weaponHash = 0xDDF7BC1E, -- Please Dont Change this if you dont know how it work
            scopeHash = -404520310 -- Please Dont Change this if you dont know how it work
        },
        MEDIUM = {
            item = "scopemediumvarmint",
            weaponHash = 0xDDF7BC1E, -- Please Dont Change this if you dont know how it work
            scopeHash = -1844750633 -- Please Dont Change this if you dont know how it work

        }
    },
    WEAPON_RIFLE_BOLTACTION = {
        SHORT = {
            item = "scopeshortboltaction",
            weaponHash = 0x772C8DD6, -- Please Dont Change this if you dont know how it work
            scopeHash = -404520310 -- Please Dont Change this if you dont know how it work
        },
        MEDIUM = {
            item = "scopemediumboltaction",
            weaponHash = 0x772C8DD6, -- Please Dont Change this if you dont know how it work
            scopeHash = -1844750633 -- Please Dont Change this if you dont know how it work

        }
    },
    WEAPON_RIFLE_SPRINGFIELD = {
        SHORT = {
            item = "scopeshortspringfield",
            weaponHash = 0x63F46DE6, -- Please Dont Change this if you dont know how it work
            scopeHash = -404520310 -- Please Dont Change this if you dont know how it work
        },
        MEDIUM = {
            item = "scopemediumspringfield",
            weaponHash = 0x63F46DE6, -- Please Dont Change this if you dont know how it work
            scopeHash = -1844750633 -- Please Dont Change this if you dont know how it work

        }
    },
    WEAPON_SNIPERRIFLE_ROLLINGBLOCK = {
        SHORT = {
            item = "scopeshortrollingblock",
            weaponHash = 0xE1D2B317, -- Please Dont Change this if you dont know how it work
            scopeHash = -404520310 -- Please Dont Change this if you dont know how it work
        },
        MEDIUM = {
            item = "scopemediumrollingblock",
            weaponHash = 0xE1D2B317, -- Please Dont Change this if you dont know how it work
            scopeHash = -1844750633 -- Please Dont Change this if you dont know how it work
        },
        LONG = {
            item = "scopelongrollingblock",
            weaponHash = 0xE1D2B317, -- Please Dont Change this if you dont know how it work
            scopeHash = -1545766277 -- Please Dont Change this if you dont know how it work
        }
    },
    WEAPON_SNIPERRIFLE_CARCANO = {
        SHORT = {
            item = "scopeshortcarcano",
            weaponHash = 0x53944780, -- Please Dont Change this if you dont know how it work
            scopeHash = -404520310 -- Please Dont Change this if you dont know how it work
        },
        MEDIUM = {
            item = "scopemediumcarcano",
            weaponHash = 0x53944780, -- Please Dont Change this if you dont know how it work
            scopeHash = -1844750633 -- Please Dont Change this if you dont know how it work
        },
        LONG = {
            item = "scopelongcarcano",
            weaponHash = 0x53944780, -- Please Dont Change this if you dont know how it work
            scopeHash = -1545766277 -- Please Dont Change this if you dont know how it work
        }
    }
}

Config.Notification = {
    Enable = true,
    NotificationTime = 4000, -- 4000 = 4 Sec
    Successful = "Successful",
    Warning = "Warning",
    NoAttachTool = "You dont have the " .. Config.ScopeAttachToolItem .. " for attach scope",
    NoSpace = "You dont have enough space to take scope",
    ScopeAttached = "Scope successfully attached",
    ScopeRemoved = "Scope successfully removed"
}