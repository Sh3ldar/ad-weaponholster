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

-- Returns the current version set in fxmanifest.lua
function GetCurrentVersion()
	return GetResourceMetadata( GetCurrentResourceName(), "version" )
end

-- Grabs the latest version number from the web GitHub
PerformHttpRequest( "https://raw.githubusercontent.com/FiveOPZ/qb-weaponholster/main/version.txt", function( err, text, headers )
	-- Wait to reduce spam
	Citizen.Wait( 2000 )

	-- Get the current resource version
	local curVer = GetCurrentVersion()

	print( "  ||    Current version: " .. curVer )

	if ( text ~= nil ) then
		-- Print latest version
		print( "qb-weaponholster | Latest recommended version: " .. text .."\n  ||" )

		-- If the versions are different, print it out
		if ( text ~= curVer ) then
			print( "^4qb-weaponholster | ^0Version is outdated visit https://github.com/FiveOPZ/qb-weaponholster" )
		else
			print( "4qb-weaponholster | ^0Version is up to date" )
		end
	else
		-- In case the version can not be requested, print out an error message
		print( "4qb-weaponholster | ^0Error when trying to check version." )
	end

	-- Warn the console if the resource has been renamed, as this will cause issues with the resource's functionality.
	if ( GetCurrentResourceName() ~= "qb-weaponholster" ) then
		print( "4qb-weaponholster | ^0Resource name is not qb-weaponholster please change it." )
	end
end )
