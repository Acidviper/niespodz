waitUntil {!(isNull (findDisplay 46))};
disableSerialization;
/*
	File: fn_statusBar.sqf
	Author: Some French Guy named Osef I presume, given the variable on the status bar
	Edited by: [midgetgrimm]
	Description: Puts a small bar in the bottom right of screen to display in-game information

*/
4 cutRsc["osefStatusBarAdmin","PLAIN"];
systemChat format["Ładowanie paska statusu....", _rscLayer];

[] spawn 
{
	sleep 3;
	_counter = 180;
	Server_Session = 21600;
	_statusText = "stabilne.it"; 
	
	while {true} do 
	{
		sleep 1;
		TimeTillRestart = Server_Session - ServerTime;
		_counter = _counter - 1;
		((uiNamespace getVariable "osefStatusBarAdmin")displayCtrl 55554)ctrlSetStructuredText parseText format["<t %1 size='1' font='PuristaSemibold'><img size='1.0' image='icons\fps.paa' color='FF8C00'/> %1</t> | <t color='#0075FF' size='1' font='PuristaSemibold'><img size='1.0' image='icons\policja.paa' color='FF8C00'/> %2</t> | <t color='#660080' size='1' font='PuristaSemibold'><img size='1.0' image='icons\cywil.paa' color='FF8C00'/> %3</t> | <t color='#008000' size='1' font='PuristaSemibold'><img size='1.0' image='icons\medyk.paa' color='FF8C00'/> %4</t> | <t color='FF8C00'><img size='1.0' image='icons\money.paa' color='FF8C00'/> %6</t> | <t color='#FF0000' size='1' font='PuristaSemibold'><img size='1.0' image='icons\czas.paa' color='FF8C00'/> %8</t> | <t color='#ffff00' size='1' font='PuristaSemibold'>TS: %9</t> | <t color='#ffff00' size='1' font='PuristaSemibold'>FORUM: http://aln.ct8.pl/</t>", round diag_fps, west countSide playableUnits, civilian countSide playableUnits, independent countSide playableUnits, east countSide playableUnits, [life_cash] call life_fnc_numberText,[life_atmbank] call life_fnc_numberText, [TimeTillRestart, "HH:MM:SS"] call BIS_fnc_secondsToString, _statusText];
	}; 
};
