
// ============================================================================
//                                                                             |
//              Este script solo lo ejecutan los jugadores.                    |
//                                                                             |
// ============================================================================

//Ejemplo de comunicaciones que se activa al llamar la función ST1_Msg desde un trigger.
ST1_Msg = {
["SUB","ST1","RAZOR","BROADWAY, aquí RAZOR. ¿Me recibe? Cambio."] call BRM_fnc_MessageParser; sleep 5;
["SUB","ACO","BROADWAY","Adelante RAZOR, aquí BROADWAY. Cambio."] call BRM_fnc_MessageParser; sleep 5;
["SUB","ST1","RAZOR","RAZOR acaba de insertar en LZ CHARLIE. Iniciamos misión."] call BRM_fnc_MessageParser; sleep 5;
["SUB","ACO","BROADWAY","Aquí BROADWAY. Recibido. Buena suerte. Cambio"] call BRM_fnc_MessageParser; sleep 5;
["SUB","ST1","RAZOR","RAZOR recibido. Corto."] call BRM_fnc_MessageParser; 
};

// PARAMETROS
// 0 - Efecto visual. (STRING) "SUB" / "HINT" 
// 1 - Emisor (STRING) "ST1" / "ACO" - Afecta al escudo que se muestra cuando se usa "HINT"
// 2 - Indicativo del Emisor (STRING) "ST1" / "ACO" 
// 3 - Mensaje (STRING)

//USO
//En el editor colocad un trigger BLUFOR PRESENTE y en Activación poned:
// if (hasInterface) then {[] spawn ST1_Msg;}

// =============================================================================
                                    sleep 1;

//  Todo lo que esté debajo de esta línea se ejecuta después del briefing.     |
// =============================================================================













