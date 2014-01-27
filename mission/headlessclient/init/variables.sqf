if (isServer || (!isServer && !hasInterface)) then { // shared
	if (isNil "HCConnected") then {
		HCConnected = false;
	};
};