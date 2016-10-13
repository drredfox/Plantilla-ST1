
// INFO ========================================================================
/*
    Formed at the apex of the Canton Protocol summits, this strategic alliance of
    states is built upon the goals of mutual defence, expanded global influence, and
    sustained economic growth.
*/

_defaultSide = EAST;
_defaultVoice = [_voiceCHINESE];
_defaultFace = [_faceASIAN];
_defaultName = [_nameCHINESE];
_defaultInsignia = "";

_enableUrbanUniforms = false;

// WEAPONS =====================================================================

_commonRIFLE = _CTARGhx;
_viperRIFLE = "arifle_ARX_ghex_F";
_commonRIFLEGL = _CTARGLGhx;
_commonPISTOL = _Rook;
_commonMG = _CTARSGhx;
_commonMARKSMAN = _QBU88Ghx;
_commonSNIPER = _GM6Ghx;
_commonAT = _RPG32Ghx;
_specAT = _TitanGhx;
_commonSMG = _Sting;
_commonRCO = _ARCOgHex;
_commonCCO = _ACOgreen;
_commonMAGNIFIED = _DMSgHex;
_commonSUPPRESSOR = _sup58;
_commonPISTOLSUPPRESSOR = "muzzle_snds_L";
_NVG = _NVGgHex;

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

		_suppliesMEDIC = [[_unit,[_packingBandage,_countBANDAGE], [_morphine,_countMORPHINE],[_epi,_countEPI],[_saline250,_countBLOODBAG],[_defib,1],[_surgKit,1]]];
		_suppliesNORMAL = [[_unit,[_fieldDressing, 2],[_packingBandage, 1],[_tourniquet, 1],[_morphine,1],[_epi,1]]];

    };

    default {
        _suppliesMEDIC = [[_unit,["FirstAidKit",20],["Medikit",1]]];
        _suppliesNORMAL = [[_unit,["FirstAidKit",3]]];
    };
};

// UNIFORMS ====================================================================

_commonHEAD = "H_HelmetO_ghex_F";
_leaderHEAD = "H_HelmetLeaderO_ghex_F";
_officerHEAD = "H_MilCap_ghex_F";
_medicHEAD = _commonHEAD;
_crewmanHEAD = "H_HelmetCrew_O";
_pilotHEAD = "H_PilotHelmetFighter_O";
_helicrewHEAD = "H_CrewHelmetHeli_O";
_helipilotHEAD = "H_PilotHelmetHeli_O";
_sniperHEAD = _commonHEAD;
_demoHEAD = _commonHEAD;
_reconHEAD = "H_HelmetSpecO_ghex_F";
_viperHEAD = "H_HelmetO_ViperSP_ghex_F";

_commonUNIFORM = "U_O_T_Soldier_F";
_officerUNIFORM = "U_O_T_Officer_F";
_pilotUNIFORM = "U_O_PilotCoveralls";
_sniperUNIFORM = "U_O_T_FullGhillie_tna_F";
_marksmanUNIFORM = _commonUNIFORM;
_helicrewUNIFORM = "U_O_PilotCoveralls";
_crewUNIFORM = _commonUNIFORM;
_mgUNIFORM = _commonUNIFORM;
_medicUNIFORM = _commonUNIFORM;
_demoUNIFORM = _commonUNIFORM;
_reconUNIFORM = _commonUNIFORM;
_viperUNIFORM = "U_O_V_Soldier_Viper_F";

_commonVEST = "V_HarnessO_ghex_F";
_officerVEST = "V_BandollierB_ghex_F";
_ftlVEST = _commonVEST;
_slVEST = _commonVEST;
_mgVEST = _commonVEST;
_grenadierVEST = "V_HarnessOGL_ghex_F";
_medicVEST = _commonVEST;
_demoVEST = _commonVEST;
_marksmanVEST = _commonVEST;
_reconVEST = _commonVEST;

_commonBACKPACK = "B_FieldPack_ghex_F";
_bigBACKPACK = "B_Carryall_ghex_F";
_viperBACKPACK = "B_ViperHarness_ghex_TL_F";

_HMG = "O_HMG_01_A_high_weapon_F";
_tripod = "O_HMG_01_support_F";

