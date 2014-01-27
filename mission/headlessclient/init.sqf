if(!isServer && !hasInterface) then {
	// wait for player to start HC
	waitUntil {!isNull player};
	["Started"] call HC_fn_log;
	
	// notify server
	HCConnected = true;
	publicVariableServer "HCConnected";
	HCObject = player;
	publicVariableServer "HCObject";
	["announce made, HCObject variable set to player object!"] call HC_fn_log;
};