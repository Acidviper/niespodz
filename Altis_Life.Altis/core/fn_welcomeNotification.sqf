/*
	File: fn_welcomeNotification.sqf
	Author:

	Description:
	Called upon first spawn selection and welcomes our player.
*/
disableSerialization;
[
        "",
        0,
        0.2,
        10,
        0,
        0,
        8
] spawn BIS_fnc_dynamicText;

createDialog "RscDisplayWelcome";

_display = findDisplay 999999;
_text1 = _display displayCtrl 1100;
_buttonSpoiler = _display displayCtrl 2400;
_textSpoiler = _display displayCtrl 1101;
_text2 = _display displayCtrl 1102;

_message = "";
_message = _message + "<t align='center' size='8' shadow='0'><img image='textures\logo.jpg' /></t><br /><br />";
_message = _message + "WWW:<br />";
_message = _message + " <a href='http://n.ct8.pl/' color='#56BDD6'>Niespodzianki</a> - Nasze Forum.<br />";
_message = _message + "Adres Teamspeak'a: 149.56.251.45:10354<br /><br />";
_message = _message + "Changelog:<br />";
_message = _message + "- CPR MediKit dostepny w markecie ( umożliwia podniesienie cywila przez innego cywila gdy na serwerze nie ma medyków )<br />";
_message = _message + "- Nowy wygląd trunk ( menu pod t w pojeździe )<br />";

//Fill only the first text
_text1 ctrlSetStructuredText (parseText _message);

//Resize StructuredText component to display the scrollbar if needed
_positionText1 = ctrlPosition _text1;
_yText1 = _positionText1 select 1;
_hText1 = ctrlTextHeight _text1;
_text1 ctrlSetPosition [_positionText1 select 0, _yText1, _positionText1 select 2, _hText1];
_text1 ctrlCommit 0;
//Hide second text, spoiler text and button
_buttonSpoiler ctrlSetFade 1;
_buttonSpoiler ctrlCommit 0;
_buttonSpoiler ctrlEnable false;
_textSpoiler ctrlSetFade 1;
_textSpoiler ctrlCommit 0;
_text2 ctrlSetFade 1;
_text2 ctrlCommit 0;
