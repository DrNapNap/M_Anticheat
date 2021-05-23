--[[
	[Anticheat by Mailar#6308]
	[Credits - Mailar#6308]
	[Free Release]
	[Github - github.com/Mailar23]
	[Copyright 2021 ©Mailar M_Anticheat]

	= Information =
	This anticheat took me forever to make finding blacklisting events, objects, cars, guns
	It's 2 versions this one is vRP another one is for ESX.

	I hate modder's how they try to be better then server creators that's why I published this for free release!
	You can modify this Anticheat all rights for you, but remember who made this original version!

	Let's help the fivem community and make sure no modders fucking up people servers fivem is maded for roleplaying not modding.

	= F.A.Q =
	Anticheat doesn't need a lot coding skill it's just basic stuff and coding.
	If you want to add some objects like more then I added you are feel to do it link here for gta5 object list.
	https://gta-objects.xyz/objects?page=245
	This anticheat wont fix ur problems with spawning money it's only does this things listed below.

	• Stops modders spawning ramps
	• Stops modders spawning vehicles
	• Stops modders spawning guns
	• Then there is basic events inside client.lua not sure how they works below code line 57-445

    M_Anticheat is good for FPS and it don't make ur server lag.
]]

description "M_Anticheat"

dependency "vrp"

client_scripts {
    "client.lua"
}
server_scripts {
    "@vrp/lib/utils.lua",
    '@mysql-async/lib/MySQL.lua',
    "server.lua"
}