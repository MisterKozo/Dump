#include <a_samp>

#define dcmd(%1,%2) if ((strcmp((cmdtext)[1], #%1, true, (%2)) == 0) && ((((cmdtext)[(%2) + 1] == 0) && (dcmd_%1(playerid, name, "")))||(((cmdtext)[(%2) + 1] == 32) && (dcmd_%1(playerid, name, (cmdtext)[(%2) + 2]))))) return 1

#define COLOR_GREY 0xAFAFAFAA
#define COLOR_ACTIVEBORDER 0xB4B4B4FF
#define COLOR_ACTIVECAPTION 0x99B4D1FF
#define COLOR_ACTIVECAPTIONTEXT 0x000000FF
#define COLOR_ALICEBLUE 0xF0F8FFFF
#define COLOR_ANTIQUEWHITE 0xFAEBD7FF
#define COLOR_APPWORKSPACE 0xABABABFF
#define COLOR_AQUA 0x00FFFFFF
#define COLOR_AQUAMARINE 0x7FFFD4FF
#define COLOR_AZURE 0xF0FFFFFF
#define COLOR_BEIGE 0xF5F5DCFF
#define COLOR_BISQUE 0xFFE4C4FF
#define COLOR_BLACK 0x000000FF
#define COLOR_BLANCHEDALMOND 0xFFEBCDFF
#define COLOR_BLUE 0x0000FFFF
#define COLOR_BLUEVIOLET 0x8A2BE2FF
#define COLOR_BROWN 0xA52A2AFF
#define COLOR_BURLYWOOD 0xDEB887FF
#define COLOR_BUTTONFACE 0xF0F0F0FF
#define COLOR_BUTTONHIGHLIGHT 0xFFFFFFFF
#define COLOR_BUTTONSHADOW 0xA0A0A0FF
#define COLOR_CADETBLUE 0x5F9EA0FF
#define COLOR_CHARTREUSE 0x7FFF00FF
#define COLOR_CHOCOLATE 0xD2691EFF
#define COLOR_CONTROL 0xF0F0F0FF
#define COLOR_CONTROLDARK 0xA0A0A0FF
#define COLOR_CONTROLDARKDARK 0x696969FF
#define COLOR_CONTROLLIGHT 0xE3E3E3FF
#define COLOR_CONTROLLIGHTLIGHT 0xFFFFFFFF
#define COLOR_CONTROLTEXT 0x000000FF
#define COLOR_CORAL 0xFF7F50FF
#define COLOR_CORNFLOWERBLUE 0x6495EDFF
#define COLOR_CORNSILK 0xFFF8DCFF
#define COLOR_CRIMSON 0xDC143CFF
#define COLOR_CYAN 0x00FFFFFF
#define COLOR_DARKBLUE 0x00008BFF
#define COLOR_DARKCYAN 0x008B8BFF
#define COLOR_DARKGOLDENROD 0xB8860BFF
#define COLOR_DARKGRAY 0xA9A9A9FF
#define COLOR_DARKGREEN 0x006400FF
#define COLOR_DARKKHAKI 0xBDB76BFF
#define COLOR_DARKMAGENTA 0x8B008BFF
#define COLOR_DARKOLIVEGREEN 0x556B2FFF
#define COLOR_DARKORANGE 0xFF8C00FF
#define COLOR_DARKORCHID 0x9932CCFF
#define COLOR_DARKRED 0x8B0000FF
#define COLOR_DARKSALMON 0xE9967AFF
#define COLOR_DARKSEAGREEN 0x8FBC8BFF
#define COLOR_DARKSLATEBLUE 0x483D8BFF
#define COLOR_DARKSLATEGRAY 0x2F4F4FFF
#define COLOR_DARKTURQUOISE 0x00CED1FF
#define COLOR_DARKVIOLET 0x9400D3FF
#define COLOR_DEEPPINK 0xFF1493FF
#define COLOR_DEEPSKYBLUE 0x00BFFFFF
#define COLOR_DESKTOP 0x000000FF
#define COLOR_DIMGRAY 0x696969FF
#define COLOR_DODGERBLUE 0x1E90FFFF
#define COLOR_FIREBRICK 0xB22222FF
#define COLOR_FLORALWHITE 0xFFFAF0FF
#define COLOR_FORESTGREEN 0x228B22FF
#define COLOR_FUCHSIA 0xFF00FFFF
#define COLOR_GAINSBORO 0xDCDCDCFF
#define COLOR_GHOSTWHITE 0xF8F8FFFF
#define COLOR_GOLD 0xFFD700FF
#define COLOR_GOLDENROD 0xDAA520FF
#define COLOR_GRADIENTACTIVECAPTION 0xB9D1EAFF
#define COLOR_GRADIENTINACTIVECAPTION 0xD7E4F2FF
#define COLOR_GRAY 0x808080FF
#define COLOR_GRAYTEXT 0x808080FF
#define COLOR_GREEN 0x008000FF
#define COLOR_GREENYELLOW 0xADFF2FFF
#define COLOR_HIGHLIGHT 0x3399FFFF
#define COLOR_HIGHLIGHTTEXT 0xFFFFFFFF
#define COLOR_HONEYDEW 0xF0FFF0FF
#define COLOR_HOTPINK 0xFF69B4FF
#define COLOR_HOTTRACK 0x0066CCFF
#define COLOR_INACTIVEBORDER 0xF4F7FCFF
#define COLOR_INACTIVECAPTION 0xBFCDDBFF
#define COLOR_INACTIVECAPTIONTEXT 0x434E54FF
#define COLOR_INDIANRED 0xCD5C5CFF
#define COLOR_INDIGO 0x4B0082FF
#define COLOR_INFO 0xFFFFE1FF
#define COLOR_INFOTEXT 0x000000FF
#define COLOR_IVORY 0xFFFFF0FF
#define COLOR_KHAKI 0xF0E68CFF
#define COLOR_LAVENDER 0xE6E6FAFF
#define COLOR_LAVENDERBLUSH 0xFFF0F5FF
#define COLOR_LAWNGREEN 0x7CFC00FF
#define COLOR_LEMONCHIFFON 0xFFFACDFF
#define COLOR_LIGHTBLUE 0xADD8E6FF
#define COLOR_LIGHTCORAL 0xF08080FF
#define COLOR_LIGHTCYAN 0xE0FFFFFF
#define COLOR_LIGHTGOLDENRODYELLOW 0xFAFAD2FF
#define COLOR_LIGHTGRAY 0xD3D3D3FF
#define COLOR_LIGHTGREEN 0x90EE90FF
#define COLOR_LIGHTPINK 0xFFB6C1FF
#define COLOR_LIGHTSALMON 0xFFA07AFF
#define COLOR_LIGHTSEAGREEN 0x20B2AAFF
#define COLOR_LIGHTSKYBLUE 0x87CEFAFF
#define COLOR_LIGHTSLATEGRAY 0x778899FF
#define COLOR_LIGHTSTEELBLUE 0xB0C4DEFF
#define COLOR_LIGHTYELLOW 0xFFFFE0FF
#define COLOR_LIME 0x00FF00FF
#define COLOR_LIMEGREEN 0x32CD32FF
#define COLOR_LINEN 0xFAF0E6FF
#define COLOR_MAGENTA 0xFF00FFFF
#define COLOR_MAROON 0x800000FF
#define COLOR_MEDIUMAQUAMARINE 0x66CDAAFF
#define COLOR_MEDIUMBLUE 0x0000CDFF
#define COLOR_MEDIUMORCHID 0xBA55D3FF
#define COLOR_MEDIUMPURPLE 0x9370DBFF
#define COLOR_MEDIUMSEAGREEN 0x3CB371FF
#define COLOR_MEDIUMSLATEBLUE 0x7B68EEFF
#define COLOR_MEDIUMSPRINGGREEN 0x00FA9AFF
#define COLOR_MEDIUMTURQUOISE 0x48D1CCFF
#define COLOR_MEDIUMVIOLETRED 0xC71585FF
#define COLOR_MENU 0xF0F0F0FF
#define COLOR_MENUBAR 0xF0F0F0FF
#define COLOR_MENUHIGHLIGHT 0x3399FFFF
#define COLOR_MENUTEXT 0x000000FF
#define COLOR_MIDNIGHTBLUE 0x191970FF
#define COLOR_MINTCREAM 0xF5FFFAFF
#define COLOR_MISTYROSE 0xFFE4E1FF
#define COLOR_MOCCASIN 0xFFE4B5FF
#define COLOR_NAVAJOWHITE 0xFFDEADFF
#define COLOR_NAVY 0x000080FF
#define COLOR_OLDLACE 0xFDF5E6FF
#define COLOR_OLIVE 0x808000FF
#define COLOR_OLIVEDRAB 0x6B8E23FF
#define COLOR_ORANGE 0xFFA500FF
#define COLOR_ORANGERED 0xFF4500FF
#define COLOR_ORCHID 0xDA70D6FF
#define COLOR_PALEGOLDENROD 0xEEE8AAFF
#define COLOR_PALEGREEN 0x98FB98FF
#define COLOR_PALETURQUOISE 0xAFEEEEFF
#define COLOR_PALEVIOLETRED 0xDB7093FF
#define COLOR_PAPAYAWHIP 0xFFEFD5FF
#define COLOR_PEACHPUFF 0xFFDAB9FF
#define COLOR_PERU 0xCD853FFF
#define COLOR_PINK 0xFFC0CBFF
#define COLOR_PLUM 0xDDA0DDFF
#define COLOR_POWDERBLUE 0xB0E0E6FF
#define COLOR_PURPLE 0x800080FF
#define COLOR_RED 0xFF0000FF
#define COLOR_ROSYBROWN 0xBC8F8FFF
#define COLOR_ROYALBLUE 0x4169E1FF
#define COLOR_SADDLEBROWN 0x8B4513FF
#define COLOR_SALMON 0xFA8072FF
#define COLOR_SANDYBROWN 0xF4A460FF
#define COLOR_SCROLLBAR 0xC8C8C8FF
#define COLOR_SEAGREEN 0x2E8B57FF
#define COLOR_SEASHELL 0xFFF5EEFF
#define COLOR_SIENNA 0xA0522DFF
#define COLOR_SILVER 0xC0C0C0FF
#define COLOR_SKYBLUE 0x87CEEBFF
#define COLOR_SLATEBLUE 0x6A5ACDFF
#define COLOR_SLATEGRAY 0x708090FF
#define COLOR_SNOW 0xFFFAFAFF
#define COLOR_SPRINGGREEN 0x00FF7FFF
#define COLOR_STEELBLUE 0x4682B4FF
#define COLOR_TAN 0xD2B48CFF
#define COLOR_TEAL 0x008080FF
#define COLOR_THISTLE 0xD8BFD8FF
#define COLOR_TOMATO 0xFF6347FF
#define COLOR_TRANSPARENT 0xFFFFFF00
#define COLOR_TURQUOISE 0x40E0D0FF
#define COLOR_VIOLET 0xEE82EEFF
#define COLOR_WHEAT 0xF5DEB3FF
#define COLOR_WHITE 0xFFFFFFFF
#define COLOR_WHITESMOKE 0xF5F5F5FF
#define COLOR_WINDOW 0xFFFFFFFF
#define COLOR_WINDOWFRAME 0x646464FF
#define COLOR_WINDOWTEXT 0x000000FF
#define COLOR_YELLOW 0xFFFF00FF
#define COLOR_YELLOWGREEN 0x9ACD32FF
#define COLOR_STEALTH_ORANGE 0xFF880000
#define COLOR_STEALTH_OLIVE 0x66660000
#define COLOR_STEALTH_GREEN 0x33DD1100
#define COLOR_STEALTH_PINK 0xFF22EE00
#define COLOR_STEALTH_BLUE 0x0077BB00

