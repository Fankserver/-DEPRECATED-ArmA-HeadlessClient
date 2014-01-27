if(!isServer && !hasInterface) then {
	// compile
	HC_fn_log = compile preprocessFileLineNumbers "headlessclient\compile\fn_log.sqf";
};

// variables
if(isNil "HCConnected") then {
	HCConnected = false;
};