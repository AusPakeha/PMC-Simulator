
Save a composition in Eden and then in your profiles folder (usually MyDocuments\Arma 3\) in the compositions folder find its composition.sqe. Copy its .sqe and place it in your mission folder in a folder called Compositions and rename it to something remember-able.
Copy the LARs folder to your mission.
Add to your description.ext..

class CfgFunctions {
	#include "LARs\spawnComp\functions\functions.cpp"
};

#include "compositions\compositions.cfg"

Create a file called compositions.cfg in your missions composition folder that you created above and add a class for your composition. e.g

//LARs_spawnComp_debug = 1; //1 = RPT output, 2 = RPT output and ingame visual positioning info

class CfgCompositions {
    class Walk { //Name that the composition is spawned by
        #include "walk.sqe" //Renamed composition.sqe
    };
};


Then when you want to spawn a composition..

_compReference = [ COMP_NAME, POS_ATL, OFFSET, DIR, ALIGN_TERRAIN, ALIGN_WATER, IGNORE_ATLOFFSET ] call LARs_fnc_spawnComp;

Where..

    COMP_NAME - Classname given to composition in CfgCompositions
    POS_ATL( optional, default compositions saved position ) - Position to spawn composition
        If not given or empty array passed then original saved composition position is used
        Also accepts OBJECT, MARKER, LOCATION
    OFFSET( optional, default none ) - ARRAY [ x, y, z ] ammount to offset composition, as a compositions base pos can vary from what you want when its saved
    DIR( optional, deafault 0 ) - Direction to face composition in, If POS_ATL is of type OBJECT, MARKER, LOCATION passing TRUE for direction will use objects direction
    ALIGN_TERRAIN( optional, default True ) - BOOL, Whether composition objects should align themselves to their positions surface normal
    ALIGN_WATER( optional, default True ) - BOOL, If a composition objects position is over water should they align themselves to sea level
    IGNORE_ATLOFFSET( optional, default False ) - BOOL, If True each item in the composition will ignore its ATLOffset that usually gets added to its Z(height)



!FUCNTIONALITY CHANGED!
The function call will also return a reference string for the composition. Which can be used with some of the provided utility functions.



[ _compReference ] call LARs_fnc_deleteComp;

Will delete the composition.



[ _compReference ] call LARs_fnc_getCompObjects

Will return an array of all the compositions items.



[ _compReference, _item ] call Lars_fnc_getCompItem

Passing an Object will return its composition ID or -1 if not found.
Passing an ID will return the object or objNull if not found.



[ _item ] call LARs_fnc_getItemComp

Will return a the reference to the composition the item belongs to or "".

Checking the RPT with LARs_spawnComp_debug = 1 set in the composition.cfg when spawning a composition will display info on the objects spawned. e.g



12:29:04 "spawning - Object B_Soldier_A_F - ID: 51, VarName target1"

Where it displays..
Type being Group, Object, Trigger, Logic, Marker or Waypoint
Classname of object ie B_Soldier_A_F
Composition ID 51
For Object, Trigger, Logic it will show its VehcileVarName if it was spawned with one.
For Group it will display the groupID
For Marker its given name
and Waypoints their waypointName ('identified' option in Eden)



Priority order of which composition items are spawned in.
Spoiler

    "Markers"
    "Objects" non unit that are not in deferred objects (see below)
    "Triggers" not in deferred triggers (see below)
    "Logics"
    "Groups" its units and waypoints that are not in deferred groups (see below)
    "Deferred Objects"
        waypoint that is synced to another waypoint
        objects that have a random start position
        object that is synced to another object ( only one object is deferred, the one with lowest priority according to this list )
    "Deferred Groups" its units and waypoints
        groups that have any unit in a vehicle position
        groups that have a random start position
    "Deferred Triggers"
        triggers that are synced to a waypoint
        triggers that have a trigger owner
    "Init Codes" init codes of everything spawned are run
