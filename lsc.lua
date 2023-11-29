local lsc =AddBlipForCoord(-356.9247, -133.5242, 38.8864
	)
    SetBlipSprite(lsc,446)
    SetBlipColour(
	lsc --[[ Blip ]], 
	4 --[[ integer ]]
)
AddTextEntry('lsc','LSC')
BeginTextCommandSetBlipName('lsc')
SetBlipShrink(
	lsc --[[ Blip ]], 
	true --[[ boolean ]]
)


EndTextCommandSetBlipName(lsc)
function mechanicenter()
    local mechanicoptions = {
        {label = "Opravit auto",
        name = "fix",
        icon ="fa-solid fa-wrench",
        groups = {["lsc"]= 0},
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
        groups = {["lsc"]= 0},
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
points = {vec3(-319.4085, -130.7640, 38.9947),vec3(-322.9336, -142.3987, 39.0097),vec3(-324.6838, -147.6428, 39.0600),vec3(-356.2664, -136.7170, 39.0097),vec3(-344.4079, -121.8918, 39.0353)},
onEnter = mechanicenter,
onExit = mechanicexit,
debug = false
})















