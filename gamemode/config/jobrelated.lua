-- People often copy jobs. When they do, the GM table does not exist anymore.
-- This line makes the job code work both inside and outside of gamemode files.
-- You should not copy this line into your code.
local GAMEMODE = GAMEMODE or GM
/*--------------------------------------------------------
Default teams. Please do not edit this file. Please use the darkrpmod addon instead.
--------------------------------------------------------*/
TEAM_CITIZEN = DarkRP.createJob("Citizen", {
	color = Color(20, 150, 20, 255),
	model = {
		"models/player/Group01/Female_01.mdl",
		"models/player/Group01/Female_02.mdl",
		"models/player/Group01/Female_03.mdl",
		"models/player/Group01/Female_04.mdl",
		"models/player/Group01/Female_06.mdl",
		"models/player/group01/male_01.mdl",
		"models/player/Group01/Male_02.mdl",
		"models/player/Group01/male_03.mdl",
		"models/player/Group01/Male_04.mdl",
		"models/player/Group01/Male_05.mdl",
		"models/player/Group01/Male_06.mdl",
		"models/player/Group01/Male_07.mdl",
		"models/player/Group01/Male_08.mdl",
		"models/player/Group01/Male_09.mdl"
	},
	description = [[The Citizen is the most basic level of society you can hold besides being a hobo. You have no specific role in city life.]],
	weapons = {},
	command = "citizen",
	max = 0,
	salary = GAMEMODE.Config.normalsalary,
	admin = 0,
	vote = false,
	hasLicense = false,
	candemote = false
})

TEAM_UNDERCOVER = DarkRP.createJob("Citizen", {
	color = Color(20, 150, 20, 255),
	model = {
		"models/player/Group01/Female_01.mdl",
		"models/player/Group01/Female_02.mdl",
		"models/player/Group01/Female_03.mdl",
		"models/player/Group01/Female_04.mdl",
		"models/player/Group01/Female_06.mdl",
		"models/player/group01/male_01.mdl",
		"models/player/Group01/Male_02.mdl",
		"models/player/Group01/male_03.mdl",
		"models/player/Group01/Male_04.mdl",
		"models/player/Group01/Male_05.mdl",
		"models/player/Group01/Male_06.mdl",
		"models/player/Group01/Male_07.mdl",
		"models/player/Group01/Male_08.mdl",
		"models/player/Group01/Male_09.mdl"
	},
	description = [[You are an undercover police officer! Arrest criminals and keep citizens safe. You serve under the police chief.]],
	weapons = {"arrest_stick", "unarrest_stick", "weapon_glock2", "stunstick", "door_ram", "weaponchecker"},
	command = "undercover",
	max = 2,
	salary = GAMEMODE.Config.normalsalary * 1.45,
	admin = 0,
	vote = false,
	hasLicense = false,
	ammo = {
		["pistol"] = 60
	},
	candemote = false
})

TEAM_POLICE = DarkRP.createJob("Civil Protection", {
	color = Color(25, 25, 170, 255),
	model = {"models/player/police.mdl", "models/player/police_fem.mdl"},
	description = [[The protector of every citizen that lives in the city.
		You have the power to arrest criminals and protect innocents.
		Hit a player with your arrest baton to put them in jail.
		Bash a player with a stunstick and they may learn to obey the law.
		The Battering Ram can break down the door of a criminal, with a warrant for their arrest.
		The Battering Ram can also unfreeze frozen props (if enabled).
		Type /wanted <name> to alert the public to the presence of a criminal.]],
	weapons = {"arrest_stick", "unarrest_stick", "weapon_glock2", "stunstick", "door_ram", "weaponchecker"},
	command = "cp",
	max = 4,
	salary = GAMEMODE.Config.normalsalary * 1.45,
	admin = 0,
	vote = true,
	hasLicense = true,
	ammo = {
		["pistol"] = 60
	}
})

TEAM_GANG = DarkRP.createJob("Gangster", {
	color = Color(75, 75, 75, 255),
	model = {
		"models/player/Group03/Female_01.mdl",
		"models/player/Group03/Female_02.mdl",
		"models/player/Group03/Female_03.mdl",
		"models/player/Group03/Female_04.mdl",
		"models/player/Group03/Female_06.mdl",
		"models/player/group03/male_01.mdl",
		"models/player/Group03/Male_02.mdl",
		"models/player/Group03/male_03.mdl",
		"models/player/Group03/Male_04.mdl",
		"models/player/Group03/Male_05.mdl",
		"models/player/Group03/Male_06.mdl",
		"models/player/Group03/Male_07.mdl",
		"models/player/Group03/Male_08.mdl",
		"models/player/Group03/Male_09.mdl"},
	description = [[The lowest person of crime.
		A gangster generally works for the Mobboss who runs the crime family.
		The Mob boss sets your agenda and you follow it or you might be punished.]],
	weapons = {},
	command = "gangster",
	max = 3,
	salary = GAMEMODE.Config.normalsalary,
	admin = 0,
	vote = false,
	hasLicense = false
})

