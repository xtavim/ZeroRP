Config = Config or {}
Config.AutoRespawn = false --True == auto respawn cars that are outside into your garage on script restart, false == does not put them into your garage and players have to go to the impound
Config.SharedGarages = false   --True == Gang and job garages are shared, false == Gang and Job garages are personal
Config.VisuallyDamageCars = true --True == Visually damage cars that go out of the garage depending of body damage, false == Do not visually damage cars (damage is still applied to car values)
Config.SharedPublicGarages = false --Ture All public garages can access all vehicle of player that parked in garage type "public", -- False player can't access another public garages from anywhere (this is original behavior of script)

Config.Garages = {
    ["motelgarage"] = {
        ["label"] = "Motel Parking",
        ["takeVehicle"] = vector3(273.43, -343.99, 44.91),
        ["spawnPoint"] = vector4(270.94, -342.96, 43.97, 161.5),
        ["putVehicle"] = vector3(276.69, -339.85, 44.91),
        ["showBlip"] = true,
        ["blipName"] = "Public Parking",
        ["blipNumber"] = 357,
        ["blipColor"] = 3,
        ["type"] = "public",                --public, job, gang, depot
        ["vehicle"] = "car"                 --car, air, sea, rig
    },
    ["casinogarage"] = {
        ["label"] = "Casino Parking",
        ["takeVehicle"] = vector3(925.3, 51.85, 81.11),
        ["spawnPoint"] = vector4(918.77, 51.73, 80.16, 329.43),
        ["putVehicle"] = vector3(914.92, 37.85, 80.07),
        ["showBlip"] = true,
        ["blipName"] = "Public Parking",
        ["blipNumber"] = 357,
        ["blipColor"] = 3,
        ["type"] = "public",                --public, job, gang, depot
        ["vehicle"] = "car"                 --car, air, sea, rig
    },
    ["sapcounsel"] = {
        ["label"] = "San Andreas Parking",
        ["takeVehicle"] = vector3(-330.01, -780.33, 33.96),
        ["spawnPoint"] = vector4(-334.44, -780.75, 33.96, 137.5),
        ["putVehicle"] = vector3(-336.31, -774.93, 33.96),
        ["showBlip"] = true,
        ["blipName"] = "Public Parking",
        ["blipNumber"] = 357,
        ["blipColor"] = 3,
        ["type"] = "public",                --public, job, gang, depot
        ["vehicle"] = "car"                 --car, air, sea, rig
    },
    ["spanishave"] = {
        ["label"] = "Spanish Ave Parking",
        ["takeVehicle"] = vector3(-1160.86, -741.41, 19.63),
        ["spawnPoint"] = vector4(-1163.88, -749.32, 18.42, 35.5),
        ["putVehicle"] = vector3(-1147.58, -738.11, 19.31),
        ["showBlip"] = true,
        ["blipName"] = "Public Parking",
        ["blipNumber"] = 357,
        ["blipColor"] = 3,
        ["type"] = "public",                --public, job, gang, depot
        ["vehicle"] = "car"                 --car, air, sea, rig
    },
    ["caears24"] = {
        ["label"] = "Caears 24 Parking",
        ["takeVehicle"] = vector3(69.84, 12.6, 68.96),
        ["spawnPoint"] = vector4(73.21, 10.72, 68.83, 163.5),
        ["putVehicle"] = vector3(65.43, 21.19, 69.47),
        ["showBlip"] = true,
        ["blipName"] = "Public Parking",
        ["blipNumber"] = 357,
        ["blipColor"] = 3,
        ["type"] = "public",                --public, job, gang, depot
        ["vehicle"] = "car"                 --car, air, sea, rig
    },
    ["caears242"] = {
        ["label"] = "Caears 24 Parking",
        ["takeVehicle"] = vector3(-475.31, -818.73, 30.46),
        ["spawnPoint"] = vector4(-472.03, -815.47, 30.5, 177.5),
        ["putVehicle"] = vector3(-453.6, -817.08, 30.61),
        ["showBlip"] = true,
        ["blipName"] = "Public Parking",
        ["blipNumber"] = 357,
        ["blipColor"] = 3,
        ["type"] = "public",                --public, job, gang, depot
        ["vehicle"] = "car"                 --car, air, sea, rig
    },
    ["lagunapi"] = {
        ["label"] = "Laguna Parking",
        ["takeVehicle"] = vector3(364.37, 297.83, 103.49),
        ["spawnPoint"] = vector4(367.49, 297.71, 103.43, 340.5),
        ["putVehicle"] = vector3(363.04, 283.51, 103.38),
        ["showBlip"] = true,
        ["blipName"] = "Public Parking",
        ["blipNumber"] = 357,
        ["blipColor"] = 3,
        ["type"] = "public",                --public, job, gang, depot
        ["vehicle"] = "car"                 --car, air, sea, rig
    },
    ["beachp"] = {
        ["label"] = "Beach Parking",
        ["takeVehicle"] = vector3(-1183.1, -1511.11, 4.36),
        ["spawnPoint"] = vector4(-1181.0, -1505.98, 4.37, 214.5),
        ["putVehicle"] = vector3(-1176.81, -1498.63, 4.37),
        ["showBlip"] = true,
        ["blipName"] = "Public Parking",
        ["blipNumber"] = 357,
        ["blipColor"] = 3,
        ["type"] = "public",                --public, job, gang, depot
        ["vehicle"] = "car"                 --car, air, sea, rig
    },
    ["themotorhotel"] = {
        ["label"] = "The Motor Hotel Parking",
        ["takeVehicle"] = vector3(1137.77, 2663.54, 37.9),
        ["spawnPoint"] = vector4(1137.69, 2673.61, 37.9, 359.5),
        ["putVehicle"] = vector3(1137.75, 2652.95, 37.9),
        ["showBlip"] = true,
        ["blipName"] = "Public Parking",
        ["blipNumber"] = 357,
        ["blipColor"] = 3,
        ["type"] = "public",                --public, job, gang, depot
        ["vehicle"] = "car"                 --car, air, sea, rig
    },
    ["liqourparking"] = {
        ["label"] = "Liqour Parking",
        ["takeVehicle"] = vector3(934.95, 3606.59, 32.81),
        ["spawnPoint"] = vector4(941.57, 3619.99, 32.5, 141.5),
        ["putVehicle"] = vector3(939.37, 3612.25, 32.69),
        ["showBlip"] = true,
        ["blipName"] = "Public Parking",
        ["blipNumber"] = 357,
        ["blipColor"] = 3,
        ["type"] = "public",                --public, job, gang, depot
        ["vehicle"] = "car"                 --car, air, sea, rig
    },
    ["shoreparking"] = {
        ["label"] = "Shore Parking",
        ["takeVehicle"] = vector3(1726.21, 3707.16, 34.17),
        ["spawnPoint"] = vector4(1730.31, 3711.07, 34.2, 20.5),
        ["putVehicle"] = vector3(1737.13, 3718.91, 34.04),
        ["showBlip"] = true,
        ["blipName"] = "Public Parking",
        ["blipNumber"] = 357,
        ["blipColor"] = 3,
        ["type"] = "public",                --public, job, gang, depot
        ["vehicle"] = "car"                 --car, air, sea, rig
    },
    ["haanparking"] = {
        ["label"] = "Bell Farms Parking",
        ["takeVehicle"] = vector3(78.34, 6418.74, 31.28),
        ["spawnPoint"] = vector4(70.71, 6425.16, 30.92, 68.5),
        ["putVehicle"] = vector3(85.3, 6427.52, 31.33),
        ["showBlip"] = true,
        ["blipName"] = "Public Parking",
        ["blipNumber"] = 357,
        ["blipColor"] = 3,
        ["type"] = "public",                --public, job, gang, depot
        ["vehicle"] = "car"                 --car, air, sea, rig
    },
    ["dumbogarage"] = {
        ["label"] = "Dumbo Private Parking",
        ["takeVehicle"] = vector3(157.26, -3240.00, 7.00),
        ["spawnPoint"] = vector4(165.32, -3236.10, 5.93, 268.5),
        ["putVehicle"] = vector3(165.32, -3230.00, 5.93),
        ["showBlip"] = true,
        ["blipName"] = "Public Parking",
        ["blipNumber"] = 357,
        ["blipColor"] = 3,
        ["type"] = "public",                --public, job, gang, depot
        ["vehicle"] = "car"                 --car, air, sea, rig
    },
    ["pillboxgarage"] = {
        ["label"] = "Pillbox Garage Parking",
        ["takeVehicle"] = vector3(215.9499, -809.698, 30.731),
        ["spawnPoint"] = vector4(234.1942, -787.066, 30.193, 159.6),
        ["putVehicle"] = vector3(218.0894, -781.370, 30.389),
        ["showBlip"] = true,
        ["blipName"] = "Public Parking",
        ["blipNumber"] = 357,
        ["blipColor"] = 3,
        ["type"] = "public",                --public, job, gang, depot
        ["vehicle"] = "car"                 --car, air, sea, rig
    },
    ["grovestreetgarage"] = {
        ["label"] = "Grove Street Garage Parking",
        ["takeVehicle"] = vector3(-59.45, -1828.8, 26.23),
        ["spawnPoint"] = vector4(-52.66, -1840.82, 25.84, 320.32),
        ["putVehicle"] = vector3(-59.2, -1835.2, 26.1),
        ["showBlip"] = true,
        ["blipName"] = "Public Parking",
        ["blipNumber"] = 357,
        ["blipColor"] = 3,
        ["type"] = "public",                --public, job, gang, depot
        ["vehicle"] = "car"                 --car, air, sea, rig
    },
    ["garagemfarol"] = {
        ["label"] = "Garagem Farol",
        ["takeVehicle"] = vector3(3804.51, 4471.14, 4.75),
        ["spawnPoint"] = vector4(3806.33, 4464.8, 4.51, 87.42),
        ["putVehicle"] = vector3(3817.5, 4461.44, 3.81),
        ["showBlip"] = true,
        ["blipName"] = "Public Parking",
        ["blipNumber"] = 357,
        ["blipColor"] = 3,
        ["type"] = "public",                --public, job, gang, depot
        ["vehicle"] = "car"                 --car, air, sea, rig
    },
    ["garagemmotel"] = {
        ["label"] = "Garagem Motel",
        ["takeVehicle"] = vector3(299.51, -234.37, 53.94),
        ["spawnPoint"] = vector4(294.47, -233.05, 53.96, 189.44),
        ["putVehicle"] = vector3(288.83, -230.61, 53.94),
        ["showBlip"] = true,
        ["blipName"] = "Public Parking",
        ["blipNumber"] = 357,
        ["blipColor"] = 3,
        ["type"] = "public",                --public, job, gang, depot
        ["vehicle"] = "car"                 --car, air, sea, rig
    },
    --[[    ["hayesdepot"] = {
        ["label"] = "Hayes Depot",
        ["takeVehicle"] = vector3(491.0, -1314.69, 29.25),
        ["spawnPoint"] = vector4(491.0, -1314.69, 29.25, 304.5),
        ["showBlip"] = true,
        ["blipName"] = "Hayes Depot",
        ["blipNumber"] = 68,
        ["blipColor"] = 3,
        ["type"] = "depot",                --public, job, gang, depot
        ["vehicle"] = "car"                 --car, air, sea, rig
    }, --]]
    ["impoundlot"] = {
        ["label"] = "Impound Lot",
        ["takeVehicle"] = vector3(409.89, -1623.51, 29.29),
        ["spawnPoint"] = vector4(407.92, -1646.29, 29.29, 226.39),
        ["showBlip"] = true,
        ["blipName"] = "Impound Lot",
        ["blipNumber"] = 68,
        ["blipColor"] = 3,
        ["type"] = "depot",                --public, job, gang, depot
        ["vehicle"] = "car"                 --car, air, sea, rig
    },
    ["ballas"] = {
        ["label"] = "Ballas",
        ["takeVehicle"] = vector3(98.50, -1954.49, 20.84),
        ["spawnPoint"] = vector4(98.50, -1954.49, 20.75, 335.73),
        ["putVehicle"] = vector3(94.75, -1959.93, 20.84),
        ["showBlip"] = false,
        ["blipName"] = "Ballas",
        ["blipNumber"] = 357,
        ["blipColor"] = 3,
        ["type"] = "gang",                --public, job, gang, depot
        ["vehicle"] = "car",              --car, air, sea, rig
        ["job"] = "ballas",
        ["jobType"] = "ballas"
    },
    ["families"] = {
        ["label"] = "Families",
        ["takeVehicle"] = vector3(-811.65, 187.49, 72.48),
        ["spawnPoint"] = vector4(-818.43, 184.97, 72.28, 107.85),
        ["putVehicle"] = vector3(-811.65, 187.49, 72.48),
        ["showBlip"] = false,
        ["blipName"] = "Families",
        ["blipNumber"] = 357,
        ["blipColor"] = 3,
        ["type"] = "gang",                --public, job, gang, depot
        ["vehicle"] = "car",              --car, air, sea, rig
        ["job"] = "families",
        ["jobType"] = "families"
    },
    ["soa"] = {
        ["label"] = "Sons of Anarchy",
        ["takeVehicle"] = vector3(-811.65, 187.49, 72.48),
        ["spawnPoint"] = vector4(-818.43, 184.97, 72.28, 107.85),
        ["putVehicle"] = vector3(-811.65, 187.49, 72.48),
        ["showBlip"] = false,
        ["blipName"] = "Sons of Anarchy",
        ["blipNumber"] = 357,
        ["blipColor"] = 3,
        ["type"] = "gang",                --public, job, gang, depot
        ["vehicle"] = "car",              --car, air, sea, rig
        ["job"] = "soa",
        ["jobType"] = "soa"
    },
    ["red"] = {
        ["label"] = "RedRoses",
        ["takeVehicle"] = vector3(-811.65, 187.49, 72.48),
        ["spawnPoint"] = vector4(-818.43, 184.97, 72.28, 107.85),
        ["putVehicle"] = vector3(-811.65, 187.49, 72.48),
        ["showBlip"] = false,
        ["blipName"] = "RedRoses",
        ["blipNumber"] = 357,
        ["blipColor"] = 3,
        ["type"] = "gang",                --public, job, gang, depot
        ["vehicle"] = "car",              --car, air, sea, rig
        ["job"] = "red",
        ["jobType"] = "red"
    },
    ["italiana"] = {
        ["label"] = "Italiana",
        ["takeVehicle"] = vector3(-811.65, 187.49, 72.48),
        ["spawnPoint"] = vector4(-818.43, 184.97, 72.28, 107.85),
        ["putVehicle"] = vector3(-811.65, 187.49, 72.48),
        ["showBlip"] = false,
        ["blipName"] = "Italiana",
        ["blipNumber"] = 357,
        ["blipColor"] = 3,
        ["type"] = "gang",                --public, job, gang, depot
        ["vehicle"] = "car",              --car, air, sea, rig
        ["job"] = "italiana",
        ["jobType"] = "italiana"
    },
    ["russa"] = {
        ["label"] = "Russa",
        ["takeVehicle"] = vector3(-811.65, 187.49, 72.48),
        ["spawnPoint"] = vector4(-818.43, 184.97, 72.28, 107.85),
        ["putVehicle"] = vector3(-811.65, 187.49, 72.48),
        ["showBlip"] = false,
        ["blipName"] = "Russa",
        ["blipNumber"] = 357,
        ["blipColor"] = 3,
        ["type"] = "gang",                --public, job, gang, depot
        ["vehicle"] = "car",              --car, air, sea, rig
        ["job"] = "russa",
        ["jobType"] = "russa"
    },
    ["lostmc"] = {
        ["label"] = "Lost MC",
        ["takeVehicle"] = vector3(957.25, -129.63, 74.39),
        ["spawnPoint"] = vector4(957.25, -129.63, 74.39, 199.21),
        ["putVehicle"] = vector3(950.47, -122.05, 74.36),
        ["showBlip"] = false,
        ["blipName"] = "Lost MC",
        ["blipNumber"] = 357,
        ["blipColor"] = 3,
        ["type"] = "gang",                --public, job, gang, depot
        ["vehicle"] = "car",              --car, air, sea, rig
        ["job"] = "lostmc",
        ["jobType"] = "lostmc"
    },
    ["cartel"] = {
        ["label"] = "Cartel",
        ["takeVehicle"] = vector3(1407.18, 1118.04, 114.84),
        ["spawnPoint"] = vector4(1407.18, 1118.04, 114.84, 88.34),
        ["putVehicle"] = vector3(1407.18, 1118.04, 114.84),
        ["showBlip"] = false,
        ["blipName"] = "Cartel",
        ["blipNumber"] = 357,
        ["blipColor"] = 3,
        ["type"] = "gang",                --public, job, gang, depot
        ["vehicle"] = "car",              --car, air, sea, rig
        ["job"] = "cartel",
        ["jobType"] = "cartel"
    },
    ["bloods"] = {
        ["label"] = "Bloods",
        ["takeVehicle"] = vector3(1, 1, 1),
        ["spawnPoint"] = vector4(1, 1, 1, 1),
        ["putVehicle"] = vector3(1, 1, 1),
        ["showBlip"] = false,
        ["blipName"] = "Bloods",
        ["blipNumber"] = 357,
        ["blipColor"] = 3,
        ["type"] = "gang",                --public, job, gang, depot
        ["vehicle"] = "car",              --car, air, sea, rig
        ["job"] = "blood",
        ["jobType"] = "bloods"
    },
    ["crips"] = {
        ["label"] = "Crips",
        ["takeVehicle"] = vector3(-811.65, 187.49, 72.48),
        ["spawnPoint"] = vector4(-818.43, 184.97, 72.28, 107.85),
        ["putVehicle"] = vector3(-811.65, 187.49, 72.48),
        ["showBlip"] = false,
        ["blipName"] = "Crips",
        ["blipNumber"] = 357,
        ["blipColor"] = 3,
        ["type"] = "gang",                --public, job, gang, depot
        ["vehicle"] = "car",              --car, air, sea, rig
        ["job"] = "crips",
        ["jobType"] = "crips"
    },
    ["vagos"] = {
        ["label"] = "Vagos",
        ["takeVehicle"] = vector3(-811.65, 187.49, 72.48),
        ["spawnPoint"] = vector4(-818.43, 184.97, 72.28, 107.85),
        ["putVehicle"] = vector3(-811.65, 187.49, 72.48),
        ["showBlip"] = false,
        ["blipName"] = "Vagos",
        ["blipNumber"] = 357,
        ["blipColor"] = 3,
        ["type"] = "gang",                --public, job, gang, depot
        ["vehicle"] = "car",              --car, air, sea, rig
        ["job"] = "vagos",
        ["jobType"] = "vagos"
    },
    ["vanilla"] = {
        ["label"] = "Vanilla",
        ["takeVehicle"] = vector3(-811.65, 187.49, 72.48),
        ["spawnPoint"] = vector4(-818.43, 184.97, 72.28, 107.85),
        ["putVehicle"] = vector3(-811.65, 187.49, 72.48),
        ["showBlip"] = false,
        ["blipName"] = "Vanilla",
        ["blipNumber"] = 357,
        ["blipColor"] = 3,
        ["type"] = "gang",                --public, job, gang, depot
        ["vehicle"] = "car",              --car, air, sea, rig
        ["job"] = "vanilla",
        ["jobType"] = "vanilla"
    },
    ["bahamas"] = {
        ["label"] = "Bahamas",
        ["takeVehicle"] = vector3(-811.65, 187.49, 72.48),
        ["spawnPoint"] = vector4(-818.43, 184.97, 72.28, 107.85),
        ["putVehicle"] = vector3(-811.65, 187.49, 72.48),
        ["showBlip"] = false,
        ["blipName"] = "Bahamas",
        ["blipNumber"] = 357,
        ["blipColor"] = 3,
        ["type"] = "gang",                --public, job, gang, depot
        ["vehicle"] = "car",              --car, air, sea, rig
        ["job"] = "bahamas",
        ["jobType"] = "bahamas"
    },
    ["police"] = {
        ["label"] = "Police",
        ["takeVehicle"] = vector3(454.6, -1017.4, 28.4),
        ["spawnPoint"] = vector4(438.4, -1018.3, 27.7, 90.0),
        ["putVehicle"] = vector3(452.88, -1006.98, 27.5),
        ["showBlip"] = false,
        ["blipName"] = "Police",
        ["blipNumber"] = 357,
        ["blipColor"] = 3,
        ["type"] = "job",                --public, job, gang, depot
        ["vehicle"] = "car",              --car, air, sea, rig
        ["job"] = "police",
        ["jobType"] = "leo"
    },
}
Config.HouseGarages = {}
