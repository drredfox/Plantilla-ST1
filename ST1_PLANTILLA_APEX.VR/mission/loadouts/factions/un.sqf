
// INFO ========================================================================
/*

    The United Nations Charter gives the United Nations Security Council the power and responsibility
	to take collective action to maintain international peace and security. For this reason, the international
	community usually looks to the Security Council to authorize peacekeeping operations.

	Remember to not use your weapon until the UN Secretariat gives you permission to fire. aka never

*/

_defaultSide = RESISTANCE;
_defaultVoice = [_voiceALTIAN, _voiceAMERICAN, _voiceBRITISH, _voiceFARSI, _voiceRUSSIAN];
_defaultFace = [_faceGREEK, _faceWHITE, _faceBLACK, _faceASIAN, _facePERSIAN];
_defaultName = [_nameAMERICAN]; // incomplete list
_defaultInsignia = "USP_PATCH_UN_BELIEVE";

// WEAPONS =====================================================================

_commonRIFLE = _FNFAL;
_commonRIFLEGL = _M16A2GL;
_commonPISTOL = _Makarov;
_commonMG = _PKM;
_commonMARKSMAN = _SVDS;
_commonSNIPER = _SVDS;
_commonAT = _RPG26;
_specAT = _RPG7PGO;
_commonSMG = _AKS74U;
_commonRCO = "UK3CB_BAF_SUSAT";
_commonCCO = _FHQMICROCCO;
_commonMAGNIFIED = "rhs_acc_pso1m2";
_commonSUPPRESSOR = _sup556;
_commonPISTOLSUPPRESSOR = "rhs_acc_1pn93_1";
_NVG = _NVGEN2;

// AMMO COUNT ==================================================================

_countRIFLE = 7;
_countRIFLELOW = 4;
_countPISTOL = 2;
_countMG = 3;
_countSNIPER = 5;
_countAT = 3;
_countGRENADES = 3;
_count40mm = 20;

_countRifleCARGO = 30;
_countPistolCARGO = 10;
_countMgCARGO = 20;
_countSniperCARGO = 30;
_countATCARGO = 15;
_countGrenadesCARGO = 20;
_count40mmCARGO = 40;

// MEDICAL SUPPLIES ============================================================

switch (true) do {

    case (mission_AGM_enabled): {

        _countBANDAGE = 20;
        _countMORPHINE = 15;
        _countEPI = 10;
        _countBLOODBAG = 5;

        _countBandageCARGO = 40;
        _countMorphineCARGO = 30;
        _countEpiCARGO = 20;
        _countBloodbagCARGO = 10;

        _suppliesMEDIC = [[_unit,[_bandage,_countBANDAGE], [_morphine,_countMORPHINE],[_epi,_countEPI],[_bloodbag,_countBLOODBAG]]];
        _suppliesNORMAL = [[_unit,[_bandage, 2], [_morphine,1],[_epi, 1]]];
    };

    case (mission_ACE3_enabled): {

        _countBANDAGE = 25;
        _countMORPHINE = 20;
        _countEPI = 10;
        _countCAT = 20;
        _countBLOODBAG = 3;

        _countBandageCARGO = 40;
        _countMorphineCARGO = 30;
        _countEpiCARGO = 20;
        _countBloodbagCARGO = 10;

        switch (param_ace3_medical_level) do {

            case 0: { // SIMPLE
                _suppliesMEDIC = [[_unit,[_fieldDressing,_countBANDAGE], [_morphine,_countMORPHINE],[_epi,_countEPI],[_bloodbag,_countBLOODBAG]]];
                _suppliesNORMAL = [[_unit,[_fieldDressing, 2], [_morphine,1],[_epi, 1]]];
            };
            case 1: { // ADVANCED
                _suppliesMEDIC = [[_unit,[_packingBandage,_countBANDAGE], [_morphine,_countMORPHINE],[_epi,_countEPI],[_saline250,_countBLOODBAG],[_surgKit,1]]];
                _suppliesNORMAL = [[_unit,[_fieldDressing, 2],[_packingBandage, 1],[_tourniquet, 1],[_morphine,1],[_epi,1]]];
            };
        };
    };

    default {
        _suppliesMEDIC = [[_unit,["FirstAidKit",20],["Medikit",1]]];
        _suppliesNORMAL = [[_unit,["FirstAidKit",3]]];
    };
};

// UNIFORMS ====================================================================

