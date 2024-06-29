local Core = exports[Config.CoreGetCoreObject]:GetCoreObject()
local militaryNPCs = {} -- Table to store all spawned NPCs

-- Function to spawn NPCs for a specific zone
function spawnMilitaryNPCs(zone, zoneIndex)
    militaryNPCs[zoneIndex] = {} -- Initialize table for NPCs in this zone
    for npcIndex, position in pairs(zone.npcs.positions) do
        local model = GetHashKey(zone.npcs.model)
        RequestModel(model)
        while not HasModelLoaded(model) do
            Wait(1)
        end

        local ped = CreatePed(4, model, position.x, position.y, position.z, position.w, true, true)
        if DoesEntityExist(ped) then
            GiveWeaponToPed(ped, GetHashKey(zone.npcs.weapons[math.random(#zone.npcs.weapons)]), 255, false, false)
            SetPedAsGroupMember(ped, GetPedGroupIndex(PlayerPedId()))
            if zone.npcs.freeze then
                FreezeEntityPosition(ped, true)
            end
            SetPedCombatAttributes(ped, 46, true) -- Always fight
            SetPedFleeAttributes(ped, 0, 0) -- Never flee
            SetPedDropsWeaponsWhenDead(ped, false) -- Doesn't drop weapons
            if zone.npcs.invincible then
                SetEntityInvincible(ped, true) -- Makes NPC invincible
            end
            table.insert(militaryNPCs[zoneIndex], { ped = ped, position = position })
        end
    end
end

-- Spawn NPCs when the resource starts
AddEventHandler('onClientResourceStart', function(resourceName)
    if GetCurrentResourceName() == resourceName then
        Citizen.Wait(500) -- Delay execution to ensure other resources are loaded
        for zoneIndex, zone in ipairs(Config.SafeZones) do
            spawnMilitaryNPCs(zone, zoneIndex)
        end
    end
end)

-- Event handler to check player weapons in safe zones
RegisterNetEvent('sinor-safezone:checkPlayerWeapons')
AddEventHandler('sinor-safezone:checkPlayerWeapons', function(zoneIndex)
    local src = source
    local Player = Core.Functions.GetPlayer(src)
    local playerPed = PlayerPedId()
    local playerCoords = GetEntityCoords(playerPed)
    local zone = Config.SafeZones[zoneIndex]
    if zone and #(playerCoords - zone.coords) < zone.radius then
        local isUnarmed = true
        for _, weapon in ipairs(zone.npcs.weapons) do
            if HasPedGotWeapon(playerPed, GetHashKey(weapon), false) then
                isUnarmed = false
                break
            end
        end
        if not isUnarmed then
            TriggerClientEvent('sinor-safezone:handlePlayerInSafeZone', src, zoneIndex)
        end
    end
end)

-- Event handler to manage player actions in safe zones
RegisterNetEvent('sinor-safezone:handlePlayerInSafeZone')
AddEventHandler('sinor-safezone:handlePlayerInSafeZone', function(zoneIndex)
    local zone = Config.SafeZones[zoneIndex]
    local playerPed = PlayerPedId()
    local playerHasWeapon = false

    if HasPedGotWeapon(playerPed, GetHashKey("weapon_unarmed"), false) == false then
        playerHasWeapon = true
    end

    if playerHasWeapon then
        if militaryNPCs[zoneIndex] then
            for _, npcData in ipairs(militaryNPCs[zoneIndex]) do
                local npc = npcData.ped
                if DoesEntityExist(npc) then
                    TaskCombatPed(npc, playerPed, 0, 16)
                    Citizen.SetTimeout(10000, function() -- After 10 seconds, return to the original position
                        TaskGoStraightToCoord(npc, npcData.position.x, npcData.position.y, npcData.position.z, 1.0, -1, npcData.position.w, 0.0)
                        if zone.npcs.freeze then
                            FreezeEntityPosition(npc, true)
                        end
                    end)
                end
            end
        end
    end
end)
