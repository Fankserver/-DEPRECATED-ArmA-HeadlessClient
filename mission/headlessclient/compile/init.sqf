if (!isServer && !hasInterface) then {
	// compile
	HC_fn_log = compile preprocessFileLineNumbers "headlessclient\compile\fn_log.sqf";
};
if (isServer) then {
	HC_fn_own = compile preprocessFileLineNumbers "headlessclient\compile\fn_own.sqf";
};

// variables
if (isNil "HCConnected") then {
	HCConnected = false;
};