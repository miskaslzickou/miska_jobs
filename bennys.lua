
local bennys =AddBlipForCoord(-205.6610, -1309.9247, 31.2957
	)
    
    SetBlipSprite(bennys,446)
    SetBlipColour(
	bennys --[[ Blip ]], 
	47 --[[ integer ]]
)
SetBlipShrink(
	bennys --[[ Blip ]], 
	true --[[ boolean ]]
)
function mechanicenter()
    local mechanicoptions = {
        {label = "Opravit auto",
        name = "fix",
        icon ="fa-solid fa-wrench",
        groups = {["bennys"]= 0},
        items = "repairkit",
        distance = 3,
        onSelect = function (data)
            Repaircar(data.entity)
            TriggerServerEvent("remove_kit")
        end
       
                            
    },
    {
        label = "Umýt auto",
        name = "wash",
        icon = "fa-solid fa-soap",
        groups = {["bennys"]= 0},
        items = "cleaning_spray",
       distance = 3,
       onSelect = function (data)
        Washcar(data.entity)
        TriggerServerEvent("remove_spray")
       end
    }
    }

    exports.ox_target:addGlobalVehicle(mechanicoptions)
end

function mechanicexit()
exports.ox_target:removeGlobalVehicle({"fix","wash"})
    
end
lib.zones.poly({
points = {vector3(-203.9334, -1315.2844, 30.8904),vector3(-204.1053, -1327.3145, 30.8907),vector3(-207.5623, -1327.2941, 30.8904),vector3(-207.5095, -1329.9905, 30.8904),vector3(-209.1329, -1329.8795, 30.8904),vector3(-209.0479, -1334.4060, 30.8904),vector3(-215.7987, -1333.2460, 30.8904),vector3(-217.5671, -1331.7366, 30.8904),vector3(-227.3771, -1333.5035, 30.8904),vector3(-227.2133, -1320.3928, 30.8904),vector3(-213.7052, -1315.9451, 30.8904),vector3(-208.6615, -1312.0884, 30.8904)},
onEnter = mechanicenter,
onExit = mechanicexit,
debug = false
})