_commonHEAD = "MNP_Helmet_PAGST_UN";
_leaderHEAD = _commonHEAD;
_officerHEAD = "H_MilCap_blue";
_medicHEAD = _commonHEAD;
_crewmanHEAD = "rhsusf_cvc_green_helmet";
_pilotHEAD = "rhs_zsh7a";
_helicrewHEAD = "rhs_zsh7a_mike";
_helipilotHEAD = "rhs_zsh7a_mike";
_sniperHEAD = _commonHEAD;
_demoHEAD = _commonHEAD;
_reconHEAD = _commonHEAD;

_commonUNIFORM = "LOP_U_US_Fatigue_02";
_officerUNIFORM = _commonUNIFORM;
_pilotUNIFORM = "TRYK_OVERALL_SAGE_BLKboots_nk";
_sniperUNIFORM = "U_B_GhillieSuit";
_marksmanUNIFORM = "TRYK_OVERALL_SAGE_BLKboots_nk";
_helicrewUNIFORM = "TRYK_OVERALL_SAGE_BLKboots_nk";
_crewUNIFORM = _commonUNIFORM;
_mgUNIFORM = _commonUNIFORM;
_medicUNIFORM = _commonUNIFORM;
_demoUNIFORM = _commonUNIFORM;
_reconUNIFORM = _commonUNIFORM;

_commonVEST = "LOP_V_6B23_6Sh92_UN";
_officerVEST = "LOP_V_6B23_CrewOfficer_UN";
_ftlVEST = _commonVEST;
_slVEST = _commonVEST;
_mgVEST = _commonVEST;
_heliVEST = _commonVEST;
_grenadierVEST = _commonVEST;
_medicVEST = _commonVEST;
_demoVEST = _commonVEST;
_marksmanVEST = _commonVEST;
_reconVEST = _commonVEST;

_commonBACKPACK = "TRYK_B_BAF_BAG_mcamo";
_bigBACKPACK = "B_Carryall_mcamo";

_HMG = "RHS_M2_Gun_Bag";
_tripod = "RHS_M2_Tripod_Bag";