#define DERBY_TIME_WAIT 6
#define DERBY_TIME_GAME 18

enum eCoordinates
{
	Float:X,
	Float:Y,
	Float:Z,
	Float:A
}

enum ePlayerInfo
{
	NAME[24],
	ANIMS_PRELOADED,
	IN_MINIGAME,
	COORDINATES[eCoordinates],
	VEHICLE,
	OLD_COORDINATES[eCoordinates],
	OLD_VEHICLE
};

enum eGameCar
{
	bool:ACTIVE,
	TIME_WAIT,
	TIME_GAME,
	PLAYER[MAX_PLAYERS],
	VEHICLE[MAX_PLAYERS],
	WATCHDOG,
	WATCHDOG_ACTIVE,
	PLAYING,
	MSG[MAX_PLAYERS],
}

new gPlayerInfo[MAX_PLAYERS][ePlayerInfo];

new gMiniDerby[eGameCar];
new gMiniDerbySpawn[MAX_PLAYERS][eCoordinates];
new gMiniRace[eGameCar];

/*
{
	[1] {
	    STAT1,
		...
	},
	...
}
0- in minigame (0 or 1)
1- player VW
2- player pos

EXAMPLES:
gPlayerInfo[playerid][0] = 1 // set minigame on
new playerVirtualWorld = gPlayerInfo[playerid][1]
*/

