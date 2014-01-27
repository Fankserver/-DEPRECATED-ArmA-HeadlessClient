if (!isServer && !hasInterface) then { // headless client only

}

if (isServer) then { // server only

};

if (isServer || (!isServer && !hasInterface)) then { // shared
	if (isNil "HCConnected") then {
		HCConnected = false;
	};
};