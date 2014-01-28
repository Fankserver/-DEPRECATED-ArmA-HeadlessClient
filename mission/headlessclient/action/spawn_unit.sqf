/*
Description:
Spawn a unit in a given group, with customized code.

Parameter(s):
_this select 0: <group> group where unit will be added
_this select 1: <string> unit classname
_this select 2: <position> position of the unit
_this select 3: <string> source code which will be compiled and executed in realtime after creating the unit
    
How to use:
_group = createGroup east
[_group, "US_Soldier_AA_EP1", [123,123,1], "removeAllWeapons _unit"] execVM "headlessclient\action\spawn_unit.sqf" 
*/
private ["_group","_class","_pos","_code"];
_group = (_this select 0);
_class = (_this select 1);
_pos = (_this select 2);
_code = (_this select 3);

diag_log format ["HEADLESS CLIENT create unit %1", _class];

// create unit
_unit = _group createUnit [_class, _pos, [], 0, "FORM"];
call (compile _code);

[_unit] joinSilent _group;