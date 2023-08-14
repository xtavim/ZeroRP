Config = {
    Framework = "qb", -- qb / esx
    GPSItem = "gps",
    SetWaypoingKey = "G",

    WaitTimes = { -- Cooldown after a dispatch to send another one.
        Shooting = 45, -- Seconds
        Speeding = 60, -- Seconds
    },

    Enable = { -- Enable or disable built-in dispatches
        Speeding = true,
        Shooting = true,
        PlayerDeath = true,
        SuppressorControl = true,
        UseGPS = false, -- Players will receive an alert if only they have a gps 
    },

    WhitelistedJobs = { -- Jobs that won't going to give an alert.
        /* "sheriff",
        "ambulance",
        "police" */
    },

    BlipRemoveTime = 30, -- Seconds

    Notification = function(title, message, type, length)
        -- Your notification here
    end,

    BlackListedWeapons = { -- Weapons that wont give an alert
        'WEAPON_STUNGUN',
        'WEAPON_BZGAS',
        'WEAPON_SNOWBALL',
        'WEAPON_MOLOTOV',
        'WEAPON_FLARE',
        'WEAPON_BALL',
        'WEAPON_PETROLCAN',
        'WEAPON_HAZARDCAN',
        'WEAPON_FIREEXTINGUISHER',
    },

    Suppressors = { -- Suppressor hash codes
        0x65EA7EBB,
        0xC304849A,
        0xA73D4664,
        0x9307D6FA,
        0xE608B35E,
        0x837445AA,
        0xAC42DF71,
        0x9BC64089,
    }
}