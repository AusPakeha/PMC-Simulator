private _rank = rank player;

switch (TheSelection) do {
    case 0: { ["B_Truck_01_fuel_F", "Military Fuel Truck", "vehspawn"] call A3M_fnc_buyVehicle; };
    case 1: { ["Box_NATO_Ammo_F", "Small shipment of Ammo", "vehspawn"] call A3M_fnc_buyVehicle; };
    case 2: { ["Box_NATO_Wps_F", "Small shipment of weapons", "vehspawn"] call A3M_fnc_buyVehicle; };
    case 3: { ["B_Boat_Armed_01_minigun_F", "Armed Patrol Boat (Minigun)", "vehspawn"] call A3M_fnc_buyVehicle; };
    case 4: { ["B_Boat_Transport_01_F", "Assault Rhib", "vehspawn"] call A3M_fnc_buyVehicle; };
};
