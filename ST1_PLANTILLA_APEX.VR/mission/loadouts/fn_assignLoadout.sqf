private["_unit","_type","_cond","_done","_defaultName","_doFirstName","_doLastName","_doFinalName"];

_unit = _this select 0;
_faction = _this select 1;
_type = "";

if ((!isPlayer _unit)&&(!mission_AI_controller)) exitWith {};
_unit setVariable ["BIS_enableRandomization", false];

_aliasBLUFOR = ["BLUFOR","west"];
_aliasOPFOR = ["opfor","redfor","east"];
_aliasRESISTANCE = ["independent","resistance","indfor","guerilla"];
_aliasCIVILIAN = ["civilian","civilians","civies"];

switch (true) do {
    case (_faction == "side_a"): { _faction = side_a_faction };
    case (_faction == "side_b"): { _faction = side_b_faction };
    case (_faction == "side_c"): { _faction = side_c_faction };
    case (_faction in _aliasBLUFOR): { _faction = [west, "FACTION"] call BRM_fnc_getSideInfo };
    case (_faction in _aliasOPFOR): { _faction = [east, "FACTION"] call BRM_fnc_getSideInfo };
    case (_faction in _aliasRESISTANCE): { _faction = [resistance, "FACTION"] call BRM_fnc_getSideInfo };
};

// RESETS ITEMS ================================================================

removeAllItems _unit;
removeAllWeapons _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;
if !(isPlayer _unit) then { removeGoggles _unit };

// DETERMINE UNIT TYPE =========================================================

if (!(isPlayer _unit)) then { _type = getText (configfile >> "CfgVehicles" >> typeOf _unit >> "displayName") }
else {
    if ( (count _this) > 2) then {
        _type = _this select 2;
    } else {
        _type = getText (configfile >> "CfgVehicles" >> typeOf _unit >> "displayName");
    };
};

// CLASSES =====================================================================