/*new mgDerbyActive;
new mgDerbyPlaying;
new mgDerbyPlayers[MAX_PLAYERS];
new mgDerbyWatchdogTimer;
new mgDerbyWaitTime;
new mgDerbyGameTime;
new mgDerbyTime;
new mgDerbyVehicles[MAX_PLAYERS];
new mgDerbyPlayersPos[MAX_PLAYERS][eCoordinates];*/

main()
{
	print("\n----------------------------------");
	print(" Loaded gamemode");
	print("----------------------------------\n");
}

strtok(const string[], &index)
{
	new length = strlen(string);
	while ((index < length) && (string[index] <= ' '))
	{
		index++;
	}

	new offset = index;
	new result[20];
	while ((index < length) && (string[index] > ' ') && ((index - offset) < (sizeof(result) - 1)))
	{
		result[index - offset] = string[index];
		index++;
	}
	result[index - offset] = EOS;
	return result;
}

IsNumeric(const string[]) {
	if (!strlen(string))
	    return 0;
	for (new i = 0; i < strlen(string); i++) {
		if (string[i] > '9' || string[i] < '0') {
			return 0;
		}
	}
	return 1;
}

IsValidSkin(const skinid) {
	return skinid >= 0 && skinid <= 312;
}

AnnulPlayerInfo(playerid) {
	GameMinigamesExit(playerid);
	for (new i = 0; i < 2; i++) {
	    gPlayerInfo[playerid][i] = 0;
	}
}

CachePlayerState(playerid) {
	gPlayerInfo[playerid][OLD_VEHICLE] = gPlayerInfo[playerid][VEHICLE];
	gPlayerInfo[playerid][OLD_COORDINATES][X] = gPlayerInfo[playerid][COORDINATES][X];
	gPlayerInfo[playerid][OLD_COORDINATES][Y] = gPlayerInfo[playerid][COORDINATES][Y];
	gPlayerInfo[playerid][OLD_COORDINATES][Z] = gPlayerInfo[playerid][COORDINATES][Z];
}

