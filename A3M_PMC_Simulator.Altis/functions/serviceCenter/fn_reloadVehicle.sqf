/*
X Reload + Budgeting (A spin-off of Xeno's X-Reload) V 1.0 by Cody Salazar AKA Fr33d0m
Modified by MrPakeha

Refactored into functions for better modularity.

License:
You can do whatever you were going to do anyway. Just give credit
*/

params ["_object"];

private _Debug = 0;
private _type = typeOf _object;
private _ReloadTime = 1;
private _ReFuelCost = 0;
private _ReArmCost = 0;
private _GasPrice = paramsArray select 4;
private _RepairPrice = paramsArray select 5;

// Function to rearm the vehicle
A3M_fnc_rearmVehicle = {
    params ["_object", "_Debug", "_ReloadTime"];
    private _type = typeOf _object;
    private _ReArmCost = 0;

    private _magazines = getArray(configFile >> "CfgVehicles" >> _type >> "magazines");
    private _SavedMags = count magazines _object;

    if (_Debug == 1) then { hint format ["Magazines Saved: %1", _SavedMags]; };

    if (count _magazines > 0) then {
        private _removed = [];
        {
            if (!(_x in _removed)) then {
                _object removeMagazines _x;
                _removed pushBack _x;
            };
        } forEach _magazines;

        {
            _object vehicleChat format ["Reloading %1", _x];
            sleep _ReloadTime;
            _object addMagazine _x;
            _ReArmCost = _ReArmCost + 100;
        } forEach _magazines;
    };

    private _count = count (configFile >> "CfgVehicles" >> _type >> "Turrets");
    if (_count > 0) then {
        for "_i" from 0 to (_count - 1) do {
            private _config = (configFile >> "CfgVehicles" >> _type >> "Turrets") select _i;
            private _magazines = getArray(_config >> "magazines");
            private _removed = [];
            {
                if (!(_x in _removed)) then {
                    _object removeMagazines _x;
                    _removed pushBack _x;
                };
            } forEach _magazines;

            {
                _object vehicleChat format ["Rearming %1", _x];
                sleep _ReloadTime;
                _object addMagazine _x;
                _ReArmCost = _ReArmCost + 100;
                sleep _ReloadTime;
            } forEach _magazines;

            private _count_other = count (_config >> "Turrets");
            if (_count_other > 0) then {
                for "_i" from 0 to (_count_other - 1) do {
                    private _config2 = (_config >> "Turrets") select _i;
                    private _magazines = getArray(_config2 >> "magazines");
                    private _removed = [];
                    {
                        if (!(_x in _removed)) then {
                            _object removeMagazines _x;
                            _removed pushBack _x;
                        };
                    } forEach _magazines;

                    {
                        _object vehicleChat format ["Reloading %1", _x];
                        sleep _ReloadTime;
                        _object addMagazine _x;
                        _ReArmCost = _ReArmCost + 100;
                        sleep _ReloadTime;
                    } forEach _magazines;
                };
            };
        };
    };

    _SavedMags = _SavedMags * 100;
    _ReArmCost = _ReArmCost - _SavedMags;

    if (_Debug == 1) then {
        hint format ["_SavedMags Count is %1", _SavedMags];
        sleep 5;
        hint format ["_ReArmCost is %1", _ReArmCost];
        sleep 5;
    };

    B_DefenseBudget = B_DefenseBudget - _ReArmCost;
    _object setVehicleAmmo 1;
    sleep _ReloadTime;

    _ReArmCost
};

// Function to repair the vehicle
A3M_fnc_repairVehicle = {
    params ["_object", "_Debug", "_ReloadTime", "_RepairPrice"];
    private _CurDmg = getDammage _object;
    private _DmgWait = _CurDmg * 10;
    private _LaborPrice = _DmgWait * _RepairPrice;
    private _PartsPrice = _CurDmg * 10000;
    private _DmgPrice = _LaborPrice + _PartsPrice;

    hint format [" SERVICE DEPARTMENT: \n \n The service will take %1 Labor Hours to complete, that'll run about $%2 at the agreed labor price of $%3 per hour... \n \n The service will cost  $%4 in parts... \n \n The total cost will be $%5", _DmgWait, _LaborPrice, _RepairPrice, _PartsPrice, _DmgPrice];
    sleep 5;

    B_DefenseBudget = B_DefenseBudget - _DmgPrice;
    _object vehicleChat "Repairing...";
    sleep _DmgWait;
    _object setDamage 0;

    _DmgPrice
};

// Function to refuel the vehicle
A3M_fnc_refuelVehicle = {
    params ["_object", "_LastFuelState", "_GasPrice", "_ReloadTime"];
    private _ReFuelCost = 0;

    _object vehicleChat "Refuelling...";
    _object setFuel _LastFuelState;
    sleep 0.5;

    while { fuel _object < 0.99 } do {
        _object setFuel ((fuel _object + 0.10) min 1);
        B_DefenseBudget = B_DefenseBudget - _GasPrice;
        _ReFuelCost = _ReFuelCost + _GasPrice;
        sleep 0.10;
    };

    sleep _ReloadTime;

    _ReFuelCost
};

// Function to update budget
A3M_fnc_updateBudget = {
    params ["_ReArmCost", "_ReFuelCost", "_DmgPrice", "_type"];
    private _SubTotal = _ReArmCost + _ReFuelCost + _DmgPrice;
    hint format ["Service Cost: \n \n Rearmament: $%1 \n \n Repairs: $%2, \n \n Refuelling: $%3 \n \n Total: $%4 \n \n Billed to OPSG PMC GROUP.", _ReArmCost, _DmgPrice, _ReFuelCost, _SubTotal];
    B_TotalCost = B_TotalCost + _SubTotal;
    publicVariable "B_TotalCost";
    publicVariable "B_DefenseBudget";
};

if (isNil "B_DefenseBudget") then { B_DefenseBudget = paramsArray select 1 };
if (isNil "B_TotalCost") then { B_TotalCost = 0 };

if (B_DefenseBudget < 5000) exitWith {
    hint "OPSG does not have the available company funds to service this vehicle.";
};

private _LastFuelState = fuel _object;
_object setFuel 0;
_object vehicleChat format ["Servicing %1... Please stand by...", _type];

// Rearm the vehicle
_ReArmCost = [_object, _Debug, _ReloadTime] call A3M_fnc_rearmVehicle;

// Repair the vehicle
private _DmgPrice = [_object, _Debug, _ReloadTime, _RepairPrice] call A3M_fnc_repairVehicle;

// Refuel the vehicle
_ReFuelCost = [_object, _LastFuelState, _GasPrice, _ReloadTime] call A3M_fnc_refuelVehicle;

// Update budget
[_ReArmCost, _ReFuelCost, _DmgPrice, _type] call A3M_fnc_updateBudget;

_object vehicleChat format ["%1 is ready...try and treat her right!", _type];
