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


  mission_ACE3_enabled = (isClass(configFile>>"CfgPatches">>"ACE_COMMON"));

  mission_TFAR_enabled = (isClass(configFile>>"CfgPatches">>"task_force_radio"));
  mission_ACRE2_enabled = (isClass(configFile>>"CfgPatches">>"acre_api"));

  //mission_params_read = true;