// =============================================================================
if (!_isMan) exitWith {};
switch (true) do {
// =============================================================================

    case (_isOfficer): {
        [_officerHEAD, _officerUNIFORM, _officerVEST, "empty"] call _useUniform;
        [[_unit,[_wsmoke,2],[_rsmoke,2],[_mapTools,1]]] call _addtoVest;
        ["ItemGPS"] call _linkItem;
        [_commonRIFLE, _countRIFLE] call _addWeaponKit;
        [_commonPISTOL, _countPISTOL] call _addWeaponKit;
        ["laserdesignator"] call _addOptics;
        ["LR"] call _addRadio;
        ["BP"] call _addRadio;
    };

    case (_isSquadLeader): {
        [_leaderHEAD, _commonUNIFORM, _slVEST, "empty"] call _useUniform;
        [[_unit,[_wsmoke,2],[_rsmoke,2],[_mapTools,1]]] call _addtoVest;
        ["ItemGPS"] call _linkItem;
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
        ["ItemGPS"] call _linkItem;
        ["laserdesignator"] call _addOptics;
        [_commonRIFLE, _countRIFLELOW] call _addWeaponKit;
        [_commonPISTOL, _countPISTOL] call _addWeaponKit;
        ["primary", _commonSUPPRESSOR] call _attachToWeapon;
        ["primary", _commonRCO] call _attachToWeapon;
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
        [_specAT] call _addWeapon;
        [[_unit, [_specAT select 1, _countAT] ]] call _addToBackpack;
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
        [_helicrewHEAD, _helicrewUNIFORM, "empty", _parachute] call _useUniform;
        [[_unit,[_wsmoke,2],[_rsmoke,2]]] call _addtoVest;
        [_commonSMG, _countRIFLELOW] call _addWeaponKit;
    };

    case (_isHelicopterPilot): {
        [_helipilotHEAD, _helicrewUNIFORM, "empty", _parachute] call _useUniform;
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

	case (_isViperLeader): {
		[_viperHEAD, _viperUNIFORM, "empty", _viperBACKPACK] call _useUniform;
		[[_unit,[_wsmoke,2],[_grenade,_countGRENADES],["10Rnd_50BW_Mag_F",4]]] call _addtoBackpack;
		[_viperRIFLE, _countRIFLE] call _addWeaponKit;
		["primary", "muzzle_snds_65_TI_ghex_F"] call _attachToWeapon;
		["primary", "acc_pointer_IR"] call _attachToWeapon;
		["primary", "optic_Arco_ghex_F"] call _attachToWeapon;
		["rangefinder"] call _addOptics;
	};
	
	case (_isViperJTAC): {
		[_viperHEAD, _viperUNIFORM, "empty", _viperBACKPACK] call _useUniform;
		[[_unit,[_wsmoke,2],[_grenade,_countGRENADES],["10Rnd_50BW_Mag_F",4]]] call _addtoBackpack;
		[_viperRIFLE, _countRIFLE] call _addWeaponKit;
		["primary", "muzzle_snds_65_TI_ghex_F"] call _attachToWeapon;
		["primary", "acc_pointer_IR"] call _attachToWeapon;
		["primary", "optic_Arco_ghex_F"] call _attachToWeapon;
		["rangefinder"] call _addOptics;
	};
	
	case (_isViperDemo): {
		[_viperHEAD, _viperUNIFORM, "empty", _viperBACKPACK] call _useUniform;
		[[_unit,[_wsmoke,2],[_grenade,_countGRENADES],["10Rnd_50BW_Mag_F",4]]] call _addtoBackpack;
		[[_unit,[_C4,3],[_satchelCharge,1],[_deadManSwitch,1]]] call _addtoBackpack;
		[_viperRIFLE, _countRIFLE] call _addWeaponKit;
		["primary", "muzzle_snds_65_TI_ghex_F"] call _attachToWeapon;
		["primary", "acc_pointer_IR"] call _attachToWeapon;
		["primary", "optic_Arco_ghex_F"] call _attachToWeapon;
		["rangefinder"] call _addOptics;
	};
	
	case (_isViperMedic): {
		[_viperHEAD, _viperUNIFORM, "empty", _viperBACKPACK] call _useUniform;
		[[_unit,[_wsmoke,2],[_grenade,_countGRENADES],["10Rnd_50BW_Mag_F",4]]] call _addtoBackpack;
		_suppliesMEDIC call _addtoBackpack;
		[_viperRIFLE, _countRIFLE] call _addWeaponKit;
		["primary", "muzzle_snds_65_TI_ghex_F"] call _attachToWeapon;
		["primary", "acc_pointer_IR"] call _attachToWeapon;
		["primary", "optic_Arco_ghex_F"] call _attachToWeapon;
		["rangefinder"] call _addOptics;
	};
	
	case (_isViperMarksman): {
		[_viperHEAD, _viperUNIFORM, "empty", _viperBACKPACK] call _useUniform;
		[[_unit,[_wsmoke,2],[_grenade,_countGRENADES],["10Rnd_50BW_Mag_F",4]]] call _addtoBackpack;
		[_viperRIFLE, _countRIFLE] call _addWeaponKit;
		["primary", "muzzle_snds_65_TI_ghex_F"] call _attachToWeapon;
		["primary", "acc_pointer_IR"] call _attachToWeapon;
		["primary", "optic_DMS_ghex_F"] call _attachToWeapon;
		["primary", "bipod_02_F_blk"] call _attachToWeapon;
		["rangefinder"] call _addOptics;
	};
	
	case (_isViperAT): {
		[_viperHEAD, _viperUNIFORM, "empty", _viperBACKPACK] call _useUniform;
		[[_unit,[_wsmoke,2],[_grenade,_countGRENADES],["10Rnd_50BW_Mag_F",4]]] call _addtoBackpack;
		[_viperRIFLE, _countRIFLE] call _addWeaponKit;
		["primary", "muzzle_snds_65_TI_ghex_F"] call _attachToWeapon;
		["primary", "acc_pointer_IR"] call _attachToWeapon;
		["primary", "optic_Arco_ghex_F"] call _attachToWeapon;
		[_commonAT] call _addWeapon;
		["rangefinder"] call _addOptics;
	};
	
    default {
        [_commonHEAD, _commonUNIFORM, _commonVEST, "empty"] call _useUniform;
        [[_unit,[_wsmoke,2],[_grenade,3]]] call _addtoVest;
        [_commonRIFLE, 5] call _addWeaponKit;
    };
};

// ADDS ESSENTIALS =============================================================

_suppliesNORMAL call _addtoUniform;

if ((_isViperLeader)||(_isViperJTAC)||(_isViperDemo)||(_isViperMedic)||(_isViperMarksman)||(_isViperAT)) then {
["ItemMap", "ItemCompass", "ItemWatch"] call _linkItem;
} else {
["ItemMap", "ItemCompass", "ItemWatch", _NVG] call _linkItem;
};
["SR"] call _addRadio;

if (mission_ACE3_enabled) then { [[_unit, [_earBuds,1]]] call _addtoUniform };
