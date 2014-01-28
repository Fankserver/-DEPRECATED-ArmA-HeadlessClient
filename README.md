# ArmA 2/3 HeadlessClient

Headless client support for ArmA 2/3

## Installation (Mission)

Edit the **init.sqf** and add following above `progressLoadingScreen 1.0;`:
```
call compile preprocessFileLineNumbers "headlessclient\init\variables.sqf";
call compile preprocessFileLineNumbers "headlessclient\init\publicEH.sqf";
call compile preprocessFileLineNumbers "headlessclient\init\compiles.sqf";
```

So it looks like this:
```
progressLoadingScreen 0.9;
call compile preprocessFileLineNumbers "headlessclient\init\variables.sqf";
call compile preprocessFileLineNumbers "headlessclient\init\publicEH.sqf";
call compile preprocessFileLineNumbers "headlessclient\init\compiles.sqf";
progressLoadingScreen 1.0;
```

And add this to the end of the document:
```
[] execVM "headlessclient\init.sqf";
```