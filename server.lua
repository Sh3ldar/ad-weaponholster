-----------------------------------
--- DO NOT EDIT ANYTHING BELOW! ---
-----------------------------------

AddEventHandler('onResourceStart', function(resourceName)
    if (GetCurrentResourceName() ~= resourceName) then
        return
    end
    print("^4qb-weaponholster ^0|^2 Script started successfully.^7")
    print("^4qb-weaponholster ^0|^5 Version: 1.0.4^7")
    print("^4qb-weaponholster ^0|^2 If you need any help contact:^7")
    print("^4qb-weaponholster ^0|^5 Muzzy#8363^7")
end)

function GetCurrentVersion()
	return GetResourceMetadata( GetCurrentResourceName(), "version" )
end

PerformHttpRequest( "https://raw.githubusercontent.com/FiveOPZ/qb-weaponholster/main/version.txt", function( err, text, headers )
	Citizen.Wait( 2000 )

	local curVer = GetCurrentVersion()
	
	print( "^4qb-weaponholster ^0|^5 Current version: " .. curVer )
	print( "^4qb-weaponholster ^0|^5 Latest recommended version: " .. text )

	if ( GetCurrentResourceName() ~= "qb-weaponholster" ) then
		print( "^4qb-weaponholster ^0|^1 Resource name is not qb-weaponholster please change it!" )
		print( "^4qb-weaponholster ^0|^1 Resource name is not qb-weaponholster please change it!" )
		print( "^4qb-weaponholster ^0|^1 Resource name is not qb-weaponholster please change it!" )
		print( "^4qb-weaponholster ^0|^1 Resource name is not qb-weaponholster please change it!" )
		print( "^4qb-weaponholster ^0|^1 Resource name is not qb-weaponholster please change it!" )
	end
end )
