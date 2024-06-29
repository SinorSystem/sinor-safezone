Config = {
    Core = 'QBCore', -- Choose core QBCore Renamed Example: QBCore / TRCore / RSCore .... ⚠️ Don't Choose Framework ESX or Another Framework
    CoreGetCoreObject = 'qb-core', -- Folder Name
    SafeZones = {
        -- route 69
        {
            coords = vector3(199.99, 2778.17, 56.7),
            radius = 50.0, -- anotherRadius
            blipradius = 1.5,
            showblip = false,
            blipsprite = 120,
            blipscale = 0.9,
            blipcolor = 2,
            blipname = "Military Safe Zone",
            npcs = {
                model = "s_m_y_marine_03",
                weapons = {"WEAPON_ASSAULTRIFLE", "WEAPON_CARBINERIFLE", "WEAPON_COMBATMG"},
                invincible = true, -- this makes invincible
                freeze = true, -- This option enables freezing NPCs
                positions = {
                    [1] = vector4(210.14, 2802.61, 59.11, 10.27),
                    [2] = vector4(173.76, 2799.43, 48.81, 169.95),
                    [3] = vector4(212.33, 2782.47, 44.66, 22.98),
                    [4] = vector4(184.92, 2803.12, 44.66, 198.93),
                    [5] = vector4(194.86, 2804.35, 44.66, 196.45),
                    [6] = vector4(196.17, 2769.79, 44.66, 16.82),
                    [7] = vector4(167.3, 2762.58, 46.01, 109.1),
                    [8] = vector4(200.66, 2739.33, 42.43, 55.99),
                    [9] = vector4(184.41, 2737.03, 42.43, 306.71),
                    -- Add more positions as needed
                }
            }
        },
        -------chinatown
        {
            coords = vector3(455.31, -814.79, 30.41),
            radius = 50.0, -- anotherRadius
            blipradius = 1.5,
            showblip = false,
            blipsprite = 120,
            blipscale = 0.9,
            blipcolor = 2,
            blipname = "Military Safe Zone",
            npcs = {
                model = "s_m_y_marine_03",
                weapons = {"WEAPON_ASSAULTRIFLE", "WEAPON_CARBINERIFLE", "WEAPON_COMBATMG"},
                invincible = true, -- this makes invincible
                freeze = true, -- This option enables freezing NPCs
                positions = {
                    [1] = vector4(455.25, -814.78, 29.41, 267.12),
                    [2] = vector4(453.08, -812.81, 29.41, 8.52),
                    [3] = vector4(455.18, -832.83, 29.39, 266.15),
                    [4] = vector4(481.59, -831.26, 26.96, 98.25),
                    [5] = vector4(481.76, -815.82, 26.9, 92.84),
                    [6] = vector4(468.78, -857.69, 25.63, 17.29),
                    [7] = vector4(458.24, -694.82, 30.3, 172.88),
                    [8] = vector4(451.99, -720.27, 26.36, 234.05),
                    [9] = vector4(452.2, -761.96, 26.36, 266.58),
                    [10] = vector4(473.75, -808.13, 44.15, 10.83),
                    [11] = vector4(486.09, -785.61, 45.13, 92.98),
                    [12] = vector4(468.77, -694.33, 35.29, 183.46),
                    [13] = vector4(485.7, -750.98, 38.99, 80.57),
                    -- Add more positions as needed
                }
            }
        },
           -------woodfactory
        {
        coords = vector3(-567.71, 5324.15, 93.47),
        radius = 50.0, -- anotherRadius
        blipradius = 1.5,
        showblip = false,
        blipsprite = 120,
        blipscale = 0.9,
        blipcolor = 2,
        blipname = "Military Safe Zone",
        npcs = {
                model = "s_m_y_marine_03",
                weapons = {"WEAPON_ASSAULTRIFLE", "WEAPON_CARBINERIFLE", "WEAPON_COMBATMG"},
                invincible = true, -- this makes invincible
                freeze = true, -- This option enables freezing NPCs
                positions = {
                    [1] = vector4(-589.67, 5275.26, 71.71, 347.31),
                    [2] = vector4(-588.16, 5273.6, 71.71, 236.31),
                    [3] = vector4(-599.58, 5325.23, 69.33, 170.61),
                    [4] = vector4(-566.97, 5308.7, 72.6, 66.49),
                    [5] = vector4(-547.86, 5330.9, 75.46, 140.16),
                    [6] = vector4(-584.75, 5332.86, 69.22, 247.09),
                    [7] = vector4(-549.7, 5385.79, 71.13, 162.19),
                    [8] = vector4(-575.42, 5372.42, 69.15, 256.93),
                    [9] = vector4(-554.68, 5349.33, 73.75, 69.49),
                    [10] = vector4(-600.8, 5288.45, 69.25, 302.65),
                    [11] = vector4(-581.31, 5301.69, 69.18, 83.6),
                    [12] = vector4(-485.31, 5249.86, 86.12, 246.54),
                    [13] = vector4(-489.56, 5239.96, 86.18, 253.19),
                    -- Add more positions as needed
                }
            }
        },    
        --davise avenue
        {
            coords = vector3(362.65, -1598.47, 36.95),
            radius = 50.0, -- anotherRadius
            blipradius = 1.5,
            showblip = false,
            blipsprite = 120,
            blipscale = 0.9,
            blipcolor = 2,
            blipname = "Military Safe Zone",
            npcs = {
                    model = "s_m_y_marine_03",
                    weapons = {"WEAPON_ASSAULTRIFLE", "WEAPON_CARBINERIFLE", "WEAPON_COMBATMG"},
                    invincible = true, -- this makes invincible
                    freeze = true, -- This option enables freezing NPCs
                    positions = {
                        [1] = vector4(406.41, -1615.13, 31.11, 125.35),
                        [2] = vector4(394.55, -1606.4, 31.08, 141.45),
                        [3] = vector4(381.5, -1626.56, 28.25, 318.68),
                        [4] = vector4(406.62, -1623.58, 31.48, 175.27),
                        [5] = vector4(414.16, -1642.11, 33.32, 54.13),
                        [6] = vector4(422.58, -1629.67, 31.07, 96.39),
                        [7] = vector4(393.02, -1642.91, 28.34, 296.16),
                        [8] = vector4(411.39, -1658.49, 31.09, 40.79),
                        [9] = vector4(355.08, -1608.05, 35.07, 252.62),
                        [10] = vector4(380.4, -1603.27, 38.85, 42.45),
                        [11] = vector4(327.57, -1555.91, 38.79, 177.41),
                        [12] = vector4(340.96, -1568.31, 38.72, 107.52),
                        [13] = vector4(335.77, -1576.0, 38.78, 319.86),
                        [14] = vector4(362.55, -1578.23, 32.48, 130.09),
                        -- Add more positions as needed
                    }
                }
            }, 
            -- rockford hills
            {
                coords = vector3(-571.8, -159.84, 52.87),
                radius = 50.0, -- anotherRadius
                blipradius = 1.5,
                showblip = false,
                blipsprite = 120,
                blipscale = 0.9,
                blipcolor = 2,
                blipname = "Military Safe Zone",
                npcs = {
                        model = "s_m_y_marine_03",
                        weapons = {"WEAPON_ASSAULTRIFLE", "WEAPON_CARBINERIFLE", "WEAPON_COMBATMG"},
                        invincible = true, -- this makes invincible
                        freeze = true, -- This option enables freezing NPCs
                        positions = {
                            [1] = vector4(-593.96, -176.02, 39.28, 24.06),
                            [2] = vector4(-607.97, -169.4, 36.82, 275.75),
                            [3] = vector4(-591.23, -158.35, 37.0, 204.78),
                            [4] = vector4(-574.18, -151.71, 36.92, 193.35),
                            [5] = vector4(-556.28, -163.61, 37.33, 46.1),
                            [6] = vector4(-563.43, -147.24, 37.0, 164.16),
                            [7] = vector4(-571.7, -185.9, 36.72, 42.0),
                            -- Add more positions as needed
                        }
                    }
                }, 
                --galileo observatory
                {
                    coords = vector3(-414.26, 1174.08, 332.45),
                    radius = 50.0, -- anotherRadius
                    blipradius = 1.5,
                    showblip = false,
                    blipsprite = 120,
                    blipscale = 0.9,
                    blipcolor = 2,
                    blipname = "Military Safe Zone",
                    npcs = {
                            model = "s_m_y_marine_03",
                            weapons = {"WEAPON_ASSAULTRIFLE", "WEAPON_CARBINERIFLE", "WEAPON_COMBATMG"},
                            invincible = true, -- this makes invincible
                            freeze = true, -- This option enables freezing NPCs
                            positions = {
                                [1] = vector4(-383.67, 1187.64, 328.38, 86.83),
                                [2] = vector4(-443.43, 1173.6, 328.04, 226.98),
                                [3] = vector4(-414.01, 1222.94, 327.48, 235.25),
                                [4] = vector4(-379.71, 1225.73, 324.77, 151.47),
                                [5] = vector4(-391.56, 1237.31, 324.74, 168.78),
                                [6] = vector4(-356.94, 1260.84, 330.0, 95.1),
                                [7] = vector4(-430.36, 1202.71, 324.7, 261.5),
                                [8] = vector4(-405.58, 1194.09, 324.82, 166.8),
                                [9] = vector4(-415.27, 1161.19, 324.87, 345.17),
                                [10] = vector4(-401.98, 1130.26, 324.85, 81.79),
                                [11] = vector4(-469.17, 1146.71, 324.88, 256.84),
                                [12] = vector4(-422.27, 1113.69, 325.61, 354.19),
                                [13] = vector4(-434.39, 1118.15, 325.6, 323.58),
                                [14] = vector4(-406.7, 1071.73, 326.68, 9.7),
                                [15] = vector4(-418.55, 1057.77, 322.77, 310.41),
                                [16] = vector4(-448.39, 1061.86, 326.68, 319.48),
                                [17] = vector4(-457.95, 1091.16, 326.73, 43.9),
                                [18] = vector4(-469.43, 1130.37, 329.86, 286.87),
                                [19] = vector4(-390.38, 1163.42, 328.59, 94.8),
                                -- Add more positions as needed
                            }
                        }
                    }, 
                    --trane station
                    {
                        coords = vector3(2630.75, 2935.53, 48.7),
                        radius = 50.0, -- anotherRadius
                        blipradius = 1.5,
                        showblip = false,
                        blipsprite = 120,
                        blipscale = 0.9,
                        blipcolor = 2,
                        blipname = "Military Safe Zone",
                        npcs = {
                                model = "s_m_y_marine_03",
                                weapons = {"WEAPON_ASSAULTRIFLE", "WEAPON_CARBINERIFLE", "WEAPON_COMBATMG"},
                                invincible = true, -- this makes invincible
                                freeze = true, -- This option enables freezing NPCs
                                positions = {
                                    [1] = vector4(2605.24, 2907.81, 39.42, 126.71),
                                    [2] = vector4(2629.12, 2948.98, 39.42, 350.31),
                                    [3] = vector4(2637.07, 2938.44, 39.42, 68.73),
                                    [4] = vector4(2629.51, 2934.35, 39.42, 54.18),
                                    [5] = vector4(2630.67, 2927.79, 39.42, 140.42),
                                    [6] = vector4(2635.46, 2931.45, 43.74, 19.54),
                                    [7] = vector4(2610.22, 2942.7, 38.82, 238.74),
                                    -- Add more positions as needed
                                }
                            }
                        }, 
                        --sandy shors
                        {
                        coords = vector3(2051.26, 3412.25, 50.89),
                        radius = 50.0, -- anotherRadius
                        blipradius = 1.5,
                        showblip = false,
                        blipsprite = 120,
                        blipscale = 0.9,
                        blipcolor = 2,
                        blipname = "Military Safe Zone",
                        npcs = {
                            model = "s_m_y_marine_03",
                            weapons = {"WEAPON_ASSAULTRIFLE", "WEAPON_CARBINERIFLE", "WEAPON_COMBATMG"},
                            invincible = true, -- this makes invincible
                            freeze = true, -- This option enables freezing NPCs
                            positions = {
                                [1] = vector4(2051.63, 3334.75, 44.18, 145.28),
                                [2] = vector4(2040.1, 3344.19, 44.02, 228.45),
                                [3] = vector4(2022.35, 3313.91, 46.85, 255.69),
                                [4] = vector4(2042.9, 3313.64, 46.85, 84.1),
                                [5] = vector4(2034.82, 3345.31, 46.69, 261.21),
                                [6] = vector4(2061.66, 3334.1, 47.12, 320.32),
                                [7] = vector4(2047.26, 3380.35, 44.37, 291.72),
                                [8] = vector4(2065.4, 3386.62, 44.35, 86.65),
                                [9] = vector4(2041.99, 3441.85, 42.84, 50.72),
                                [10] = vector4(2050.7, 3441.77, 42.81, 292.99),
                                [11] = vector4(2061.93, 3461.99, 46.3, 113.19),
                                [12] = vector4(2034.11, 3466.99, 45.38, 178.82),
                                [13] = vector4(2028.73, 3411.22, 45.35, 289.21),
                                [14] = vector4(2029.11, 3378.0, 47.36, 240.1),
                                -- Add more positions as needed
                                }
                            }
                        }, 


        -- Add more safe zones if needed
    }
}
