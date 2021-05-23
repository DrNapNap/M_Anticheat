local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","M_Anticheat")
MySQL = module("vrp_mysql", "MySQL")

MySQL.createCommand("vRP/M_SQLBan", "UPDATE vrp_users SET banned='1' WHERE id = @id")

RegisterServerEvent("M_Anticheat:Weapon")
AddEventHandler("M_Anticheat:Weapon", function()
	local user_id = vRP.getUserId({source})
	local player = vRP.getUserSource({user_id})
	local name = GetPlayerName(source)
	print("\n^1[M_Anticheat] => ^3" ..name.. " ^2ID:"..user_id.. " ^1Has been banned for Cheating!\n [] Type: Spawning Modded Weapons \n [] Ban Appeal: Discord.gg/upH3XVqxjh \n [] Mailar#6308 | M_Anticheat \n")
	-- TriggerClientEvent('chatMessage', -1, '^3[M_Anticheat]', {255, 0, 0}, "^1" ..name.. "^3[ID:" ..user_id.. "]^1 A PRIMIT KICK ^3(reason: WEAPON BLACKLISTED)!" )
    DropPlayer(source, "[M_Anticheat]\n [] Reason: You have been banned for Cheating\n [] Type: Spawning Modded Weapons \n [] Ban Appeal: Discord.gg/upH3XVqxjh \n [] 🛡️Mailar#6308🛡️ 🛡️M_Anticheat🛡️")
	MySQL.query("vRP/M_SQLBan", {id = user_id})
end)

RegisterServerEvent("M_Anticheat:Objects")
AddEventHandler("M_Anticheat:Objects", function()
	local user_id = vRP.getUserId({source})
	local player = vRP.getUserSource({userid})
	local name = GetPlayerName(source)
	print("\n^1[M_Anticheat] => ^3" ..name.. " ^2ID:"..user_id.. " ^1Has been banned for Cheating!\n [] Type: Spawning Modded Objects \n [] Ban Appeal: Discord.gg/upH3XVqxjh \n [] Mailar#6308 | M_Anticheat \n")
	-- TriggerClientEvent('chatMessage', -1, '^3[M_Anticheat]', {255, 0, 0}, "^1" ..name.. "^3[ID:" ..user_id.. "]^1 A PRIMIT KICK ^3(reason: OBJECTS BLACKLISTED)!" )
    DropPlayer(source, "[M_Anticheat]\n [] Reason: You have been banned for Cheating\n [] Type: Spawning Modded Objects \n [] Ban Appeal: Discord.gg/upH3XVqxjh \n [] 🛡️Mailar#6308🛡️ 🛡️M_Anticheat🛡️")
	MySQL.query("vRP/M_SQLBan", {id = user_id})
end)

RegisterServerEvent("M_Anticheat:Cars")
AddEventHandler("M_Anticheat:Cars", function()
	local user_id = vRP.getUserId({source})
	local player = vRP.getUserSource({user_id})
	local name = GetPlayerName(source)
	print("\n^1[M_Anticheat] => ^3" ..name.. " ^2ID:"..user_id.. " ^1Has been banned for Cheating!\n [] Type: Spawning Modded Vehicles \n [] Ban Appeal: Discord.gg/upH3XVqxjh \n [] Mailar#6308 | M_Anticheat \n")
	-- TriggerClientEvent('chatMessage', -1, '^3[M_Anticheat]', {255, 0, 0}, "^1" ..name.. "^3[ID:" ..user_id.. "]^1 A PRIMIT KICK ^3(reason: CARS BLACKLISTED)!" )
    DropPlayer(source, "[M_Anticheat]\n [] Reason: You have been banned for Cheating\n [] Type: Spawning Modded Vehicles \n [] Ban Appeal: Discord.gg/upH3XVqxjh \n [] 🛡️Mailar#6308🛡️ 🛡️M_Anticheat🛡️")
	MySQL.query("vRP/M_SQLBan", {id = user_id})
end)

_vM_Anticheat = '1.0.0'
PerformHttpRequest( "", function( err, text, headers )
	Citizen.Wait( 1000 )
	local resourceName = "("..GetCurrentResourceName()..")"
	RconPrint( "\n^1[M_Anticheat] => Made: Mailar#6308 \n^2[M_Anticheat] => Activated Version: " .. _vM_Anticheat)
	RconPrint( "\n^3$$\'      $$\'         $$$$$$\'             $$\'     $$\'           $$\'                            $$\n$$$\'    $$$ |       $$  __$$\'            $$ |    \'__|          $$ |                           $$ |\n$$$$\'  $$$$ |       $$ /  $$ |$$$$$$$\' $$$$$$\'   $$\'  $$$$$$$\' $$$$$$$\'   $$$$$$\'   $$$$$$\' $$$$$$\n$$\'$$\'$$ $$ |       $$$$$$$$ |$$  __$$\\_$$  _|  $$ |$$  _____|$$  __$$\' $$  __$$\'  \'____$$\\_$$  _|\n$$ \'$$$  $$ |       $$  __$$ |$$ |  $$ | $$ |    $$ |$$ /      $$ |  $$ |$$$$$$$$ | $$$$$$$ | $$ |\n$$ |\'$  /$$ |       $$ |  $$ |$$ |  $$ | $$ |$$\' $$ |$$ |      $$ |  $$ |$$   ____|$$  __$$ | $$ |$$\n$$ | \'_/ $$ |       $$ |  $$ |$$ |  $$ | \'$$$$  |$$ |\'$$$$$$$\' $$ |  $$ |\'$$$$$$$\' \'$$$$$$$ | \'$$$$  |\n\'__|     \'__|$$$$$$\\__|  \'__|\'__|  \'__|  \'____/ \'__| \'_______|\'__|  \'__| \'_______| \'_______|  \'____/\n             \'______|                                                                               \n\n" .. _vM_Anticheat)	
	if ( text ~= _vM_Anticheat ) then
	else
	end
end, "GET", "", { what = 'this' } )
