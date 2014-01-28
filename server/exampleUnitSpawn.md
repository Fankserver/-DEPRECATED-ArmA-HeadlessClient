# Example how to spawn a unit at a random safe position

## First create a group on the server
```sqf
_group = createGroup east;
```

## Find a safe position in the middle of the map with a radius of 100m
```sqf
_position = [(getMarkerPos 'center'), 0, 100, 10, 0, 2000, 0] call BIS_fnc_findSafePos;
```

## Tell headless client to spawn a sniper unit, without weapons
```sqf
missionNamespace setVariable ["HC_spawn_unit", [_group, "USMC_SoldierS_SniperH", _position, "removeAllWeapons _unit;"]];
(owner HCObject) publicVariableClient "HC_spawn_unit";
```
we will tell the headless client the variable which contains information about the unit with **publicVariableClient**