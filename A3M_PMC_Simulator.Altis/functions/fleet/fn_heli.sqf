private _rank = rank player;

switch (TheSelection) do {
    case 0: { ["B_Heli_Transport_01_F", "UH-80 Ghosthawk Combat Transport Helicopter", "vehspawn"] call A3M_fnc_buyVehicle; };
    case 1: { ["B_Heli_Light_01_dynamicLoadout_F", "AH-9 Pawnee Combat Support Helicopter", "vehspawn"] call A3M_fnc_buyVehicle; };
    case 2: { ["B_Heli_Light_01_F", "MH-9 Hummingbird Light Transport Helicopter", "vehspawn"] call A3M_fnc_buyVehicle; };
    case 3: { ["O_Heli_Light_02_unarmed_F", "PO-30 Orca (Black)", "vehspawn"] call A3M_fnc_buyVehicle; };
    case 4: { ["O_Heli_Light_02_dynamicLoadout_F", "PO-30 Orca", "vehspawn"] call A3M_fnc_buyVehicle; };
};