// =============================================================================
if (!_isMan) exitWith {};
switch (true) do {
// =============================================================================

    case (_isOfficer): {
        [_officerHEAD, _officerUNIFORM, _officerVEST, "empty"] call _useUniform;
        [[_unit,[_wsmoke,2],[_rsmoke,2],[_mapTools,1]]] call _addtoVest;
        [_commonRIFLE, _countRIFLE] call _addWeaponKit;
        [_commonPISTOL, _countPISTOL] call _addWeaponKit;
        ["laserdesignator"] call _addOptics;
        ["LR"] call _addRadio;
        ["BP"] call _addRadio;
    };

    case (_isSquadLeader): {
        [_leaderHEAD, _commonUNIFORM, _slVEST, "empty"] call _useUniform;
        [[_unit,[_wsmoke,2],[_rsmoke,2],[_mapTools,1]]] call _addtoVest;
        [_commonRIFLE, _countRIFLE] call _addWeaponKit;
        [_commonPISTOL, _countPISTOL] call _addWeaponKit;
        ["primary", _commonRCO] call _attachToWeapon;
        ["rangefinder"] call _addOptics;
        ["LR"] call _addRadio;
        ["BP"] call _addRadio;
    };

    case (_isTeamLeader): {
        [_leaderHEAD, _commonUNIFORM, _ftlVEST, "empty"] call _useUniform;
        [[_unit,[_wsmoke,2],[_rsmoke,2]]] call _addtoVest;
        [_commonRIFLE, _countRIFLE] call _addWeaponKit;
        [_commonPISTOL, _countPISTOL] call _addWeaponKit;
        ["primary", _commonCCO] call _attachToWeapon;
        ["binoc"] call _addOptics;
        ["LR"] call _addRadio;
    };

    case (_isReconLeader): {
        [_reconHEAD, _reconUNIFORM, _reconVEST, "empty"] call _useUniform;
        [[_unit,[_wsmoke,2],[_rsmoke,2],[_gsmoke,2],[_rchemlight,2],[_bchemlight,2],[_wflare,2],[_mapTools,1]]] call _addtoVest;
        ["laserdesignator"] call _addOptics;
        [_commonRIFLE, _countRIFLELOW] call _addWeaponKit;
        [_commonPISTOL, _countPISTOL] call _addWeaponKit;
        ["primary", _commonSUPPRESSOR] call _attachToWeapon;
        ["secondary", _commonPISTOLSUPPRESSOR] call _attachToWeapon;
        ["LR"] call _addRadio;
        ["BP"] call _addRadio;
    };

    case (_isRTO): {
        [_commonHEAD, _commonUNIFORM, _commonVEST, "empty"] call _useUniform;
        [[_unit,[_wsmoke,2], [_grenade,_countGRENADES],[_mapTools,1]]] call _addtoVest;
        [_commonRIFLE, _countRIFLE] call _addWeaponKit;
        ["laserdesignator"] call _addOptics;
        ["BP"] call _addRadio;
    };

    case (_isRifleman): {
        [_commonHEAD, _commonUNIFORM, _commonVEST, "empty"] call _useUniform;
        [[_unit,[_wsmoke,2],[_grenade,_countGRENADES]]] call _addtoVest;
        [_commonRIFLE, _countRIFLE] call _addWeaponKit;
    };

    case (_isDemo): {
        [_commonHEAD, _commonUNIFORM, _commonVEST, _bigBACKPACK] call _useUniform;
        [[_unit, [_clacker,1],[_mineDetector,1],[_defusalKit,1]]] call _addtoUniform;
        [[_unit,[_apMINE,2],[_apBoundingMINE,2]]] call _addtoVest;
        [[_unit,[_C4,3],[_satchelCharge,1],[_deadManSwitch,1]]] call _addtoBackpack;
        [_commonRIFLE, _countRIFLELOW] call _addWeaponKit;
    };

    case (_isRiflemanAT): {
        [_commonHEAD, _commonUNIFORM, _commonVEST, _bigBACKPACK] call _useUniform;
        [[_unit,[_wsmoke,2], [_rsmoke,2]]] call _addtoVest;
        [_commonRIFLE, _countRIFLELOW] call _addWeaponKit;
        [_commonAT] call _addWeapon;
    };

    case (_isMarksman): {
        [_commonHEAD, _marksmanUNIFORM, _marksmanVEST, "empty"] call _useUniform;
        [[_unit,[_wsmoke,2], [_rsmoke,2]]] call _addtoVest;
        [_commonMARKSMAN, _countRIFLE] call _addWeaponKit;
        ["primary", _commonRCO] call _attachToWeapon;
    };

    case (_isAutorifleman): {
        [_commonHEAD, _mgUNIFORM, _mgVEST, _commonBACKPACK] call _useUniform;
        [[_unit,[_wsmoke,2],[_spareBarrel,1]]] call _addtoVest;
        [_commonMG, _countMG] call _addWeaponKit;
    };

    case (_isGrenadier): {
        [_commonHEAD, _commonUNIFORM, _grenadierVEST, _commonBACKPACK] call _useUniform;
        [[_unit,[_wsmoke,2],[_rsmoke,2]]] call _addtoVest;
        [[_unit,[_commonRIFLEGL select 2, _count40mm]]] call _addtoBackpack;
        [_commonRIFLEGL, _countRIFLELOW] call _addWeaponKit;
    };

    case (_isLifeSaver): {
        [_medicHEAD, _medicUNIFORM, _medicVEST, _commonBACKPACK] call _useUniform;
        [[_unit,[_wsmoke,2], [_gsmoke,3]]] call _addtoVest;
        _suppliesMEDIC call _addtoBackpack;
        [_commonRIFLE, _countRIFLELOW] call _addWeaponKit;
        _defaultInsignia = "Medico";
    };

    case (_isMMG): {
        [_commonHEAD, _commonUNIFORM, _commonVEST, _HMG] call _useUniform;
        [[_unit,[_wsmoke,2]]] call _addtoVest;
        [_commonRIFLE, _countRIFLE] call _addWeaponKit;
    };

    case (_isMMGTripod): {
        [_commonHEAD, _commonUNIFORM, _commonVEST, _tripod] call _useUniform;
        [[_unit,[_wsmoke,2]]] call _addtoVest;
        [_commonRIFLE, _countRIFLE] call _addWeaponKit;
    };

    case (_isRecon): {
        [_reconHEAD, _reconUNIFORM, _reconVEST, "empty"] call _useUniform;
        ["binoc"] call _addOptics;
        [[_unit,[_wsmoke,2],[_rsmoke,2],[_gsmoke,2],[_rchemlight,2],[_bchemlight,2],[_wflare,2],[_mapTools,1]]] call _addtoVest;
        [_commonRIFLE, _countRIFLE] call _addWeaponKit;
        ["primary", _commonSUPPRESSOR] call _attachToWeapon;
    };

    case (_isReconMedic): {
        [_medicHEAD, _reconUNIFORM, _reconVEST, _commonBACKPACK] call _useUniform;
        ["binoc"] call _addOptics;
        [[_unit,[_wsmoke,2],[_rsmoke,2],[_gsmoke,2],[_mapTools,1]]] call _addtoVest;
        _suppliesMEDIC call _addtoBackpack;
        [_commonRIFLE, _countRIFLE] call _addWeaponKit;
        ["primary", _commonSUPPRESSOR] call _attachToWeapon;
        _defaultInsignia = "Medico";
    };

    case (_isReconDemo): {
        [_reconHEAD, _reconUNIFORM, _reconVEST, _bigBACKPACK] call _useUniform;
        ["binoc"] call _addOptics;
        [[_unit, [_clacker,1],[_mineDetector,1],[_defusalKit,1]]] call _addtoUniform;
        [[_unit,[_wsmoke,2],[_rsmoke,2],[_gsmoke,2],[_mapTools,1]]] call _addtoVest;
        [[_unit,[_C4,3],[_satchelCharge,1],[_deadManSwitch,1]]] call _addtoBackpack;
        [_commonRIFLE, _countRIFLELOW] call _addWeaponKit;
        ["primary", _commonSUPPRESSOR] call _attachToWeapon;
    };

    case (_isPilot): {
        [_pilotHEAD, _pilotUNIFORM, "empty", _parachute] call _useUniform;
        [[_unit,[_wsmoke,2],[_rsmoke,2],[_mapTools,1]]] call _addtoVest;
        [_commonPISTOL, _countPISTOL] call _addWeaponKit;
    };

    case (_isHelicopterCrew): {
        [_helicrewHEAD, _helicrewUNIFORM, _heliVEST, _parachute] call _useUniform;
        [[_unit,[_wsmoke,2],[_rsmoke,2]]] call _addtoVest;
        [_commonSMG, _countRIFLELOW] call _addWeaponKit;
    };

    case (_isHelicopterPilot): {
        [_helipilotHEAD, _helicrewUNIFORM, _heliVEST, _parachute] call _useUniform;
        [[_unit,[_wsmoke,2],[_rsmoke,2]]] call _addtoVest;
        [_commonSMG, _countRIFLELOW] call _addWeaponKit;
    };

    case (_isCrewman): {
        [_crewmanHEAD, _crewUNIFORM, "empty", "empty"] call _useUniform;
        [[_unit,[_wsmoke,2]]] call _addtoVest;
        [_commonSMG, _countRIFLELOW] call _addWeaponKit;
        if (_isLeader) then { ["BP"] call _addRadio };
    };

    case (_isSniper): {
        [_sniperHEAD, _sniperUNIFORM, _commonVEST, "empty"] call _useUniform;
        [[_unit,[_wsmoke,2],[_mapTools,1],[_kestrel,1]]] call _addtoVest;
        [_commonSNIPER, _countSNIPER] call _addWeaponKit;
        ["primary", _commonMAGNIFIED] call _attachToWeapon;
        if (_isLeader) then { ["BP"] call _addRadio };
    };

    case (_isSpotter): {
        [_sniperHEAD, _sniperUNIFORM, _commonVEST, _commonBACKPACK] call _useUniform;
        [[_unit,[_wsmoke,2],[_rsmoke,2],[_gsmoke,2],[_mapTools,1],[_kestrel,1]]] call _addtoVest;
        [[_unit,[_commonSNIPER select 1, (_countSNIPER*2)]]] call _addtoBackpack;
        [_commonRIFLE, _countRIFLELOW] call _addWeaponKit;
        ["laserdesignator"] call _addOptics;
    };

    default {
        [_commonHEAD, _commonUNIFORM, _commonVEST, "empty"] call _useUniform;
        [[_unit,[_wsmoke,2],[_grenade,3]]] call _addtoVest;
        [_commonRIFLE, 5] call _addWeaponKit;
    };
};

// ADDS ESSENTIALS =============================================================

_suppliesNORMAL call _addtoUniform;

["ItemMap", "ItemCompass", "ItemWatch", _NVG] call _linkItem;

["SR"] call _addRadio;

//if (mission_ACE3_enabled) then { [[_unit, [_earBuds,1]]] call _addtoUniform };
