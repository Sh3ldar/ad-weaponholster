AddEventHandler('onResourceStart', function(resourceName)
    if (GetCurrentResourceName() ~= resourceName) then
        return
    end
    print("^4qb-weaponholster ^0|^2 Script started successfully.^7")
    print("^4qb-weaponholster ^0|^5 Version: 1.0.4^7")
    print("^4qb-weaponholster ^0|^2 If you need any help contact:^7")
    print("^4qb-weaponholster ^0|^5 Muzzy#8363^7")
end)
