// create group
_group = createGroup east;

// find safe position
_position = [(getMarkerPos 'center'), 0, 100, 10, 0, 2000, 0] call BIS_fnc_findSafePos;

// tell headless client to spawn a sniper unit, without weapons
missionNamespace setVariable ["HC_spawn_unit", [_group, "USMC_SoldierS_SniperH", _position, "removeAllWeapons _unit;"]];
(owner HCObject) publicVariableClient "HC_spawn_unit"; // only tell the headless client to spawn the unit