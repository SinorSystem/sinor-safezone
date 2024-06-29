local Core = exports[Config.CoreGetCoreObject]:GetCoreObject()
local militaryNPCs = {}
local blips = {}

Citizen.CreateThread(function()
    Citizen.Wait(500) -- Delay execution to ensure other resources are loaded
    for zoneIndex, zone in ipairs(Config.SafeZones) do
        if zone.showblip then
            createBlip(zone)
        end
        -- spawnMilitaryNPCs(zone, zoneIndex)
    end
end)

function createBlip(zone)
    local blip = AddBlipForCoord(zone.coords.x, zone.coords.y, zone.coords.z)
    SetBlipSprite(blip, zone.blipsprite)
    SetBlipDisplay(blip, 4)
    SetBlipScale(blip, zone.blipscale)
    SetBlipColour(blip, zone.blipcolor)
    SetBlipAsShortRange(blip, true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(zone.blipname or "Safe Zone")
    EndTextCommandSetBlipName(blip)
    table.insert(blips, blip)
end

function spawnMilitaryNPCs(zone, zoneIndex)
    print("Spawning NPCs for zone " .. zoneIndex .. " at coords: " .. tostring(zone.coords))
    for npcIndex, position in pairs(zone.npcs.positions) do
        local model = GetHashKey(zone.npcs.model)
        -- RequestModel(model)
        while not HasModelLoaded(model) do
            Wait(1)
        end

        print("Creating NPC #" .. npcIndex .. " at position: " .. tostring(position))
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
            table.insert(militaryNPCs, { ped = ped, position = position })
            print("Spawned NPC #" .. npcIndex .. " for zone " .. zoneIndex)
        else
            print("Failed to create NPC #" .. npcIndex .. " for zone " .. zoneIndex)
        end
    end
end

Citizen.CreateThread(function()
    Citizen.Wait(500) -- Delay execution to ensure other resources are loaded
    for zoneIndex, zone in ipairs(Config.SafeZones) do
        CreateThread(function()
            while true do
                -- local playerPed = PlayerPedId()
                local playerCoords = GetEntityCoords(playerPed)
                if zone and #(playerCoords - zone.coords) < zone.radius then
                    TriggerServerEvent('sinor-safezone:checkPlayerWeapons', zoneIndex)
                end
                Citizen.Wait(5000)
            end
        end)
    end
end)

RegisterNetEvent('sinor-safezone:checkPlayerWeapons')
AddEventHandler('sinor-safezone:checkPlayerWeapons', function(zoneIndex)
    local src = source
    local Player = Core.Functions.GetPlayer(src)
    -- local playerPed = PlayerPedId()
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
            TriggerServerEvent('sinor-safezone:handlePlayerInSafeZone', src, zoneIndex)
        end
    end
end)

RegisterNetEvent('sinor-safezone:handlePlayerInSafeZone')
AddEventHandler('sinor-safezone:handlePlayerInSafeZone', function(zoneIndex)
    local zone = Config.SafeZones[zoneIndex]
    -- local playerPed = PlayerPedId()
    local playerHasWeapon = false

    if HasPedGotWeapon(playerPed, GetHashKey("weapon_unarmed"), false) == false then
        playerHasWeapon = true
    end

    if playerHasWeapon then
        for _, npcData in ipairs(militaryNPCs) do
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
end)
