if (!isServer && !hasInterface) then { // headless client only
	"HC_spawn_unit" addPublicVariableEventHandler {[_this select 1] execVM "headlessclient\action\spawn_unit.sqf"};
};