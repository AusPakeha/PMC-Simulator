/////////////////////// DO NOT EDIT LINES BELOW ---------------------------------------------------------------------------------

///////////////////// Add Editable Objects To Zues ///////////////////////////////////////////////////////////////////
if isServer then
{
	[] spawn
	{
		while {true} do
		{
			{
				_x addCuratorEditableObjects
				[
				entities [[],["Logic"], true /* Include vehicle crew */,true /* Exclude dead bodies */],
				true
				];
			} count allCurators;
			sleep 60; // Change to whatever fits your needs
		};
	};
};

///////////////////// Random ///////////////////////////////////////////////////////////////////
[] spawn {
	if (isNil "allPlayers_on") then 
	{
		chk_players = true;
		while {chk_players} do 
		{
			//allPlayers_on = allPlayers_on - entities "HeadlessClient_F";
			allPlayers_on = call BIS_fnc_listPlayers;
			publicVariable "allPlayers_on";
			sleep 60;
		};
	}
};

///////////////////// Adds Junk to the roads ///////////////////////////////////////////////////////////////////
//[ 50, 30, 15, [ [[10,10,0],15 ],[102,150,0],12]]; execVM "scripts\AbandonedRoads\init.sqf";