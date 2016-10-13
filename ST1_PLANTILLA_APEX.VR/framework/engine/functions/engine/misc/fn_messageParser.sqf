/****************************************************************
ARMA Mission Development Framework
ADF version: 1.43 / JANUARY 2016

Script: Message parser/log
Author: Whiztler
Script version: 1.01

Game type: n/a
File: ADF_messageParser.sqf
****************************************************************
This script will create and log hint messages based on the caller.
Config the logbook in ADF_fnc_MessageLog (_ADF_logName).
Config the callers in ADF_fnc_MessageParser (if (_ADF_caller == "ACO")).

Use with:
[	"2S",		// caller ID	
	"Name",		// caller Name 
	"Message"		// Message
] call ADF_fnc_MessageParser;

e.g.: ["2S","Name","Message"] call ADF_fnc_MessageParser; sleep 10;
or: : ["ACO","ACO","Message"] call ADF_fnc_MessageParser; sleep 10;
Script is WIP. For now only simple messages (without complex formatting)
****************************************************************/
if (!hasInterface) exitWith {};

// Init
params ["_type","_ADF_caller","_ADF_callerName","_ADF_msg"];

playSound "radioTransmit";
switch (_type) do {
	case "HINT": {
		switch (_ADF_caller) do {
			case "ST1": {hintSilent parseText format ["<img size= '5' shadow='false' image='mission\images\group-logo.paa'/><br/><br/><t color='#9DA698' align='left'>%1<br/><br/></t>",_ADF_msg];};
			case "ACO": {hintSilent parseText format ["<img size= '5' shadow='false' image='mission\images\logo_ACO.paa'/><br/><br/><t color='#9DA698' align='left'>%1<br/><br/></t>",_ADF_msg];};
		};
	};
	case "SUB": {
	[_ADF_callerName,_ADF_msg] call BIS_fnc_showSubtitle;
	};
};
[_ADF_callerName,_ADF_msg] call BRM_fnc_MessageLog;