_isOfficer = (_type == "CO")||(_type == "B_Officer_F")||(_type == "Officer");
_isSquadLeader = (_type == "SL")||(_type == "B_Soldier_SL_F")||(_type == "Squad Leader");
_isTeamLeader = (_type == "FTL")||(_type == "B_Soldier_TL_F")||(_type == "Team Leader");
_isRifleman = (_type == "RIFLEMAN")||(_type == "B_Soldier_F")||(_type == "Rifleman");
_isRiflemanAT = (_type == "AT")||(_type == "B_Soldier_LAT_F")||(_type == "Rifleman (AT)");
_isMarksman = (_type == "MARKSMAN")||(_type == "B_Soldier_M_F")||(_type == "B_Sharpshooter_F")||(_type == "Marksman")||(_type == "Sharpshooter");
_isAutorifleman = (_type == "AR")||(_type == "B_Soldier_AR_F")||(_type == "Autorifleman");
_isAutoriflemanAsst = (_type == "AAR")||(_type == "B_Soldier_AAR_F")||(_type == "Asst. Autorifleman");
_isLifeSaver = (_type == "MEDIC")||(_type == "B_medic_F")||(_type == "Combat Life Saver");
_isGrenadier = (_type == "GL")||(_type == "B_Soldier_GL_F")||(_type == "Grenadier");
_isHelicopterPilot = (_type == "HELIPILOT")||(_type == "B_HeliPilot_F")||(_type == "Helicopter Pilot");
_isHelicopterCrew = (_type == "HELICREW")||(_type == "B_HeliCrew_F")||(_type == "Helicopter Crew");
_isEngineer = (_type == "ENGINEER")||(_type == "B_Engineer_F")||(_type == "B_Soldier_repair_F")||(_type == "Engineer")||(_type == "Repair Specialist");
_isCrewman = (_type == "CREW")||(_type == "B_Crew_F")||(_type == "Crewman");
_isPilot = (_type == "PILOT")||(_type == "B_Pilot_F")||(_type == "Pilot");
_isRTO = (_type == "RTO")||(_type == "JTAC")||(_type == "B_Recon_JTAC_F")||(_type == "Recon JTAC");
_isReconLeader = (_type == "RECONLEADER")||(_type == "B_Recon_TL_F")||(_type == "Recon Team Leader");
_isReconMarksman = (_type == "RECONMARKSMAN")||(_type == "B_Recon_M_F")||(_type == "B_Recon_Sharpshooter_F")||(_type == "Recon Marksman");
_isRecon = (_type == "RECON")||(_type == "B_Recon_F")||(_type == "Recon Scout");
_isReconDemo = (_type == "RECONDEMO")||(_type == "B_Recon_exp_F")||(_type == "Recon Demo Specialist");
_isReconMedic = (_type == "RECONMEDIC")||(_type == "B_Recon_Medic_F")||(_type == "Recon Paramedic");
_isDemo = (_type == "DEMO")||(_type == "B_Soldier_exp_F")||(_type == "Explosive Specialist");
_isMMG = (_type == "MMG")||(_type == "B_support_MG_F")||(_type == "Gunner (HMG)");
_isMMGTripod = (_type == "MMGTRIPOD")||(_type == "B_support_AMG_F")||(_type == "Asst. Gunner (HMG/GMG)");
_isHeavyAT = (_type == "HAT")||(_type == "B_Soldier_AT_F")||(_type == "Missile Specialist (AT)");
_isATAssistant = (_type == "HATAST")||(_type == "B_Soldier_AAT_F")||(_type == "Ammo Bearer");
_isAA = (_type == "AA")||(_type == "B_Soldier_AA_F")||(_type == "Missile Specialist (AA)");
_isAAAssistant = (_type == "AAAST")||(_type == "B_Soldier_AAA_F");
_isSniper = (_type == "SNIPER")||(_type == "B_Sniper_F")||(_type == "Sniper");
_isSpotter = (_type == "SPOTTER")||(_type == "B_Spotter_F")||(_type == "Spotter");
_isViperLeader = (_type == "Viper Team Leader");
_isViperJTAC = (_type == "Viper JTAC");
_isViperDemo = (_type == "Viper Demo Specialist");
_isViperMedic = (_type == "Viper Paramedic");
_isViperMarksman = (_type == "Viper Marksman");
_isViperAT = (_type == "Viper Rifleman (AT)");

// ASSIGN LOADOUTS BASED ON FACTION ============================================

#include "content\loadout-functions.sqf"
#include "content\content-list.sqf"

_defaultSide = WEST;
_defaultFace = _faceWHITE;
_defaultVoice = _voiceAMERICAN;
_defaultInsignia = "none";

#include "faction-list.sqf"

_defaultVoice = _defaultVoice call BIS_fnc_selectRandom;
_defaultFace = _defaultFace call BIS_fnc_selectRandom;

_doVoice = _defaultVoice call BIS_fnc_selectRandom;
_doFace = _defaultFace call BIS_fnc_selectRandom;

if (!isNil "_defaultName") then {
    _defaultName = _defaultName call BIS_fnc_selectRandom;
    _doFirstName = (_defaultName select 0) call BIS_fnc_selectRandom;
    _doLastName = (_defaultName select 1) call BIS_fnc_selectRandom;
    _doFinalName = _doFirstName + " " + _doLastName;
} else {
    _doFinalName = "default";
};

[-1, {
    _unit = _this select 0;
    _voice = _this select 1;
    _face = _this select 2;
    _name = _this select 3;
    _insignia = _this select 4;

    waitUntil{(time > 3)};

    if !(isPlayer _unit) then {
        _unit setFace _face;
        _unit setSpeaker _voice;
        _unit setPitch ([0.85, 1.15] call BIS_fnc_randomNum);
        if (_name != "default") then {
            _unit setVariable ["ACE_Name", _name, true];
            _unit setName _name;
        };
    };
    if (_insignia != "none") then {
        [_unit, _insignia] call BIS_fnc_setUnitInsignia;
    };

}, [_unit, _doVoice, _doFace, _doFinalName, _defaultInsignia]] call CBA_fnc_globalExecute;
