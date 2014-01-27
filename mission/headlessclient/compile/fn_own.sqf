/*
Description:
Changes the owner of the given object to a dedicated client (Headless client)

Parameter(s):
_this: object who should be owner by a dedicated client

Returns:
Boolean (true if the owner of the object is changed)
    
How to use:
_changedOwner = [_unit] call HC_fn_own;
*/
private ["_object","_success"];
_object = _this select 0;
_success = false;

if (HCConnected && !isNil "HCObject") then {
	_success = _object setOwner (owner HCObject);
};
_success