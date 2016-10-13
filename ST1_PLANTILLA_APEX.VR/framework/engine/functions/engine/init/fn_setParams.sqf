/*
================================================================================

NAME:
    BRM_fnc_setParams
    
AUTHOR(s):
    Fer

DESCRIPTION:
    Reads all mission parameters and assigns them to their attributed variables.
    Also processes Time and Weather related parameters.

PARAMETERS:
    None.
    
USAGE:
    [] call BRM_fnc_setParams.
    
RETURNS:
    Nothing.

================================================================================
*/

0 spawn {
    
waitUntil{(!isNil "paramsArray")};

_paramArray = paramsArray;
{
    _paramName = (configName ((missionConfigFile >> "Params") select _forEachIndex));
    _paramValue = (_paramArray select _forEachIndex);
    _paramCode = ( getText (missionConfigFile >> "Params" >> _paramName >> "code"));
    _code = format[_paramCode, _paramValue];
    call compile _code;
    publicVariable _paramName;
} foreach _paramArray;

waitUntil{(!isNil "plugins_loaded")};
waitUntil{(plugins_loaded)};

mission_ACE3_enabled = (isClass(configFile>>"CfgPatches">>"ACE_COMMON"));

mission_TFAR_enabled = (isClass(configFile>>"CfgPatches">>"task_force_radio"));
mission_ACRE2_enabled = (isClass(configFile>>"CfgPatches">>"acre_api"));

mission_params_read = true;

if (!isServer) exitWith {};

paramsDone = true; 
publicVariable "paramsDone";
};