RestoreCachedPlayerState(playerid) {
	//vehicle
	SetPlayerPos(playerid, gPlayerInfo[playerid][OLD_COORDINATES][X], gPlayerInfo[playerid][OLD_COORDINATES][Y], gPlayerInfo[playerid][OLD_COORDINATES][Z]);
}

PreloadAnimLib(playerid, animlib[])
{
    ApplyAnimation(playerid,animlib,"null",0.0,0,0,0,0,0);
}

PreloadAnimsFor(playerid) {
	if(!gPlayerInfo[playerid][ANIMS_PRELOADED]) {
   		PreloadAnimLib(playerid,"BOMBER");
   		PreloadAnimLib(playerid,"RAPPING");
		PreloadAnimLib(playerid,"SHOP");
   		PreloadAnimLib(playerid,"BEACH");
   		PreloadAnimLib(playerid,"SMOKING");
   		PreloadAnimLib(playerid,"FOOD");
   		PreloadAnimLib(playerid,"ON_LOOKERS");
   		PreloadAnimLib(playerid,"DEALER");
	 	PreloadAnimLib(playerid,"CRACK");
		PreloadAnimLib(playerid,"CARRY");
		PreloadAnimLib(playerid,"COP_AMBIENT");
		PreloadAnimLib(playerid,"PARK");
		PreloadAnimLib(playerid,"INT_HOUSE");
		PreloadAnimLib(playerid,"FOOD");
		PreloadAnimLib(playerid,"PAULNMAC");
		PreloadAnimLib(playerid,"KISSING");
		PreloadAnimLib(playerid,"FIGHT_E");
		PreloadAnimLib(playerid,"FIGHT_B");
		PreloadAnimLib(playerid,"DANCING");

		gPlayerInfo[playerid][ANIMS_PRELOADED] = 1;
	}
}

AnnouncePlayerConnect(playerid) {
    new name[24];
	GetPlayerName(playerid, name, sizeof(name));
	gPlayerInfo[playerid][NAME] = name;
	
	new message_options[][] = {
	    "Don't be too harsh on %s, as they have just joined the server!",
	    "Say hi to %s, who has just joined the server!",
	    "%s has joined the server, give them a big hug!"
	};
	new message_choice = random(sizeof(message_options));
	new message[256];
	format(message, sizeof(message), message_options[message_choice], name);
	SendClientMessageToAll(COLOR_GREEN, message);
}

AnnouncePlayerDisconnect(playerid, reason) {
	new name[24];
	name = gPlayerInfo[playerid][NAME];
	new modifiedReason[sizeof(reason)+11];
	if (reason)
	    format(modifiedReason, sizeof(modifiedReason), " because [%s]", reason);
	else
	    modifiedReason = "";
	new message_options[][] = {
	    "%s has just left us%s, and we are left to wonder why.",
	    "%s chose to leave us because%s, and we are now alone.",
	    "May god have mercy on %s, as they have just left us"
	};
    new message_choice = random(sizeof(message_options));
	new message[256];
	format(message, sizeof(message), message_options[message_choice], name, modifiedReason);
	SendClientMessageToAll(COLOR_GRAY, message);
}

