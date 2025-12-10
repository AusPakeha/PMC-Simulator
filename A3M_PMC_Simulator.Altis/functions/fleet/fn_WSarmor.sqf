private _rank = rank player;

switch (TheSelection) do {
    case 0: { ["B_ION_APC_Wheeled_01_command_lxWS", "ION PMC Badger IFV (Command)", "vehspawn"] call A3M_fnc_buyVehicle; };
    case 1: { ["B_ION_APC_Wheeled_02_hmg_lxWS", "ION PMC Otokar ARMA (HMG)", "vehspawn"] call A3M_fnc_buyVehicle; };
    case 2: { ["B_APC_Wheeled_01_atgm_lxWS", "Badger IFV (ATGM)", "vehspawn"] call A3M_fnc_buyVehicle; };
};
