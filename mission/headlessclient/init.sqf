if (!(!isServer && !hasInterface)) exitWith {}; // Headless client only
// wait for player to start HC
waitUntil {!isNull player};
diag_log "HEADLESS CLIENT Started";

// notify server
HCConnected = true;
publicVariableServer "HCConnected";
HCObject = player;
publicVariableServer "HCObject";
diag_log "HEADLESS CLIENT announce made, HCObject variable set to player object!";