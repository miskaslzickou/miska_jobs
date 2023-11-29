BossObject =CreateObjectNoOffset(
    1385417869--[[ Hash ]], 
    -213.72058105469, -1336.6177978516, 34.312236785889,
		true --[[ boolean ]], 
		false --[[ boolean ]], 
		true --[[ boolean ]]
	)
 

RegisterServerEvent('remove_spray')
AddEventHandler('remove_spray', function() 

    exports.ox_inventory:RemoveItem(source,"cleaning_spray", 1)
    
end)
RegisterServerEvent('remove_kit')
AddEventHandler('remove_kit', function() 

    exports.ox_inventory:RemoveItem(source,"repairkit", 1)
    
end)



   