public OnGameModeInit()
{
	SetGameModeText("Experimental");
	AddPlayerClass(97, 1958.3783, 1343.1572, 15.3746, 269.1425, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(11, 1958.3783, 1343.1572, 15.3746, 269.1425, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(22, 1958.3783, 1343.1572, 15.3746, 269.1425, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(33, 1958.3783, 1343.1572, 15.3746, 269.1425, 0, 0, 0, 0, 0, 0);
	
	GameAddSpawnDerby(0,2595.1360,1351.3921,78.4764,182.3793);
	GameAddSpawnDerby(1,2604.7358,1347.1931,78.4764,88.1611);
	GameAddSpawnDerby(2,2604.0481,1341.1755,78.4764,88.1611);
	GameAddSpawnDerby(3,2603.6316,1335.7526,78.4764,178.1611);
	GameAddSpawnDerby(4,2603.5154,1332.1128,78.4764,178.1611);
	GameAddSpawnDerby(5,2594.6121,1332.7386,78.4764,359.4869);
	GameAddSpawnDerby(6,2589.9678,1333.2710,78.4764,359.4869);
	GameAddSpawnDerby(7,2585.0125,1333.2919,78.4764,359.4869);
	GameAddSpawnDerby(8,2578.9165,1332.8741,78.4764,359.4869);
	GameAddSpawnDerby(9,2574.6921,1332.7535,78.4764,359.4869);
	GameAddSpawnDerby(10,2569.4851,1332.8286,78.4764,359.4869);
	GameAddSpawnDerby(11,2562.0022,1332.6877,78.4764,359.4869);
	GameAddSpawnDerby(12,2556.4890,1332.6393,78.4764,359.4869);
	GameAddSpawnDerby(13,2552.6257,1332.9170,78.4764,89.4870);
	GameAddSpawnDerby(14,2548.9507,1332.9501,78.4764,89.4870);
	GameAddSpawnDerby(15,2547.0757,1339.2565,78.4764,267.3660);
	GameAddSpawnDerby(16,2549.1284,1344.7178,78.4764,267.3660);
	GameAddSpawnDerby(17,2549.5498,1348.6635,78.4764,357.3660);
	GameAddSpawnDerby(18,2550.0618,1353.5509,78.4764,267.3660);
	GameAddSpawnDerby(19,2560.5422,1352.9929,78.4764,176.1852);
	GameAddSpawnDerby(20,2567.4280,1352.4198,78.4764,176.1852);
	GameAddSpawnDerby(21,2572.8884,1352.1987,78.4764,176.1852);
	GameAddSpawnDerby(22,2578.5190,1351.9061,78.4764,176.1852);
	GameAddSpawnDerby(23,2583.7488,1351.7079,78.4764,182.3793);
	GameAddSpawnDerby(24,2589.0444,1351.0259,78.4764,182.3793);
	return 1;
}

public OnGameModeExit()
{
	return 1;
}

public OnPlayerRequestClass(playerid, classid)
{
	SetPlayerPos(playerid, 1958.3783, 1343.1572, 15.3746);
	SetPlayerFacingAngle(playerid,89.1425);
	SetPlayerCameraPos(playerid, 1953.3783, 1343.1572, 16.0000);
	SetPlayerCameraLookAt(playerid, 1958.3783, 1343.1572, 15.3746);
	PlayerPlaySound(playerid, 534, 1958.3783, 1343.1572, 15.3746);
	gPlayerInfo[playerid][ANIMS_PRELOADED] = 0;
	PreloadAnimsFor(playerid);
	ApplyAnimation(playerid, "DANCING", "dnce_M_b", 4.0, 1, 1, 1, 0, -1);
	return 1;
}

public OnPlayerConnect(playerid)
{
	PreloadAnimsFor(playerid);
	AnnouncePlayerConnect(playerid);
	return 1;
}

public OnPlayerDisconnect(playerid, reason)
{
	AnnouncePlayerDisconnect(playerid, reason);
	AnnulPlayerInfo(playerid);
	return 1;
}

public OnPlayerSpawn(playerid)
{
	PlayerPlaySound(playerid, 39000, 1958.3783, 1343.1572, 15.3746);
	return 1;
}

public OnPlayerDeath(playerid, killerid, reason)
{
	return 1;
}

public OnVehicleSpawn(vehicleid)
{
	return 1;
}

public OnVehicleDeath(vehicleid, killerid)
{
	new mg_derby_ownerid = -1;
	for (new i = 0; i < MAX_PLAYERS; i++) {
	    if (gMiniDerby[VEHICLE][i] == vehicleid) {
	        mg_derby_ownerid = i;
	        i = MAX_PLAYERS;
		}
	}
	if (mg_derby_ownerid >= 0 && gMiniDerby[PLAYER][mg_derby_ownerid] != 0) {
	    gMiniDerby[PLAYER][mg_derby_ownerid] = 1;
	    GameSpectateDerby(mg_derby_ownerid);
	}
	DestroyVehicle(vehicleid);
	return 1;
}

public OnPlayerText(playerid, text[])
{
	return 1;
}

public OnPlayerCommandText(playerid, cmdtext[])
{
	new name[256];
	GetPlayerName(playerid, name, sizeof(name));
	printf("[command] %s: %s",name,cmdtext);

	dcmd(exit, 4);

	if (gPlayerInfo[playerid][IN_MINIGAME] != 0) {
	    return SendClientMessage(playerid, COLOR_RED, "You can't use this command right now! /exit to leave the minigame.");
 	}
 	//CachePlayerState(playerid);

	dcmd(me, 2);
	dcmd(kill, 4);
	dcmd(skin, 4);

	dcmd(derby, 5);

	SendClientMessage(playerid, COLOR_RED, "What are you trying to do there, punk?");
	return 1;
}

public OnPlayerEnterVehicle(playerid, vehicleid, ispassenger)
{
	return 1;
}

public OnPlayerExitVehicle(playerid, vehicleid)
{
	if (gMiniDerby[PLAYER][playerid] != 0) {
	    gMiniDerby[PLAYER][playerid] = 1;
	    DestroyVehicle(vehicleid);
	    GameSpectateDerby(playerid);
	}
	return 1;
}

public OnPlayerStateChange(playerid, newstate, oldstate)
{
	gPlayerInfo[playerid][VEHICLE] = GetPlayerVehicleID(playerid);
	return 1;
}

public OnPlayerEnterCheckpoint(playerid)
{
	return 1;
}

public OnPlayerLeaveCheckpoint(playerid)
{
	return 1;
}

public OnPlayerEnterRaceCheckpoint(playerid)
{
	return 1;
}

public OnPlayerLeaveRaceCheckpoint(playerid)
{
	return 1;
}

public OnRconCommand(cmd[])
{
	return 1;
}

public OnPlayerRequestSpawn(playerid)
{
	return 1;
}

public OnObjectMoved(objectid)
{
	return 1;
}

public OnPlayerObjectMoved(playerid, objectid)
{
	return 1;
}

public OnPlayerPickUpPickup(playerid, pickupid)
{
	return 1;
}

public OnVehicleMod(playerid, vehicleid, componentid)
{
	return 1;
}

public OnVehiclePaintjob(playerid, vehicleid, paintjobid)
{
	return 1;
}

public OnVehicleRespray(playerid, vehicleid, color1, color2)
{
	return 1;
}

public OnPlayerSelectedMenuRow(playerid, row)
{
	return 1;
}

public OnPlayerExitedMenu(playerid)
{
	return 1;
}

public OnPlayerInteriorChange(playerid, newinteriorid, oldinteriorid)
{
	return 1;
}

public OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
	return 1;
}

public OnRconLoginAttempt(ip[], password[], success)
{
	return 1;
}

public OnPlayerUpdate(playerid)
{
	new Float:x;
	new Float:y;
	new Float:z;
	GetPlayerPos(playerid, x, y, z);
	gPlayerInfo[playerid][COORDINATES][X] = x;
	gPlayerInfo[playerid][COORDINATES][Y] = y;
	gPlayerInfo[playerid][COORDINATES][Z] = z;
	CachePlayerState(playerid);
	return 1;
}

public OnPlayerStreamIn(playerid, forplayerid)
{
	return 1;
}

public OnPlayerStreamOut(playerid, forplayerid)
{
	return 1;
}

public OnVehicleStreamIn(vehicleid, forplayerid)
{
	return 1;
}

public OnVehicleStreamOut(vehicleid, forplayerid)
{
	return 1;
}

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	return 1;
}

public OnPlayerClickPlayer(playerid, clickedplayerid, source)
{
	return 1;
}

GameAddSpawnDerby(i, Float:x, Float:y, Float:z, Float:a) {
	gMiniDerbySpawn[i][X] = x;
	gMiniDerbySpawn[i][Y] = y;
	gMiniDerbySpawn[i][Z] = z;
	gMiniDerbySpawn[i][A] = a;
	new message[256];
	format(message, sizeof(message), "[%d]: %f %f %f %f", i, x, y, z, a);
	printf(message);
}

GameTextDerby(color, message[]) {
	for (new i = 0; i < MAX_PLAYERS; i++) {
	    if (gMiniDerby[PLAYER][i] != 0) {
			TextDrawDestroy(gMiniDerby[MSG][i]);
			gMiniDerby[MSG][i] = TextDrawCreate(90.0, 100.0, message);
			TextDrawUseBox(gMiniDerby[MSG][i], 1);
			TextDrawShowForPlayer(i, gMiniDerby[MSG][i]);
	    }
	}
}

GameMessageDerby(color, message[]) {
	for (new i = 0; i < MAX_PLAYERS; i++) {
	    if (gMiniDerby[PLAYER][i] != 0) {
	        SendClientMessage(i, color, message);
	    }
	}
}

public GameWatchdogDerby() {
	new alive = 0;
	new participating = 0;
    for (new i = 0; i < MAX_PLAYERS; i++) {
		if (gMiniDerby[PLAYER][i] == 2) {
	    	if (gPlayerInfo[i][COORDINATES][Z] < 70) {
  			  	gMiniDerby[PLAYER][i] = 1;
			    DestroyVehicle(gMiniDerby[VEHICLE][i]);
			    GameSpectateDerby(i);
			} else {
		    	alive++;
		    	participating++;
		    }
		}
		if (gMiniDerby[PLAYER][i] == 1) {
		    participating++;
		}
	}
	new message[256];
	new left = gMiniDerby[TIME_WAIT] + gMiniDerby[TIME_GAME];
	format(message, sizeof(message), "Left: %d    Part.: %d    Time: %d", alive, participating, left);
	GameTextDerby(COLOR_PINK, message);
	if (!gMiniDerby[PLAYING]) {
	    if (participating == 1) {
	    	if (gMiniDerby[TIME_WAIT] > 0 && gMiniDerby[TIME_WAIT] < DERBY_TIME_WAIT) {
	        	GameMessageDerby(COLOR_PINK, "Countdown aborted, players left!");
	        	GameInitDerby();
	        }
	        if (gMiniDerby[TIME_WAIT] == 0) {
	            GameInitDerby();
			}
	    }
	    if (participating > 1) {
	        gMiniDerby[TIME_WAIT]--;
			new message[256];
			format(message, sizeof(message), "Starting in %d...", gMiniDerby[TIME_WAIT]);
	        GameTextDerby(COLOR_PINK, message);
		}
		if (!gMiniDerby[TIME_WAIT]) {
         	GameStartDerby();
	        GameMessageDerby(COLOR_PINK, "DERBY STARTED, ROUGH 'EM UP");
	        /*for (new i = 0; i < MAX_PLAYERS; i++) {
				if (mgDerbyPlayers[i] == 1) {
				    mgDerbyPlayers[i] = 2;
				    SetPlayerPos(i, 0, 0, 0);
				    SetCameraBehindPlayer(i);
				    new vehicle;
					vehicle = CreateVehicle(415, 0, 0, 4*i, 0, 1, 1, 600000); // creates the vehicle
					mgDerbyVehicles[i] = vehicle;./
    			    LinkVehicleToInterior(vehicle, GetPlayerInterior(i)); // links the vehicle to the player interior
 			 		SetVehicleVirtualWorld(vehicle, GetPlayerVirtualWorld(i)); // link the virtual world to player interior
   			 	    PutPlayerInVehicle(i, vehicle, 0);
				}
	        }*/
	    }
	} else {
	    if (gMiniDerby[TIME_GAME] == 0) {
	        GameMessageDerby(COLOR_PINK, "Time's up! There's no winner.");
	        GameInitDerby();
	    }
		if (alive == 1) {
		    new winner;
		    for (new i = 0; i < MAX_PLAYERS; i++) {
		        if (gMiniDerby[PLAYER][i] == 2) {
					winner = i;
					i = MAX_PLAYERS;
		        }
		    }
		    new name[24];
		    GetPlayerName(winner, name, sizeof(name));
		    new message[256];
		    format(message, sizeof(message), "Congratulate %s for having won the derby in %d seconds!", name, (DERBY_TIME_GAME-gMiniDerby[TIME_GAME]));
		    SendClientMessageToAll(COLOR_PINK, message);
		    GameInitDerby();
		} else if (alive > 1) {
		    gMiniDerby[TIME_GAME]--;
		}
	}/* else {
		if (participating == 1) {
		    if (mgDerbyWaitTime < DERBY_TIME_WAIT) {
		        GameMessageDerby(COLOR_PINK, "Countdown aborted, players left! Please wait for more players to join...");
		    }
		    GameMessageDerby(COLOR_PINK, "Please wait for additional players to join!");
	        mgDerbyWaitTime = DERBY_TIME_WAIT;
	    }
	    if (participating > 1) {
	        mgDerbyWaitTime--;
			new message[256];
			format(message, sizeof(message), "Starting in %d...", mgDerbyWaitTime);
	        GameMessageDerby(COLOR_PINK, message);
		}
	    if (mgDerbyWaitTime == 0) {
	        mgDerbyPlaying = 1;
	        mgDerbyGameTime = DERBY_TIME_GAME;
	        GameMessageDerby(COLOR_PINK, "DERBY STARTED, ROUGH 'EM UP");
	        for (new i = 0; i < MAX_PLAYERS; i++) {
				if (mgDerbyPlayers[i] == 1) {
				    mgDerbyPlayers[i] = 2;
				    //set location, put in car, etc
				}
	        }
	    }
	}*/
	if (participating == 0) {
	    printf("Killed derby!");
	    KillTimer(gMiniDerby[WATCHDOG]);
	    GameAbortDerby();
	    
	}
}

GameSpectateDerby(i) {
	new Float:x = gMiniDerbySpawn[i][X];
	new Float:y = gMiniDerbySpawn[i][Y];
	new Float:z = gMiniDerbySpawn[i][Z];
	new Float:a = gMiniDerbySpawn[i][A];
    SetPlayerPos(i, x, y, z+32.0001);
	TogglePlayerSpectating(i, true);
	SetPlayerCameraPos(i, x, y, z+30.0001);
	SetPlayerCameraLookAt(i, x, y, z);
    new message[256];
	format(message, sizeof(message), "%f %f %f %f", x, y, z, a);
	printf(message);
}

GameAbortDerby() {
	//new tempGame[eGameCar];
//	gMiniDerby = tempGame;
	gMiniDerby[ACTIVE] = false;
}

GameInitDerby() {
	/*new participating = 0;
	for (new i = 0; i < MAX_PLAYERS; i++) {
		if (mgDerbyPlayers[i] != 0) {
			mgDerbyPlayers[i] = 1;
			GameSpectateDerby(i);
			participating++;
		}
		if (mgDerbyVehicles[i] != 0) {
	        DestroyVehicle(mgDerbyVehicles[i]);
	    }
	}
	mgDerbyActive = true;
	mgDerbyPlaying = 0;
	mgDerbyGameTime = 0;
	mgDerbyWaitTime = DERBY_TIME_WAIT;*/
	new participating = 0;
	for (new i = 0; i < MAX_PLAYERS; i++) {
		if (gMiniDerby[PLAYER][i] != 0) {
			gMiniDerby[PLAYER][i] = 1;
			GameSpectateDerby(i);
			participating++;
		}
		if (gMiniDerby[VEHICLE][i] != 0) {
	        DestroyVehicle(gMiniDerby[VEHICLE][i]);
	    }
	}
	gMiniDerby[ACTIVE] = 1;
	gMiniDerby[PLAYING] = 0;
	gMiniDerby[WATCHDOG_ACTIVE] = 1;
	gMiniDerby[TIME_WAIT] = DERBY_TIME_WAIT;
	gMiniDerby[TIME_GAME] = 0;
	if (participating == 1)
		GameMessageDerby(COLOR_PINK, "Please wait for additional players to join!");
}

GameStartDerby() {
	new participating = 0;
	for (new i = 0; i < MAX_PLAYERS; i++) {
		if (gMiniDerby[PLAYER][i] != 0) {
			gMiniDerby[PLAYER][i] = 2;
   			new Float:x = gMiniDerbySpawn[i][X];
			new Float:y = gMiniDerbySpawn[i][Y];
			new Float:z = gMiniDerbySpawn[i][Z];
			new Float:a = gMiniDerbySpawn[i][A];
			TogglePlayerSpectating(i, false);
   			SetPlayerPos(i, x, y, z);
   			SetCameraBehindPlayer(i);
  			new vehicle;
			vehicle = CreateVehicle(415, x, y, z, a, 1, 1, -1); // creates the vehicle
			gMiniDerby[VEHICLE][i] = vehicle;
		   	LinkVehicleToInterior(vehicle, GetPlayerInterior(i)); // links the vehicle to the player interior
 			SetVehicleVirtualWorld(vehicle, GetPlayerVirtualWorld(i)); // link the virtual world to player interior
   			PutPlayerInVehicle(i, vehicle, 0);
			participating++;
		}
	}
	gMiniDerby[PLAYING]   = true;
	gMiniDerby[TIME_GAME] = DERBY_TIME_GAME;
	gMiniDerby[TIME_WAIT] = 0;
}

GameMinigamesExit(playerid) {
	gPlayerInfo[playerid][IN_MINIGAME] = 0;
	gMiniDerby[PLAYER][playerid] = 0;
	if (gMiniDerby[VEHICLE][playerid])
	    DestroyVehicle(gMiniDerby[VEHICLE][playerid]);
 	TextDrawDestroy(gMiniDerby[MSG][playerid]);
}

dcmd_exit(const playerid, const name[], const params[]) {
	GameMinigamesExit(playerid);
	TogglePlayerSpectating(playerid, false);
	SetCameraBehindPlayer(playerid);
	//SetPlayerPos(playerid, gPlayerInfo[playerid][OLD_COORDINATES][X], gPlayerInfo[playerid][OLD_COORDINATES][Y], gPlayerInfo[playerid][OLD_COORDINATES][Z]);
	RestoreCachedPlayerState(playerid);
	return SendClientMessage(playerid, COLOR_PINK, "You have left the minigame!");
}

dcmd_me(const playerid, const name[], const params[]) {
	#pragma unused playerid
	new str[256];
    format(str, sizeof(str), "* %s %s", name, params);
	SendClientMessageToAll(COLOR_DEEPPINK, str);
	return 1;
}

dcmd_kill(const playerid, const name[], const params[]) {
	#pragma unused name
	#pragma unused params
    SetPlayerHealth(playerid, 0);
    return 1;
}

dcmd_skin(const playerid, const name[], const params[]) {
	#pragma unused name
 	new skinid;
	if (IsNumeric(params)) {
		skinid = strval(params);
	    if (IsValidSkin(skinid)) {
	    	SetPlayerSkin(playerid, skinid);
	    	new str[256];
	        format(str, sizeof(str), "Your skin has been changed to ID %d!", skinid);
	        return SendClientMessage(playerid, COLOR_WHITE, str);
	    } else {
	        return SendClientMessage(playerid, COLOR_RED, "Error: invalid skin ID!");
	    }
	} else {
		SendClientMessage(playerid, COLOR_RED, "Usage: /skin [skinid]");
	}
	return 1;
}

dcmd_derby(const playerid, const name[], const params[]) {
	gPlayerInfo[playerid][IN_MINIGAME] = 2;
	SetPlayerVirtualWorld(playerid, 2);
	gMiniDerby[PLAYER][playerid] = 1;
	if (!gMiniDerby[ACTIVE]) {
	    gMiniDerby[WATCHDOG_ACTIVE] = 1;
	    gMiniDerby[ACTIVE] = 1;
	    printf("Started derby!");
	    gMiniDerby[WATCHDOG] = SetTimer("GameWatchdogDerby", 1000, true);
     	SendClientMessage(playerid, COLOR_PINK, "You're the first participant!");
    } else {
		if (gMiniDerby[TIME_GAME] == 0) {
      // game is not active!
      		SetPlayerPos(playerid, 0, 0, 100);
			TogglePlayerSpectating(playerid, true);
   			SetPlayerCameraPos(playerid, 0.0000, 0.0000, 30.0000);
			SetPlayerCameraLookAt(playerid, 0.0000, 0.0000, 0.0000);
		} else {
      // game is active!
           	SetPlayerPos(playerid, 0, 0, 100);
			TogglePlayerSpectating(playerid, true);
   			SetPlayerCameraPos(playerid, 0.0000, 0.0000, 30.0000);
			SetPlayerCameraLookAt(playerid, 0.0000, 0.0000, 0.0000);
  		}
    }
	return SendClientMessage(playerid, COLOR_PINK, "You have joined the derby minigame!");
}
