local animDictEat = "mp_player_inteat@burger"
local animationEat = "mp_player_int_eat_burger"
local animLengthEat = GetAnimDuration(animDictEat, animationEat)

---- functions ----

function LoadPropDict(model)
    while not HasModelLoaded(GetHashKey(model)) do
      RequestModel(GetHashKey(model))
      Wait(10)
    end
end

function AddPropToPlayer(prop1, bone, off1, off2, off3, rot1, rot2, rot3)
    local Player = PlayerPedId()
    local x,y,z = table.unpack(GetEntityCoords(Player))
  
    if not HasModelLoaded(prop1) then
      LoadPropDict(prop1)
    end
  
    prop = CreateObject(GetHashKey(prop1), x, y, z+0.2,  true,  true, true)
    AttachEntityToEntity(prop, Player, GetPedBoneIndex(Player, bone), off1, off2, off3, rot1, rot2, rot3, true, true, false, true, 1, true)
    PlayerHasProp = true
    SetModelAsNoLongerNeeded(prop1)
end

local function loadAnimDict(dict)
    if HasAnimDictLoaded(dict) then return end
    RequestAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
        Wait(10)
    end
end


RegisterNetEvent('nazu-dinerjob:client:Eating', function(item)
    -- loadAnimDict(animDictDrink) 
    -- AddPropToPlayer("prop_cs_burger_01", 18905, 0.13,  0.05, 0.02, -50.0,  16.0, 60.0)
    -- TaskPlayAnim(PlayerPedId(), animDictEat, animationEat, 1.0, 4.0, animLengthEat, 49, 0, 0, 0, 0)
    QBCore.Functions.Progressbar('nz_eating', 'Eating' .. item.name , 5000, false, true, {
		disableMovement = false,
		disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
	}, {}, {}, {}, function() -- Done
        DeleteObject(prop)
        ClearPedTasks(PlayerPedId())
		TriggerServerEvent("consumables:server:addHunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + Config.ConsumablesEat[item.name])
    end, function() -- Cancel
		DeleteObject(prop)
        ClearPedTasks(PlayerPedId())
	end)
end)
