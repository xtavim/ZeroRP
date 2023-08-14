Config = {}

Config.RestrictedChannels = {
    -- Police
    [1] = {
        police = true,
        ambulance = false
    },
    [2] = {
        police = true,
        ambulance = false
    },
    [3] = {
        police = true,
        ambulance = false
    },
    [4] = {
        police = true,
        ambulance = false
    },
    [5] = {
        police = true,
        ambulance = false
    },
    -- Ambulance
    [6] = {
        police = false,
        ambulance = true
    },
    [7] = {
        police = false,
        ambulance = true
    },
    [8] = {
        police = false,
        ambulance = true
    }
    -- Police & Ambulance
    [9] = {
        police = true,
        ambulance = true
    }
    [10] = {
        police = true,
        ambulance = true
    }
}

Config.MaxFrequency = 999

Config.messages = {
    ["not_on_radio"] = "Não estás conectado",
    ["on_radio"] = "Já estás conectado",
    ["joined_to_radio"] = "Conectado a: ",
    ["restricted_channel_error"] = "Não te podes conectar a esta frequência!",
    ["invalid_radio"] = "Esta frequência não está dispoonível",
    ["you_on_radio"] = "Já estás conectado a esta frequência",
    ["you_leave"] = "Desconectado",
    ['volume_radio'] = 'Volume ',
    ['decrease_radio_volume'] = 'O rádio já está no volume máximo',
    ['increase_radio_volume'] = 'O rádio já está no volume mínimo',
    ['increase_decrease_radio_channel'] = 'Frequência ',
}