TEAM_MOB = DarkRP.createJob("Mob boss", {
	color = Color(25, 25, 25, 255),
	model = "models/player/gman_high.mdl",
	description = [[The Mob boss is the boss of the criminals in the city.
		With his power he coordinates the gangsters and forms an efficient crime organization.
		He has the ability to break into houses by using a lockpick.
		The Mob boss posesses the ability to unarrest you.]],
	weapons = {"lockpick", "unarrest_stick"},
	command = "mobboss",
	max = 1,
	salary = GAMEMODE.Config.normalsalary * 1.34,
	admin = 0,
	vote = false,
	hasLicense = false
})

TEAM_GUN = DarkRP.createJob("Gun Dealer", {
	color = Color(255, 140, 0, 255),
	model = "models/player/monk.mdl",
	description = [[A Gun Dealer is the only person who can sell guns to other people.
		Make sure you aren't caught selling illegal firearms to the public! You might get arrested!]],
	weapons = {},
	command = "gundealer",
	max = 2,
	salary = GAMEMODE.Config.normalsalary,
	admin = 0,
	vote = false,
	hasLicense = false
})

TEAM_MEDIC = DarkRP.createJob("Medic", {
	color = Color(47, 79, 79, 255),
	model = "models/player/kleiner.mdl",
	description = [[With your medical knowledge you work to restore players to full health.
		Without a medic, people cannot be healed.
		Left click with the Medical Kit to heal other players.
		Right click with the Medical Kit to heal yourself.]],
	weapons = {"med_kit"},
	command = "medic",
	max = 3,
	salary = GAMEMODE.Config.normalsalary,
	admin = 0,
	vote = false,
	hasLicense = false,
	medic = true
})

TEAM_CHIEF = DarkRP.createJob("Civil Protection Chief", {
	color = Color(20, 20, 255, 255),
	model = "models/player/combine_soldier_prisonguard.mdl",
	description = [[The Chief is the leader of the Civil Protection unit.
		Coordinate the police force to enforce law in the city.
		Hit a player with arrest baton to put them in jail.
		Bash a player with a stunstick and they may learn to obey the law.
		The Battering Ram can break down the door of a criminal, with a warrant for his/her arrest.
		Type /wanted <name> to alert the public to the presence of a criminal.
		Type /jailpos to set the Jail Position]],
	weapons = {"arrest_stick", "unarrest_stick", "weapon_deagle2", "stunstick", "door_ram", "weaponchecker"},
	command = "chief",
	max = 1,
	salary = GAMEMODE.Config.normalsalary * 1.67,
	admin = 0,
	vote = false,
	hasLicense = true,
	chief = true,
	NeedToChangeFrom = TEAM_POLICE,
	ammo = {
		["pistol"] = 60
	}
})

TEAM_MAYOR = DarkRP.createJob("Mayor", {
	color = Color(150, 20, 20, 255),
	model = "models/player/breen.mdl",
	description = [[The Mayor of the city creates laws to govern the city.
	If you are the mayor you may create and accept warrants.
	Type /wanted <name>  to warrant a player.
	Type /jailpos to set the Jail Position.
	Type /lockdown initiate a lockdown of the city.
	Everyone must be inside during a lockdown.
	The cops patrol the area.
	/unlockdown to end a lockdown]],
	weapons = {},
	command = "mayor",
	max = 1,
	salary = GAMEMODE.Config.normalsalary * 1.89,
	admin = 0,
	vote = true,
	hasLicense = false,
	mayor = true
})

TEAM_HOBO = DarkRP.createJob("Hobo", {
	color = Color(80, 45, 0, 255),
	model = "models/player/corpse1.mdl",
	description = [[The lowest member of society. Everybody laughs at you.
		You have no home.
		Beg for your food and money
		Sing for everyone who passes to get money
		Make your own wooden home somewhere in a corner or outside someone else's door]],
	weapons = {"weapon_bugbait"},
	command = "hobo",
	max = 5,
	salary = 0,
	admin = 0,
	vote = false,
	hasLicense = false,
	candemote = false,
	hobo = true
})

TEAM_NULL = DarkRP.createJob("infoplayerstart.mdl", {
	color = Color(35, 46, 142, 255),
	model = "models/player/infoplayerstart.mdl",
	description = [[This class serves no purpose what so ever.
	It's only here for later use in code.]],
	weapons = {},
	command = "null",
	max = 1,
	salary = 0,
	admin = 2,
	vote = false,
	hasLicense = false,
	candemote = false
})

TEAM_OWNER = AddExtraTeam("Server Owner", Color(153, 51, 255, 255), "models/player/tesla_power_armor/slow.mdl", [[The almighty server owners!]], {}, "owner", 3, 500, 2, false, false, false)

TEAM_SWAT = AddExtraTeam("Swat Member", Color(51, 0, 204, 255), "models/player/group04/male_07.mdl", [[You are a swat member. You will be called when the
cops need heavy fire power. You server under the 
swat chief]], {}, "swat", 4, 60, 0, true, false, false)

TEAM_SWATCHIEF = AddExtraTeam("Swat Chief", Color(51, 0, 204, 255), "models/player/deltaforce/m04.mdl", [[You are the swat chief. Command the swat team and
lead them into battle. You serve under the mayor.]], {}, "swatchief", 1, 60, 0, true, false, {TEAM_SWAT})



-- Compatibility for when default teams are disabled
TEAM_CITIZEN = TEAM_CITIZEN  or -1
TEAM_POLICE  = TEAM_POLICE   or -1
TEAM_GANG    = TEAM_GANG     or -1
TEAM_MOB     = TEAM_MOB      or -1
TEAM_GUN     = TEAM_GUN      or -1
TEAM_MEDIC   = TEAM_MEDIC    or -1
TEAM_CHIEF   = TEAM_CHIEF    or -1
TEAM_MAYOR   = TEAM_MAYOR    or -1
TEAM_HOBO    = TEAM_HOBO     or -1


/*
--------------------------------------------------------
HOW TO MAKE A DOOR GROUP
--------------------------------------------------------
AddDoorGroup("NAME OF THE GROUP HERE, you see this when looking at a door", Team1, Team2, team3, team4, etc.)


The default door groups, can also be used as examples:
*/
AddDoorGroup("Cops and Mayor only", TEAM_CHIEF, TEAM_POLICE, TEAM_MAYOR, TEAM_UNDERCOVER)
AddDoorGroup("Jail Door", TEAM_MAYOR, TEAM_POLICE)
AddDoorGroup("Reserved1", TEAM_NULL)
AddDoorGroup("Reserved2", TEAM_NULL)
AddDoorGroup("Reserved3", TEAM_NULL)

/*
--------------------------------------------------------
HOW TO MAKE AN AGENDA
--------------------------------------------------------
AddAgenda(Title of the agenda, Manager (who edits it), Listeners (the ones who just see and follow the agenda))

The default agenda's, can also be used as examples:
*/
AddAgenda("Gangster's agenda", TEAM_MOB, {TEAM_GANG})
AddAgenda("Police agenda", TEAM_MAYOR, {TEAM_UNDERCOVER, TEAM_POLICE})
AddAgenda("Null Agenda", TEAM_NULL, {TEAM_NULL})

/*
---------------------------------------------------------------------------
HOW TO MAKE A GROUP CHAT
---------------------------------------------------------------------------
Pick one!
GAMEMODE:AddGroupChat(List of team variables separated by comma)

or

GAMEMODE:AddGroupChat(a function with ply as argument that returns whether a random player is in one chat group)
This one is for people who know how to script Lua.

*/
GAMEMODE:AddGroupChat(function(ply) return ply:isCP() end)
GAMEMODE:AddGroupChat(TEAM_MOB, TEAM_GANG)
GAMEMODE:AddGroupChat(TEAM_NULL)

/*---------------------------------------------------------------------------
Define which team joining players spawn into and what team you change to if demoted
---------------------------------------------------------------------------*/
GAMEMODE.DefaultTeam = TEAM_CITIZEN

/*---------------------------------------------------------------------------
Define which teams belong to civil protection
Civil protection can set warrants, make people wanted and do some other police related things
---------------------------------------------------------------------------*/
GAMEMODE.CivilProtection = {
	[TEAM_POLICE] = true,
	[TEAM_CHIEF] = true,
	[TEAM_MAYOR] = true,
	[TEAM_UNDERCOVER] = true
}

/*---------------------------------------------------------------------------
Enable hitman goodies on this team
---------------------------------------------------------------------------*/
DarkRP.addHitmanTeam(TEAM_HITMAN)

/*---------------------------------------------------------------------------
Default demote groups
---------------------------------------------------------------------------*/
DarkRP.createDemoteGroup("Cops", {TEAM_POLICE, TEAM_CHIEF})
DarkRP.createDemoteGroup("Gangsters", {TEAM_GANG, TEAM_MOB})
DarkRP.createDemoteGroup("Mayor", {TEAM_CHIEF, TEAM_MAYOR})
