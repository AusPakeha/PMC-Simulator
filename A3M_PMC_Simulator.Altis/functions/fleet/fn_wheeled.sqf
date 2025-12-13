switch (TheSelection) do {
    case 0: { ["B_MRAP_01_F", "MAT-V Unarmed Vehicle", "vehspawn"] call A3M_fnc_buyVehicle; };
    case 1: { ["B_MRAP_01_hmg_F", "MAT-V Armed (.50 HMG)", "vehspawn"] call A3M_fnc_buyVehicle; };
    case 2: { ["B_MRAP_01_gmg_F", "MAT-V Armed (40mm GMG)", "vehspawn"] call A3M_fnc_buyVehicle; };
    case 3: { ["B_Truck_01_covered_F", "HEMTT Troop Transport - Covered", "vehspawn"] call A3M_fnc_buyVehicle; };
    case 4: { ["B_Truck_01_transport_F", "HEMTT Troop Transport - Open", "vehspawn"] call A3M_fnc_buyVehicle; };
    case 5: { ["B_Quadbike_01_F", "ATV", "vehspawn"] call A3M_fnc_buyVehicle; };
    case 6: { ["DEGA_ArmoredSUV_PMC", "Armored SUV", "vehspawn"] call A3M_fnc_buyVehicle; };
    case 7: { ["DEGA_GunArmoredSUV_PMC", "Armored SUV (Minigun)", "vehspawn"] call A3M_fnc_buyVehicle; };
    default { hint "Something went wrong...Couldn't find case for selection!" };
};
