private _rank = rank player;

switch (TheSelection) do {
    case 2: { ["RHS_Su25SM_vvs", "RUS (VVS grey) Su-25SM", "vehspawn"] call A3M_fnc_buyVehicle; };
    case 3: { ["RHS_Su25SM_vvsc", "RUS (VVS camo) Su-25SM", "vehspawn"] call A3M_fnc_buyVehicle; };
    case 4: { ["rhs_a10", "A-10A Thunderbolt II", "vehspawn"] call A3M_fnc_buyVehicle; };
    case 5: { ["RHS_C130J", "Hercules C-130J", "vehspawn"] call A3M_fnc_buyVehicle; };
};
