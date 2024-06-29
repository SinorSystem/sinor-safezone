Config = {
    Core = 'QBCore', -- Choose core QBCore Renamed Example: QBCore / URCore .... ⚠️ Don't Choose Framework ESX or Another Framework
    CoreGetCoreObject = 'qb-core', -- Folder Name
    SafeZones = {
        -- EXAMPLE SAFEZONE
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
        },
        -- ADD MORE SAFEZONE IF NEEDED
   }
}, 


        -- Add more safe zones if needed
    }
}
