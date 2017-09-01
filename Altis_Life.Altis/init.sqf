/*
	File: init.sqf
	Author:

	Description:

*/
StartProgress = false;
setTerrainGrid 50; 
[] execVM "briefing.sqf"; //Load Briefing
[] execVM "KRON_Strings.sqf";
[] spawn life_fnc_autoMessages; // Message Auto
[] execVM "scripts\status_bar\PlayerBar.sqf";
[] execVM "welcomeMessage.sqf";
[] execVM "scripts\fog.sqf";
0 = execVM "IgiLoad\IgiLoadInit.sqf";
[] execVM "scripts\teargas.sqf";


if(isDedicated && isNil("life_market_prices")) then
{
[] call life_fnc_marketconfiguration;
diag_log "Market prices generated!";

"life_market_prices" addPublicVariableEventHandler
{
diag_log format["Market prices updated! %1", _this select 1];
};

//Start server fsm
[] execFSM "core\fsm\server.fsm";
diag_log "Server FSM executed";
};

StartProgress = true;