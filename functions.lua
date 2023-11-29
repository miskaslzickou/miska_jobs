function Repaircar(data)
    if lib.progressBar({
        duration = 2000,
        label = 'Opravuješ auto',
        useWhileDead = false,
        canCancel = true,
        disable = {
            car = true,
            move = true,
            mouse = true,
            combat = true
        },
        anim = {
            dict = 'missmechanic',
            clip = 'work2_base'
        },
        prop = {
            model = `prop_tool_wrench`,
            pos = vec3(0.03, 0.03, 0.02),
            rot = vec3(0.0, 0.0, -1.5)
        },
    }) then  
        SetVehicleEngineHealth(
            data --[[ Vehicle ]], 
            1000.0 --[[ number ]]
        )
        SetVehicleBodyHealth(
            data --[[ Vehicle ]], 
            1000.0 --[[ number ]]
        )
        SetVehicleFixed(
            data --[[ Vehicle ]]
        )
    
     end
    
  
end
function Washcar(data)
    if lib.progressBar({
        duration = 2000,
        label = 'Umýváš auto',
        useWhileDead = false,
        canCancel = true,
        disable = {
            car = true,
            move = true,
            mouse = true,
            combat = true
        },
        anim = {
            dict = 'amb@world_human_maid_clean@idle_b',
            clip = 'idle_d'
        },
        prop = {
            model = `prop_sponge_01`,
            pos = vec3(0.03, 0.03, 0.02),
            rot = vec3(0.0, 0.0, -1.5)
        },
    }) then  
    SetVehicleDirtLevel(
	data --[[ Vehicle ]], 
	0.0 --[[ number ]]
)

end

end