private ["_group","_class","_pos","_code"];
_group = (_this select 0);
_class = (_this select 1);
_pos = (_this select 2);
_code = (_this select 3);

diag_log format ["HEADLESS CLIENT create unit %1", _class];

// create unit
_unit = _group createUnit [_class, _pos, [], 0, "FORM"];
_unit spawn (compile _code);