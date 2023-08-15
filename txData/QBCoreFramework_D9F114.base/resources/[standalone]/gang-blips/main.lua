Config = {
    Blips = {
        {
            gang = 'ballas',
            type = "square",
            coords = vector3(105.74, -1947.71, 20.68),
            height = 145.0,
            width = 145.0,
            color = 7,
            alpha = 128,
            rotation = 50
        },
        {
            gang = 'families',
            type = "square",
            coords = vec3(-180.10, -1642.39, 45.03),
            height = 175.0,
            width = 215.0,
            color = 2,
            alpha = 128,
            rotation = 50
        },
        {
            gang = 'bloods',
            type = "square",
            coords = vec3(-1560.09, -400.29, 52.08),
            height = 58.0,
            width = 55.0,
            color = 1,
            alpha = 128,
            rotation = 49
        },
        
        
    }
}

for _, object in pairs(Config.Blips) do
    local blip = nil
    local x, y, z = table.unpack(object.coords)

    if object.type == 'circle' then 
        blip = AddBlipForRadius(x, y, z, object.radius)
    elseif object.type == 'square' then 
        blip = AddBlipForArea(x, y, z, object.width, object.height)
        SetBlipRotation(blip, object.rotation)
    end

    SetBlipColour(blip, object.color)
    SetBlipAlpha(blip, object.alpha)
    SetBlipDisplay(blip, 8)
    SetBlipAsShortRange(blip, true)
end