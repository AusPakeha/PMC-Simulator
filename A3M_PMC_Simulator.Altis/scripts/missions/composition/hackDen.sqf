// Export of 'A3M%20Compositions.VR' by MrPakeha on v0.9

// /////////////////////////////////////////////////////////////////////////////////////////
// Init
params [["_layerWhiteList", [], [[]]], ["_layerBlacklist", [], [[]]], ["_posCenter", [0, 0, 0], [[]]], ["_dir", 0, [0]], ["_idBlacklist", [], [[]]]];
private _allWhitelisted = _layerWhiteList isEqualTo [];
private _layerRoot = (_allWhitelisted || {
	true in _layerWhiteList
}) && {
	!(true in _layerBlackList)
};

// /////////////////////////////////////////////////////////////////////////////////////////
// Markers
private _markers = [];
private _markerIDs = [];

// /////////////////////////////////////////////////////////////////////////////////////////
// Groups
private _groups = [];
private _groupIDs = [];

// /////////////////////////////////////////////////////////////////////////////////////////
// Objects
private _objects = [];
private _objectIDs = [];

private _item0 = objNull;
if (_layerRoot) then {
	_item0 = createVehicle ["Land_i_House_Big_02_V1_F", [6431.51, 6684.46, 0], [], 0, "CAN_COLLIDE"];
	_this = _item0;
	_objects pushBack _this;
	_objectIDs pushBack 0;
	_this setPosWorld [6431.51, 6684.46, 7.88397];
	_this setVectorDirAndUp [[0, 1, 0], [0, 0, 1]];
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
};

private _item1 = objNull;
if (_layerRoot) then {
	_item1 = createVehicle ["A3M_SmallServerRack", [6435.41, 6685.99, 3.66659], [], 0, "CAN_COLLIDE"];
	_this = _item1;
	_objects pushBack _this;
	_objectIDs pushBack 1;
	_this setPosWorld [6435.41, 6685.99, 9.95155];
	_this setVectorDirAndUp [[0.00328388, -0.999995, 0], [0, 0, 1]];
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
};

private _item106 = objNull;
if (_layerRoot) then {
	_item106 = createSimpleObject ["Land_Laptop_unfolded_F", [6435.25, 6686.89, 9.56559]];
	_this = _item106;
	_objects pushBack _this;
	_objectIDs pushBack 106;
	_this setPosWorld [6435.25, 6686.89, 9.72166];
	_this setVectorDirAndUp [[-1, 4.88762e-07, 0], [0, 0, 1]];
	if (is3DEN) then {
		_this addEventHandler ['AttributesChanged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
		_this addEventHandler ['Dragged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
	};
	if (!isMultiplayer && 1 != 1) then {
		[_this, 1] spawn {
			sleep 0.5;
			(_this select 0) setObjectScale (_this select 1)
		}
	};
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
	_this setObjectTextureGlobal [0, "#(argb, 8, 8, 3)color(0, 0, 0, 0, co)"];
};

private _item107 = objNull;
if (_layerRoot) then {
	_item107 = createSimpleObject ["Land_USB_Dongle_01_F", [6435.05, 6686.87, 9.39459]];
	_this = _item107;
	_objects pushBack _this;
	_objectIDs pushBack 107;
	_this setPosWorld [6435.05, 6686.87, 9.40298];
	_this setVectorDirAndUp [[1, -2.8213e-07, 0], [0, 0, 1]];
	if (is3DEN) then {
		_this addEventHandler ['AttributesChanged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
		_this addEventHandler ['Dragged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
	};
	if (!isMultiplayer && 1 != 1) then {
		[_this, 1] spawn {
			sleep 0.5;
			(_this select 0) setObjectScale (_this select 1)
		}
	};
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
};

private _item108 = objNull;
if (_layerRoot) then {
	_item108 = createSimpleObject ["Land_MRL_Magazine_01_F", [6435.85, 6688.03, 9.17519]];
	_this = _item108;
	_objects pushBack _this;
	_objectIDs pushBack 108;
	_this setPosWorld [6435.85, 6688.03, 9.17519];
	_this setVectorDirAndUp [[3.82137e-15, -1, -8.74228e-08], [-1, 0, -4.37114e-08]];
	if (is3DEN) then {
		_this addEventHandler ['AttributesChanged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
		_this addEventHandler ['Dragged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
	};
	if (!isMultiplayer && 1 != 1) then {
		[_this, 1] spawn {
			sleep 0.5;
			(_this select 0) setObjectScale (_this select 1)
		}
	};
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
};

private _item109 = objNull;
if (_layerRoot) then {
	_item109 = createSimpleObject ["Land_MRL_Magazine_01_F", [6435.85, 6688.03, 10.2012]];
	_this = _item109;
	_objects pushBack _this;
	_objectIDs pushBack 109;
	_this setPosWorld [6435.85, 6688.03, 10.2012];
	_this setVectorDirAndUp [[3.82137e-15, -1, -8.74228e-08], [-1, 0, -4.37114e-08]];
	if (is3DEN) then {
		_this addEventHandler ['AttributesChanged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
		_this addEventHandler ['Dragged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
	};
	if (!isMultiplayer && 1 != 1) then {
		[_this, 1] spawn {
			sleep 0.5;
			(_this select 0) setObjectScale (_this select 1)
		}
	};
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
};

private _item111 = objNull;
if (_layerRoot) then {
	_item111 = createSimpleObject ["Land_PortableServer_01_olive_F", [6435.86, 6686.91, 8.66659]];
	_this = _item111;
	_objects pushBack _this;
	_objectIDs pushBack 111;
	_this setPosWorld [6435.86, 6686.91, 8.83966];
	_this setVectorDirAndUp [[1, -2.8213e-07, 0], [0, 0, 1]];
	if (is3DEN) then {
		_this addEventHandler ['AttributesChanged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
		_this addEventHandler ['Dragged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
	};
	if (!isMultiplayer && 1 != 1) then {
		[_this, 1] spawn {
			sleep 0.5;
			(_this select 0) setObjectScale (_this select 1)
		}
	};
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
	_this animateSource ['Lights_Off_Source', 0, true];
	_this animateSource ['Server_Move_Source', 0, true];
	_this animateSource ['Server_Hide_Source', 0, true];
};

private _item112 = objNull;
if (_layerRoot) then {
	_item112 = createSimpleObject ["Land_PortableServer_01_olive_F", [6435.86, 6686.91, 8.97259]];
	_this = _item112;
	_objects pushBack _this;
	_objectIDs pushBack 112;
	_this setPosWorld [6435.86, 6686.91, 9.14566];
	_this setVectorDirAndUp [[1, -3.50078e-06, 0], [0, 0, 1]];
	if (is3DEN) then {
		_this addEventHandler ['AttributesChanged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
		_this addEventHandler ['Dragged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
	};
	if (!isMultiplayer && 1 != 1) then {
		[_this, 1] spawn {
			sleep 0.5;
			(_this select 0) setObjectScale (_this select 1)
		}
	};
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
	_this animateSource ['Lights_Off_Source', 0, true];
	_this animateSource ['Server_Move_Source', 0, true];
	_this animateSource ['Server_Hide_Source', 0, true];
};

private _item113 = objNull;
if (_layerRoot) then {
	_item113 = createSimpleObject ["Land_PortableServer_01_olive_F", [6435.86, 6686.91, 9.30659]];
	_this = _item113;
	_objects pushBack _this;
	_objectIDs pushBack 113;
	_this setPosWorld [6435.86, 6686.91, 9.47966];
	_this setVectorDirAndUp [[1, -3.50078e-06, 0], [0, 0, 1]];
	if (is3DEN) then {
		_this addEventHandler ['AttributesChanged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
		_this addEventHandler ['Dragged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
	};
	if (!isMultiplayer && 1 != 1) then {
		[_this, 1] spawn {
			sleep 0.5;
			(_this select 0) setObjectScale (_this select 1)
		}
	};
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
	_this animateSource ['Lights_Off_Source', 0, true];
	_this animateSource ['Server_Move_Source', 0.8, true];
	_this animateSource ['Server_Hide_Source', 0, true];
};

private _item114 = objNull;
if (_layerRoot) then {
	_item114 = createSimpleObject ["Land_PortableServer_01_olive_F", [6435.86, 6686.91, 9.63259]];
	_this = _item114;
	_objects pushBack _this;
	_objectIDs pushBack 114;
	_this setPosWorld [6435.86, 6686.91, 9.80566];
	_this setVectorDirAndUp [[1, -3.50078e-06, 0], [0, 0, 1]];
	if (is3DEN) then {
		_this addEventHandler ['AttributesChanged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
		_this addEventHandler ['Dragged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
	};
	if (!isMultiplayer && 1 != 1) then {
		[_this, 1] spawn {
			sleep 0.5;
			(_this select 0) setObjectScale (_this select 1)
		}
	};
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
	_this animateSource ['Lights_Off_Source', 0, true];
	_this animateSource ['Server_Move_Source', 0, true];
	_this animateSource ['Server_Hide_Source', 0, true];
};

private _item115 = objNull;
if (_layerRoot) then {
	_item115 = createSimpleObject ["Land_PortableServer_01_olive_F", [6435.86, 6686.91, 9.95859]];
	_this = _item115;
	_objects pushBack _this;
	_objectIDs pushBack 115;
	_this setPosWorld [6435.86, 6686.91, 10.1317];
	_this setVectorDirAndUp [[1, -3.50078e-06, 0], [0, 0, 1]];
	if (is3DEN) then {
		_this addEventHandler ['AttributesChanged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
		_this addEventHandler ['Dragged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
	};
	if (!isMultiplayer && 1 != 1) then {
		[_this, 1] spawn {
			sleep 0.5;
			(_this select 0) setObjectScale (_this select 1)
		}
	};
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
	_this animateSource ['Lights_Off_Source', 0, true];
	_this animateSource ['Server_Move_Source', 0, true];
	_this animateSource ['Server_Hide_Source', 0, true];
};

private _item116 = objNull;
if (_layerRoot) then {
	_item116 = createSimpleObject ["Land_PortableServer_01_olive_F", [6435.86, 6686.91, 10.2856]];
	_this = _item116;
	_objects pushBack _this;
	_objectIDs pushBack 116;
	_this setPosWorld [6435.86, 6686.91, 10.4587];
	_this setVectorDirAndUp [[1, -3.50078e-06, 0], [0, 0, 1]];
	if (is3DEN) then {
		_this addEventHandler ['AttributesChanged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
		_this addEventHandler ['Dragged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
	};
	if (!isMultiplayer && 1 != 1) then {
		[_this, 1] spawn {
			sleep 0.5;
			(_this select 0) setObjectScale (_this select 1)
		}
	};
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
	_this animateSource ['Lights_Off_Source', 0, true];
	_this animateSource ['Server_Move_Source', 0, true];
	_this animateSource ['Server_Hide_Source', 0, true];
};

private _item117 = objNull;
if (_layerRoot) then {
	_item117 = createSimpleObject ["Land_PortableServer_01_olive_F", [6435.86, 6688.47, 8.66659]];
	_this = _item117;
	_objects pushBack _this;
	_objectIDs pushBack 117;
	_this setPosWorld [6435.86, 6688.47, 8.83966];
	_this setVectorDirAndUp [[1, -3.50078e-06, 0], [0, 0, 1]];
	if (is3DEN) then {
		_this addEventHandler ['AttributesChanged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
		_this addEventHandler ['Dragged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
	};
	if (!isMultiplayer && 1 != 1) then {
		[_this, 1] spawn {
			sleep 0.5;
			(_this select 0) setObjectScale (_this select 1)
		}
	};
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
	_this animateSource ['Lights_Off_Source', 0, true];
	_this animateSource ['Server_Move_Source', 0, true];
	_this animateSource ['Server_Hide_Source', 0, true];
};

private _item118 = objNull;
if (_layerRoot) then {
	_item118 = createSimpleObject ["Land_PortableServer_01_olive_F", [6435.86, 6688.47, 8.97259]];
	_this = _item118;
	_objects pushBack _this;
	_objectIDs pushBack 118;
	_this setPosWorld [6435.86, 6688.47, 9.14566];
	_this setVectorDirAndUp [[1, -3.50078e-06, 0], [0, 0, 1]];
	if (is3DEN) then {
		_this addEventHandler ['AttributesChanged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
		_this addEventHandler ['Dragged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
	};
	if (!isMultiplayer && 1 != 1) then {
		[_this, 1] spawn {
			sleep 0.5;
			(_this select 0) setObjectScale (_this select 1)
		}
	};
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
	_this animateSource ['Lights_Off_Source', 0, true];
	_this animateSource ['Server_Move_Source', 0, true];
	_this animateSource ['Server_Hide_Source', 0, true];
};

private _item119 = objNull;
if (_layerRoot) then {
	_item119 = createSimpleObject ["Land_PortableServer_01_olive_F", [6435.86, 6688.47, 9.30659]];
	_this = _item119;
	_objects pushBack _this;
	_objectIDs pushBack 119;
	_this setPosWorld [6435.86, 6688.47, 9.47966];
	_this setVectorDirAndUp [[1, -3.50078e-06, 0], [0, 0, 1]];
	if (is3DEN) then {
		_this addEventHandler ['AttributesChanged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
		_this addEventHandler ['Dragged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
	};
	if (!isMultiplayer && 1 != 1) then {
		[_this, 1] spawn {
			sleep 0.5;
			(_this select 0) setObjectScale (_this select 1)
		}
	};
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
	_this animateSource ['Lights_Off_Source', 0, true];
	_this animateSource ['Server_Move_Source', 0, true];
	_this animateSource ['Server_Hide_Source', 0, true];
};

private _item120 = objNull;
if (_layerRoot) then {
	_item120 = createSimpleObject ["Land_PortableServer_01_olive_F", [6435.86, 6688.47, 9.63259]];
	_this = _item120;
	_objects pushBack _this;
	_objectIDs pushBack 120;
	_this setPosWorld [6435.86, 6688.47, 9.80566];
	_this setVectorDirAndUp [[1, -3.50078e-06, 0], [0, 0, 1]];
	if (is3DEN) then {
		_this addEventHandler ['AttributesChanged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
		_this addEventHandler ['Dragged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
	};
	if (!isMultiplayer && 1 != 1) then {
		[_this, 1] spawn {
			sleep 0.5;
			(_this select 0) setObjectScale (_this select 1)
		}
	};
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
	_this animateSource ['Lights_Off_Source', 0, true];
	_this animateSource ['Server_Move_Source', 0, true];
	_this animateSource ['Server_Hide_Source', 0, true];
};

private _item121 = objNull;
if (_layerRoot) then {
	_item121 = createSimpleObject ["Land_PortableServer_01_olive_F", [6435.86, 6688.47, 9.95859]];
	_this = _item121;
	_objects pushBack _this;
	_objectIDs pushBack 121;
	_this setPosWorld [6435.86, 6688.47, 10.1317];
	_this setVectorDirAndUp [[1, -3.50078e-06, 0], [0, 0, 1]];
	if (is3DEN) then {
		_this addEventHandler ['AttributesChanged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
		_this addEventHandler ['Dragged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
	};
	if (!isMultiplayer && 1 != 1) then {
		[_this, 1] spawn {
			sleep 0.5;
			(_this select 0) setObjectScale (_this select 1)
		}
	};
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
	_this animateSource ['Lights_Off_Source', 0, true];
	_this animateSource ['Server_Move_Source', 0, true];
	_this animateSource ['Server_Hide_Source', 0, true];
};

private _item122 = objNull;
if (_layerRoot) then {
	_item122 = createSimpleObject ["Land_PortableServer_01_olive_F", [6435.86, 6688.47, 10.2856]];
	_this = _item122;
	_objects pushBack _this;
	_objectIDs pushBack 122;
	_this setPosWorld [6435.86, 6688.47, 10.4587];
	_this setVectorDirAndUp [[1, -3.50078e-06, 0], [0, 0, 1]];
	if (is3DEN) then {
		_this addEventHandler ['AttributesChanged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
		_this addEventHandler ['Dragged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
	};
	if (!isMultiplayer && 1 != 1) then {
		[_this, 1] spawn {
			sleep 0.5;
			(_this select 0) setObjectScale (_this select 1)
		}
	};
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
	_this animateSource ['Lights_Off_Source', 0, true];
	_this animateSource ['Server_Move_Source', 0, true];
	_this animateSource ['Server_Hide_Source', 0, true];
};

private _item123 = objNull;
if (_layerRoot) then {
	_item123 = createSimpleObject ["Land_PortableServer_01_olive_F", [6435.86, 6689.12, 8.66659]];
	_this = _item123;
	_objects pushBack _this;
	_objectIDs pushBack 123;
	_this setPosWorld [6435.86, 6689.12, 8.83966];
	_this setVectorDirAndUp [[1, -3.50078e-06, 0], [0, 0, 1]];
	if (is3DEN) then {
		_this addEventHandler ['AttributesChanged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
		_this addEventHandler ['Dragged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
	};
	if (!isMultiplayer && 1 != 1) then {
		[_this, 1] spawn {
			sleep 0.5;
			(_this select 0) setObjectScale (_this select 1)
		}
	};
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
	_this animateSource ['Lights_Off_Source', 0, true];
	_this animateSource ['Server_Move_Source', 0, true];
	_this animateSource ['Server_Hide_Source', 0, true];
};

private _item124 = objNull;
if (_layerRoot) then {
	_item124 = createSimpleObject ["Land_PortableServer_01_olive_F", [6435.86, 6689.12, 8.97259]];
	_this = _item124;
	_objects pushBack _this;
	_objectIDs pushBack 124;
	_this setPosWorld [6435.86, 6689.12, 9.14566];
	_this setVectorDirAndUp [[1, -3.50078e-06, 0], [0, 0, 1]];
	if (is3DEN) then {
		_this addEventHandler ['AttributesChanged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
		_this addEventHandler ['Dragged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
	};
	if (!isMultiplayer && 1 != 1) then {
		[_this, 1] spawn {
			sleep 0.5;
			(_this select 0) setObjectScale (_this select 1)
		}
	};
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
	_this animateSource ['Lights_Off_Source', 0, true];
	_this animateSource ['Server_Move_Source', 0, true];
	_this animateSource ['Server_Hide_Source', 0, true];
};

private _item125 = objNull;
if (_layerRoot) then {
	_item125 = createSimpleObject ["Land_PortableServer_01_olive_F", [6435.86, 6689.12, 9.30659]];
	_this = _item125;
	_objects pushBack _this;
	_objectIDs pushBack 125;
	_this setPosWorld [6435.86, 6689.12, 9.47966];
	_this setVectorDirAndUp [[1, -3.50078e-06, 0], [0, 0, 1]];
	if (is3DEN) then {
		_this addEventHandler ['AttributesChanged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
		_this addEventHandler ['Dragged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
	};
	if (!isMultiplayer && 1 != 1) then {
		[_this, 1] spawn {
			sleep 0.5;
			(_this select 0) setObjectScale (_this select 1)
		}
	};
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
	_this animateSource ['Lights_Off_Source', 0, true];
	_this animateSource ['Server_Move_Source', 0, true];
	_this animateSource ['Server_Hide_Source', 0, true];
};

private _item126 = objNull;
if (_layerRoot) then {
	_item126 = createSimpleObject ["Land_PortableServer_01_olive_F", [6435.86, 6689.12, 9.63259]];
	_this = _item126;
	_objects pushBack _this;
	_objectIDs pushBack 126;
	_this setPosWorld [6435.86, 6689.12, 9.80566];
	_this setVectorDirAndUp [[1, -3.50078e-06, 0], [0, 0, 1]];
	if (is3DEN) then {
		_this addEventHandler ['AttributesChanged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
		_this addEventHandler ['Dragged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
	};
	if (!isMultiplayer && 1 != 1) then {
		[_this, 1] spawn {
			sleep 0.5;
			(_this select 0) setObjectScale (_this select 1)
		}
	};
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
	_this animateSource ['Lights_Off_Source', 0, true];
	_this animateSource ['Server_Move_Source', 0, true];
	_this animateSource ['Server_Hide_Source', 0, true];
};

private _item127 = objNull;
if (_layerRoot) then {
	_item127 = createSimpleObject ["Land_PortableServer_01_olive_F", [6435.86, 6689.12, 9.95859]];
	_this = _item127;
	_objects pushBack _this;
	_objectIDs pushBack 127;
	_this setPosWorld [6435.86, 6689.12, 10.1317];
	_this setVectorDirAndUp [[1, -3.50078e-06, 0], [0, 0, 1]];
	if (is3DEN) then {
		_this addEventHandler ['AttributesChanged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
		_this addEventHandler ['Dragged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
	};
	if (!isMultiplayer && 1 != 1) then {
		[_this, 1] spawn {
			sleep 0.5;
			(_this select 0) setObjectScale (_this select 1)
		}
	};
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
	_this animateSource ['Lights_Off_Source', 0, true];
	_this animateSource ['Server_Move_Source', 0, true];
	_this animateSource ['Server_Hide_Source', 0, true];
};

private _item128 = objNull;
if (_layerRoot) then {
	_item128 = createSimpleObject ["Land_PortableServer_01_olive_F", [6435.86, 6689.12, 10.2856]];
	_this = _item128;
	_objects pushBack _this;
	_objectIDs pushBack 128;
	_this setPosWorld [6435.86, 6689.12, 10.4587];
	_this setVectorDirAndUp [[1, -3.50078e-06, 0], [0, 0, 1]];
	if (is3DEN) then {
		_this addEventHandler ['AttributesChanged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
		_this addEventHandler ['Dragged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
	};
	if (!isMultiplayer && 1 != 1) then {
		[_this, 1] spawn {
			sleep 0.5;
			(_this select 0) setObjectScale (_this select 1)
		}
	};
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
	_this animateSource ['Lights_Off_Source', 0, true];
	_this animateSource ['Server_Move_Source', 0, true];
	_this animateSource ['Server_Hide_Source', 0, true];
};

private _item129 = objNull;
if (_layerRoot) then {
	_item129 = createSimpleObject ["Land_PortableServer_01_olive_F", [6435.86, 6687.83, 8.66659]];
	_this = _item129;
	_objects pushBack _this;
	_objectIDs pushBack 129;
	_this setPosWorld [6435.86, 6687.83, 8.83966];
	_this setVectorDirAndUp [[1, -3.50078e-06, 0], [0, 0, 1]];
	if (is3DEN) then {
		_this addEventHandler ['AttributesChanged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
		_this addEventHandler ['Dragged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
	};
	if (!isMultiplayer && 1 != 1) then {
		[_this, 1] spawn {
			sleep 0.5;
			(_this select 0) setObjectScale (_this select 1)
		}
	};
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
	_this animateSource ['Lights_Off_Source', 0, true];
	_this animateSource ['Server_Move_Source', 0, true];
	_this animateSource ['Server_Hide_Source', 0, true];
};

private _item130 = objNull;
if (_layerRoot) then {
	_item130 = createSimpleObject ["Land_PortableServer_01_olive_F", [6435.86, 6687.83, 8.97259]];
	_this = _item130;
	_objects pushBack _this;
	_objectIDs pushBack 130;
	_this setPosWorld [6435.86, 6687.83, 9.14566];
	_this setVectorDirAndUp [[1, -3.50078e-06, 0], [0, 0, 1]];
	if (is3DEN) then {
		_this addEventHandler ['AttributesChanged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
		_this addEventHandler ['Dragged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
	};
	if (!isMultiplayer && 1 != 1) then {
		[_this, 1] spawn {
			sleep 0.5;
			(_this select 0) setObjectScale (_this select 1)
		}
	};
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
	_this animateSource ['Lights_Off_Source', 0, true];
	_this animateSource ['Server_Move_Source', 0, true];
	_this animateSource ['Server_Hide_Source', 0, true];
};

private _item131 = objNull;
if (_layerRoot) then {
	_item131 = createSimpleObject ["Land_PortableServer_01_olive_F", [6435.86, 6687.83, 9.30659]];
	_this = _item131;
	_objects pushBack _this;
	_objectIDs pushBack 131;
	_this setPosWorld [6435.86, 6687.83, 9.47966];
	_this setVectorDirAndUp [[1, -3.50078e-06, 0], [0, 0, 1]];
	if (is3DEN) then {
		_this addEventHandler ['AttributesChanged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
		_this addEventHandler ['Dragged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
	};
	if (!isMultiplayer && 1 != 1) then {
		[_this, 1] spawn {
			sleep 0.5;
			(_this select 0) setObjectScale (_this select 1)
		}
	};
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
	_this animateSource ['Lights_Off_Source', 0, true];
	_this animateSource ['Server_Move_Source', 0, true];
	_this animateSource ['Server_Hide_Source', 0, true];
};

private _item132 = objNull;
if (_layerRoot) then {
	_item132 = createSimpleObject ["Land_PortableServer_01_olive_F", [6435.86, 6687.83, 9.63259]];
	_this = _item132;
	_objects pushBack _this;
	_objectIDs pushBack 132;
	_this setPosWorld [6435.86, 6687.83, 9.80566];
	_this setVectorDirAndUp [[1, -3.50078e-06, 0], [0, 0, 1]];
	if (is3DEN) then {
		_this addEventHandler ['AttributesChanged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
		_this addEventHandler ['Dragged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
	};
	if (!isMultiplayer && 1 != 1) then {
		[_this, 1] spawn {
			sleep 0.5;
			(_this select 0) setObjectScale (_this select 1)
		}
	};
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
	_this animateSource ['Lights_Off_Source', 0, true];
	_this animateSource ['Server_Move_Source', 0, true];
	_this animateSource ['Server_Hide_Source', 0, true];
};

private _item133 = objNull;
if (_layerRoot) then {
	_item133 = createSimpleObject ["Land_PortableServer_01_olive_F", [6435.86, 6687.83, 9.95859]];
	_this = _item133;
	_objects pushBack _this;
	_objectIDs pushBack 133;
	_this setPosWorld [6435.86, 6687.83, 10.1317];
	_this setVectorDirAndUp [[1, -3.50078e-06, 0], [0, 0, 1]];
	if (is3DEN) then {
		_this addEventHandler ['AttributesChanged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
		_this addEventHandler ['Dragged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
	};
	if (!isMultiplayer && 1 != 1) then {
		[_this, 1] spawn {
			sleep 0.5;
			(_this select 0) setObjectScale (_this select 1)
		}
	};
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
	_this animateSource ['Lights_Off_Source', 0, true];
	_this animateSource ['Server_Move_Source', 0, true];
	_this animateSource ['Server_Hide_Source', 0, true];
};

private _item134 = objNull;
if (_layerRoot) then {
	_item134 = createSimpleObject ["Land_PortableServer_01_olive_F", [6435.86, 6687.83, 10.2856]];
	_this = _item134;
	_objects pushBack _this;
	_objectIDs pushBack 134;
	_this setPosWorld [6435.86, 6687.83, 10.4587];
	_this setVectorDirAndUp [[1, -3.50078e-06, 0], [0, 0, 1]];
	if (is3DEN) then {
		_this addEventHandler ['AttributesChanged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
		_this addEventHandler ['Dragged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
	};
	if (!isMultiplayer && 1 != 1) then {
		[_this, 1] spawn {
			sleep 0.5;
			(_this select 0) setObjectScale (_this select 1)
		}
	};
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
	_this animateSource ['Lights_Off_Source', 0, true];
	_this animateSource ['Server_Move_Source', 0, true];
	_this animateSource ['Server_Hide_Source', 0, true];
};

private _item135 = objNull;
if (_layerRoot) then {
	_item135 = createSimpleObject ["Land_USB_Dongle_01_F", [6432.63, 6685.34, 9.39459]];
	_this = _item135;
	_objects pushBack _this;
	_objectIDs pushBack 135;
	_this setPosWorld [6432.63, 6685.34, 9.40298];
	_this setVectorDirAndUp [[-3.18686e-06, -1, 0], [0, 0, 1]];
	server_unit_usb = _this;
	_this setVehicleVarName "server_unit_usb";
	if (is3DEN) then {
		_this addEventHandler ['AttributesChanged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
		_this addEventHandler ['Dragged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
	};
	if (!isMultiplayer && 1 != 1) then {
		[_this, 1] spawn {
			sleep 0.5;
			(_this select 0) setObjectScale (_this select 1)
		}
	};
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
};

private _item136 = objNull;
if (_layerRoot) then {
	_item136 = createVehicle ["Land_Laptop_unfolded_F", [6432.67, 6685.12, 4.5656], [], 0, "CAN_COLLIDE"];
	_this = _item136;
	_objects pushBack _this;
	_objectIDs pushBack 136;
	_this setPosWorld [6432.67, 6685.12, 9.72167];
	_this setVectorDirAndUp [[0, 1, 0], [0, 0, 1]];
	server_unit_screen = _this;
	_this setVehicleVarName "server_unit_screen";
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this allowDamage false;
	_this setObjectTextureGlobal [0, "a3\structures_f\items\electronics\data\electronics_screens_laptop_co.paa"];
};

private _item137 = objNull;
if (_layerRoot) then {
	_item137 = createSimpleObject ["Land_MRL_Magazine_01_F", [6433.78, 6684.54, 9.17519]];
	_this = _item137;
	_objects pushBack _this;
	_objectIDs pushBack 137;
	_this setPosWorld [6433.78, 6684.54, 9.17519];
	_this setVectorDirAndUp [[-1, -2.11596e-06, -1.1925e-08], [-2.11596e-06, 1, 7.54979e-08]];
	if (is3DEN) then {
		_this addEventHandler ['AttributesChanged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
		_this addEventHandler ['Dragged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
	};
	if (!isMultiplayer && 1 != 1) then {
		[_this, 1] spawn {
			sleep 0.5;
			(_this select 0) setObjectScale (_this select 1)
		}
	};
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
};

private _item138 = objNull;
if (_layerRoot) then {
	_item138 = createSimpleObject ["Land_MRL_Magazine_01_F", [6433.78, 6684.54, 10.2012]];
	_this = _item138;
	_objects pushBack _this;
	_objectIDs pushBack 138;
	_this setPosWorld [6433.78, 6684.54, 10.2012];
	_this setVectorDirAndUp [[-1, -2.11596e-06, -1.1925e-08], [-2.11596e-06, 1, 7.54979e-08]];
	if (is3DEN) then {
		_this addEventHandler ['AttributesChanged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
		_this addEventHandler ['Dragged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
	};
	if (!isMultiplayer && 1 != 1) then {
		[_this, 1] spawn {
			sleep 0.5;
			(_this select 0) setObjectScale (_this select 1)
		}
	};
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
};

private _item142 = objNull;
if (_layerRoot) then {
	_item142 = createVehicle ["Item_FlashDisk", [6429.64, 6686.89, 1.14945], [], 0, "CAN_COLLIDE"];
	_this = _item142;
	_objects pushBack _this;
	_objectIDs pushBack 142;
	_this setPosWorld [6429.64, 6686.89, 6.41709];
	_this setVectorDirAndUp [[-3.18686e-06, -1, 0], [0, 0, 1]];
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
};

private _item143 = objNull;
if (_layerRoot) then {
	_item143 = createSimpleObject ["Land_USB_Dongle_01_F", [6434.99, 6685.19, 9.39459]];
	_this = _item143;
	_objects pushBack _this;
	_objectIDs pushBack 143;
	_this setPosWorld [6434.99, 6685.19, 9.40298];
	_this setVectorDirAndUp [[1, -1.35501e-06, 0], [0, 0, 1]];
	server_unit_usb_1 = _this;
	_this setVehicleVarName "server_unit_usb_1";
	if (is3DEN) then {
		_this addEventHandler ['AttributesChanged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
		_this addEventHandler ['Dragged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
	};
	if (!isMultiplayer && 1 != 1) then {
		[_this, 1] spawn {
			sleep 0.5;
			(_this select 0) setObjectScale (_this select 1)
		}
	};
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
};

private _item144 = objNull;
if (_layerRoot) then {
	_item144 = createSimpleObject ["Land_Laptop_F", [6435.22, 6685.2, 9.56559]];
	_this = _item144;
	_objects pushBack _this;
	_objectIDs pushBack 144;
	_this setPosWorld [6435.22, 6685.2, 9.5871];
	_this setVectorDirAndUp [[-1, 1.91927e-06, 0], [0, 0, 1]];
	server_unit_screen_1 = _this;
	_this setVehicleVarName "server_unit_screen_1";
	if (is3DEN) then {
		_this addEventHandler ['AttributesChanged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
		_this addEventHandler ['Dragged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
	};
	if (!isMultiplayer && 1 != 1) then {
		[_this, 1] spawn {
			sleep 0.5;
			(_this select 0) setObjectScale (_this select 1)
		}
	};
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
};

private _item145 = objNull;
if (_layerRoot) then {
	_item145 = createSimpleObject ["Land_PortableServer_01_olive_F", [6432.67, 6684.54, 8.97259]];
	_this = _item145;
	_objects pushBack _this;
	_objectIDs pushBack 145;
	_this setPosWorld [6432.67, 6684.54, 9.14566];
	_this setVectorDirAndUp [[-1.75635e-06, -1, 0], [0, 0, 1]];
	if (is3DEN) then {
		_this addEventHandler ['AttributesChanged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
		_this addEventHandler ['Dragged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
	};
	if (!isMultiplayer && 1 != 1) then {
		[_this, 1] spawn {
			sleep 0.5;
			(_this select 0) setObjectScale (_this select 1)
		}
	};
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
	_this animateSource ['Lights_Off_Source', 0, true];
	_this animateSource ['Server_Move_Source', 0, true];
	_this animateSource ['Server_Hide_Source', 0, true];
};

private _item146 = objNull;
if (_layerRoot) then {
	_item146 = createSimpleObject ["Land_PortableServer_01_olive_F", [6432.67, 6684.54, 9.30659]];
	_this = _item146;
	_objects pushBack _this;
	_objectIDs pushBack 146;
	_this setPosWorld [6432.67, 6684.54, 9.47966];
	_this setVectorDirAndUp [[-1.75635e-06, -1, 0], [0, 0, 1]];
	if (is3DEN) then {
		_this addEventHandler ['AttributesChanged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
		_this addEventHandler ['Dragged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
	};
	if (!isMultiplayer && 1 != 1) then {
		[_this, 1] spawn {
			sleep 0.5;
			(_this select 0) setObjectScale (_this select 1)
		}
	};
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
	_this animateSource ['Lights_Off_Source', 0, true];
	_this animateSource ['Server_Move_Source', 0.8, true];
	_this animateSource ['Server_Hide_Source', 0, true];
};

private _item147 = objNull;
if (_layerRoot) then {
	_item147 = createSimpleObject ["Land_PortableServer_01_olive_F", [6432.67, 6684.54, 9.63259]];
	_this = _item147;
	_objects pushBack _this;
	_objectIDs pushBack 147;
	_this setPosWorld [6432.67, 6684.54, 9.80566];
	_this setVectorDirAndUp [[-1.75635e-06, -1, 0], [0, 0, 1]];
	if (is3DEN) then {
		_this addEventHandler ['AttributesChanged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
		_this addEventHandler ['Dragged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
	};
	if (!isMultiplayer && 1 != 1) then {
		[_this, 1] spawn {
			sleep 0.5;
			(_this select 0) setObjectScale (_this select 1)
		}
	};
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
	_this animateSource ['Lights_Off_Source', 0, true];
	_this animateSource ['Server_Move_Source', 0, true];
	_this animateSource ['Server_Hide_Source', 0, true];
};

private _item148 = objNull;
if (_layerRoot) then {
	_item148 = createSimpleObject ["Land_PortableServer_01_olive_F", [6432.67, 6684.54, 9.95859]];
	_this = _item148;
	_objects pushBack _this;
	_objectIDs pushBack 148;
	_this setPosWorld [6432.67, 6684.54, 10.1317];
	_this setVectorDirAndUp [[-1.75635e-06, -1, 0], [0, 0, 1]];
	if (is3DEN) then {
		_this addEventHandler ['AttributesChanged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
		_this addEventHandler ['Dragged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
	};
	if (!isMultiplayer && 1 != 1) then {
		[_this, 1] spawn {
			sleep 0.5;
			(_this select 0) setObjectScale (_this select 1)
		}
	};
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
	_this animateSource ['Lights_Off_Source', 0, true];
	_this animateSource ['Server_Move_Source', 0, true];
	_this animateSource ['Server_Hide_Source', 0, true];
};

private _item149 = objNull;
if (_layerRoot) then {
	_item149 = createSimpleObject ["Land_PortableServer_01_olive_F", [6432.67, 6684.54, 10.2856]];
	_this = _item149;
	_objects pushBack _this;
	_objectIDs pushBack 149;
	_this setPosWorld [6432.67, 6684.54, 10.4587];
	_this setVectorDirAndUp [[-1.75635e-06, -1, 0], [0, 0, 1]];
	if (is3DEN) then {
		_this addEventHandler ['AttributesChanged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
		_this addEventHandler ['Dragged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
	};
	if (!isMultiplayer && 1 != 1) then {
		[_this, 1] spawn {
			sleep 0.5;
			(_this select 0) setObjectScale (_this select 1)
		}
	};
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
	_this animateSource ['Lights_Off_Source', 0, true];
	_this animateSource ['Server_Move_Source', 0, true];
	_this animateSource ['Server_Hide_Source', 0, true];
};

private _item150 = objNull;
if (_layerRoot) then {
	_item150 = createSimpleObject ["Land_PortableServer_01_olive_F", [6435.8, 6685.23, 8.97259]];
	_this = _item150;
	_objects pushBack _this;
	_objectIDs pushBack 150;
	_this setPosWorld [6435.8, 6685.23, 9.14566];
	_this setVectorDirAndUp [[1, -4.37114e-08, 0], [0, 0, 1]];
	if (is3DEN) then {
		_this addEventHandler ['AttributesChanged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
		_this addEventHandler ['Dragged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
	};
	if (!isMultiplayer && 1 != 1) then {
		[_this, 1] spawn {
			sleep 0.5;
			(_this select 0) setObjectScale (_this select 1)
		}
	};
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
	_this animateSource ['Lights_Off_Source', 0, true];
	_this animateSource ['Server_Move_Source', 0, true];
	_this animateSource ['Server_Hide_Source', 0, true];
};

private _item151 = objNull;
if (_layerRoot) then {
	_item151 = createSimpleObject ["Land_PortableServer_01_olive_F", [6435.8, 6685.23, 9.30659]];
	_this = _item151;
	_objects pushBack _this;
	_objectIDs pushBack 151;
	_this setPosWorld [6435.8, 6685.23, 9.47966];
	_this setVectorDirAndUp [[1, -4.37114e-08, 0], [0, 0, 1]];
	if (is3DEN) then {
		_this addEventHandler ['AttributesChanged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
		_this addEventHandler ['Dragged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
	};
	if (!isMultiplayer && 1 != 1) then {
		[_this, 1] spawn {
			sleep 0.5;
			(_this select 0) setObjectScale (_this select 1)
		}
	};
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
	_this animateSource ['Lights_Off_Source', 0, true];
	_this animateSource ['Server_Move_Source', 0.8, true];
	_this animateSource ['Server_Hide_Source', 0, true];
};

private _item152 = objNull;
if (_layerRoot) then {
	_item152 = createSimpleObject ["Land_PortableServer_01_olive_F", [6435.8, 6685.23, 9.63259]];
	_this = _item152;
	_objects pushBack _this;
	_objectIDs pushBack 152;
	_this setPosWorld [6435.8, 6685.23, 9.80566];
	_this setVectorDirAndUp [[1, -4.37114e-08, 0], [0, 0, 1]];
	if (is3DEN) then {
		_this addEventHandler ['AttributesChanged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
		_this addEventHandler ['Dragged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
	};
	if (!isMultiplayer && 1 != 1) then {
		[_this, 1] spawn {
			sleep 0.5;
			(_this select 0) setObjectScale (_this select 1)
		}
	};
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
	_this animateSource ['Lights_Off_Source', 0, true];
	_this animateSource ['Server_Move_Source', 0, true];
	_this animateSource ['Server_Hide_Source', 0, true];
};

private _item153 = objNull;
if (_layerRoot) then {
	_item153 = createSimpleObject ["Land_PortableServer_01_olive_F", [6435.8, 6685.23, 9.95859]];
	_this = _item153;
	_objects pushBack _this;
	_objectIDs pushBack 153;
	_this setPosWorld [6435.8, 6685.23, 10.1317];
	_this setVectorDirAndUp [[1, -4.37114e-08, 0], [0, 0, 1]];
	if (is3DEN) then {
		_this addEventHandler ['AttributesChanged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
		_this addEventHandler ['Dragged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
	};
	if (!isMultiplayer && 1 != 1) then {
		[_this, 1] spawn {
			sleep 0.5;
			(_this select 0) setObjectScale (_this select 1)
		}
	};
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
	_this animateSource ['Lights_Off_Source', 0, true];
	_this animateSource ['Server_Move_Source', 0, true];
	_this animateSource ['Server_Hide_Source', 0, true];
};

private _item154 = objNull;
if (_layerRoot) then {
	_item154 = createSimpleObject ["Land_PortableServer_01_olive_F", [6435.8, 6685.23, 10.2856]];
	_this = _item154;
	_objects pushBack _this;
	_objectIDs pushBack 154;
	_this setPosWorld [6435.8, 6685.23, 10.4587];
	_this setVectorDirAndUp [[1, -4.37114e-08, 0], [0, 0, 1]];
	if (is3DEN) then {
		_this addEventHandler ['AttributesChanged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
		_this addEventHandler ['Dragged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
	};
	if (!isMultiplayer && 1 != 1) then {
		[_this, 1] spawn {
			sleep 0.5;
			(_this select 0) setObjectScale (_this select 1)
		}
	};
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
	_this animateSource ['Lights_Off_Source', 0, true];
	_this animateSource ['Server_Move_Source', 0, true];
	_this animateSource ['Server_Hide_Source', 0, true];
};

private _item155 = objNull;
if (_layerRoot) then {
	_item155 = createSimpleObject ["Land_PortableServer_01_olive_F", [6434.21, 6684.54, 8.66659]];
	_this = _item155;
	_objects pushBack _this;
	_objectIDs pushBack 155;
	_this setPosWorld [6434.21, 6684.54, 8.83966];
	_this setVectorDirAndUp [[-1.75635e-06, -1, 0], [0, 0, 1]];
	if (is3DEN) then {
		_this addEventHandler ['AttributesChanged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
		_this addEventHandler ['Dragged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
	};
	if (!isMultiplayer && 1 != 1) then {
		[_this, 1] spawn {
			sleep 0.5;
			(_this select 0) setObjectScale (_this select 1)
		}
	};
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
	_this animateSource ['Lights_Off_Source', 0, true];
	_this animateSource ['Server_Move_Source', 0, true];
	_this animateSource ['Server_Hide_Source', 0, true];
};

private _item156 = objNull;
if (_layerRoot) then {
	_item156 = createSimpleObject ["Land_PortableServer_01_olive_F", [6434.21, 6684.54, 8.97259]];
	_this = _item156;
	_objects pushBack _this;
	_objectIDs pushBack 156;
	_this setPosWorld [6434.21, 6684.54, 9.14566];
	_this setVectorDirAndUp [[-1.75635e-06, -1, 0], [0, 0, 1]];
	if (is3DEN) then {
		_this addEventHandler ['AttributesChanged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
		_this addEventHandler ['Dragged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
	};
	if (!isMultiplayer && 1 != 1) then {
		[_this, 1] spawn {
			sleep 0.5;
			(_this select 0) setObjectScale (_this select 1)
		}
	};
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
	_this animateSource ['Lights_Off_Source', 0, true];
	_this animateSource ['Server_Move_Source', 0, true];
	_this animateSource ['Server_Hide_Source', 0, true];
};

private _item157 = objNull;
if (_layerRoot) then {
	_item157 = createSimpleObject ["Land_PortableServer_01_olive_F", [6434.21, 6684.54, 9.30659]];
	_this = _item157;
	_objects pushBack _this;
	_objectIDs pushBack 157;
	_this setPosWorld [6434.21, 6684.54, 9.47966];
	_this setVectorDirAndUp [[-1.75635e-06, -1, 0], [0, 0, 1]];
	if (is3DEN) then {
		_this addEventHandler ['AttributesChanged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
		_this addEventHandler ['Dragged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
	};
	if (!isMultiplayer && 1 != 1) then {
		[_this, 1] spawn {
			sleep 0.5;
			(_this select 0) setObjectScale (_this select 1)
		}
	};
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
	_this animateSource ['Lights_Off_Source', 0, true];
	_this animateSource ['Server_Move_Source', 0, true];
	_this animateSource ['Server_Hide_Source', 0, true];
};

private _item158 = objNull;
if (_layerRoot) then {
	_item158 = createSimpleObject ["Land_PortableServer_01_olive_F", [6434.21, 6684.54, 9.63259]];
	_this = _item158;
	_objects pushBack _this;
	_objectIDs pushBack 158;
	_this setPosWorld [6434.21, 6684.54, 9.80566];
	_this setVectorDirAndUp [[-1.75635e-06, -1, 0], [0, 0, 1]];
	if (is3DEN) then {
		_this addEventHandler ['AttributesChanged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
		_this addEventHandler ['Dragged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
	};
	if (!isMultiplayer && 1 != 1) then {
		[_this, 1] spawn {
			sleep 0.5;
			(_this select 0) setObjectScale (_this select 1)
		}
	};
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
	_this animateSource ['Lights_Off_Source', 0, true];
	_this animateSource ['Server_Move_Source', 0, true];
	_this animateSource ['Server_Hide_Source', 0, true];
};

private _item159 = objNull;
if (_layerRoot) then {
	_item159 = createSimpleObject ["Land_PortableServer_01_olive_F", [6434.21, 6684.54, 9.95859]];
	_this = _item159;
	_objects pushBack _this;
	_objectIDs pushBack 159;
	_this setPosWorld [6434.21, 6684.54, 10.1317];
	_this setVectorDirAndUp [[-1.75635e-06, -1, 0], [0, 0, 1]];
	if (is3DEN) then {
		_this addEventHandler ['AttributesChanged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
		_this addEventHandler ['Dragged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
	};
	if (!isMultiplayer && 1 != 1) then {
		[_this, 1] spawn {
			sleep 0.5;
			(_this select 0) setObjectScale (_this select 1)
		}
	};
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
	_this animateSource ['Lights_Off_Source', 0, true];
	_this animateSource ['Server_Move_Source', 0, true];
	_this animateSource ['Server_Hide_Source', 0, true];
};

private _item160 = objNull;
if (_layerRoot) then {
	_item160 = createSimpleObject ["Land_PortableServer_01_olive_F", [6434.21, 6684.54, 10.2856]];
	_this = _item160;
	_objects pushBack _this;
	_objectIDs pushBack 160;
	_this setPosWorld [6434.21, 6684.54, 10.4587];
	_this setVectorDirAndUp [[-1.75635e-06, -1, 0], [0, 0, 1]];
	if (is3DEN) then {
		_this addEventHandler ['AttributesChanged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
		_this addEventHandler ['Dragged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
	};
	if (!isMultiplayer && 1 != 1) then {
		[_this, 1] spawn {
			sleep 0.5;
			(_this select 0) setObjectScale (_this select 1)
		}
	};
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
	_this animateSource ['Lights_Off_Source', 0, true];
	_this animateSource ['Server_Move_Source', 0, true];
	_this animateSource ['Server_Hide_Source', 0, true];
};

private _item161 = objNull;
if (_layerRoot) then {
	_item161 = createSimpleObject ["Land_PortableServer_01_olive_F", [6434.86, 6684.54, 8.66659]];
	_this = _item161;
	_objects pushBack _this;
	_objectIDs pushBack 161;
	_this setPosWorld [6434.86, 6684.54, 8.83966];
	_this setVectorDirAndUp [[-1.75635e-06, -1, 0], [0, 0, 1]];
	if (is3DEN) then {
		_this addEventHandler ['AttributesChanged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
		_this addEventHandler ['Dragged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
	};
	if (!isMultiplayer && 1 != 1) then {
		[_this, 1] spawn {
			sleep 0.5;
			(_this select 0) setObjectScale (_this select 1)
		}
	};
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
	_this animateSource ['Lights_Off_Source', 0, true];
	_this animateSource ['Server_Move_Source', 0, true];
	_this animateSource ['Server_Hide_Source', 0, true];
};

private _item162 = objNull;
if (_layerRoot) then {
	_item162 = createSimpleObject ["Land_PortableServer_01_olive_F", [6434.86, 6684.54, 8.97259]];
	_this = _item162;
	_objects pushBack _this;
	_objectIDs pushBack 162;
	_this setPosWorld [6434.86, 6684.54, 9.14566];
	_this setVectorDirAndUp [[-1.75635e-06, -1, 0], [0, 0, 1]];
	if (is3DEN) then {
		_this addEventHandler ['AttributesChanged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
		_this addEventHandler ['Dragged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
	};
	if (!isMultiplayer && 1 != 1) then {
		[_this, 1] spawn {
			sleep 0.5;
			(_this select 0) setObjectScale (_this select 1)
		}
	};
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
	_this animateSource ['Lights_Off_Source', 0, true];
	_this animateSource ['Server_Move_Source', 0, true];
	_this animateSource ['Server_Hide_Source', 0, true];
};

private _item163 = objNull;
if (_layerRoot) then {
	_item163 = createSimpleObject ["Land_PortableServer_01_olive_F", [6434.86, 6684.54, 9.30659]];
	_this = _item163;
	_objects pushBack _this;
	_objectIDs pushBack 163;
	_this setPosWorld [6434.86, 6684.54, 9.47966];
	_this setVectorDirAndUp [[-1.75635e-06, -1, 0], [0, 0, 1]];
	if (is3DEN) then {
		_this addEventHandler ['AttributesChanged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
		_this addEventHandler ['Dragged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
	};
	if (!isMultiplayer && 1 != 1) then {
		[_this, 1] spawn {
			sleep 0.5;
			(_this select 0) setObjectScale (_this select 1)
		}
	};
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
	_this animateSource ['Lights_Off_Source', 0, true];
	_this animateSource ['Server_Move_Source', 0, true];
	_this animateSource ['Server_Hide_Source', 0, true];
};

private _item164 = objNull;
if (_layerRoot) then {
	_item164 = createSimpleObject ["Land_PortableServer_01_olive_F", [6434.86, 6684.54, 9.63259]];
	_this = _item164;
	_objects pushBack _this;
	_objectIDs pushBack 164;
	_this setPosWorld [6434.86, 6684.54, 9.80566];
	_this setVectorDirAndUp [[-1.75635e-06, -1, 0], [0, 0, 1]];
	if (is3DEN) then {
		_this addEventHandler ['AttributesChanged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
		_this addEventHandler ['Dragged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
	};
	if (!isMultiplayer && 1 != 1) then {
		[_this, 1] spawn {
			sleep 0.5;
			(_this select 0) setObjectScale (_this select 1)
		}
	};
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
	_this animateSource ['Lights_Off_Source', 0, true];
	_this animateSource ['Server_Move_Source', 0, true];
	_this animateSource ['Server_Hide_Source', 0, true];
};

private _item165 = objNull;
if (_layerRoot) then {
	_item165 = createSimpleObject ["Land_PortableServer_01_olive_F", [6434.86, 6684.54, 9.95859]];
	_this = _item165;
	_objects pushBack _this;
	_objectIDs pushBack 165;
	_this setPosWorld [6434.86, 6684.54, 10.1317];
	_this setVectorDirAndUp [[-1.75635e-06, -1, 0], [0, 0, 1]];
	if (is3DEN) then {
		_this addEventHandler ['AttributesChanged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
		_this addEventHandler ['Dragged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
	};
	if (!isMultiplayer && 1 != 1) then {
		[_this, 1] spawn {
			sleep 0.5;
			(_this select 0) setObjectScale (_this select 1)
		}
	};
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
	_this animateSource ['Lights_Off_Source', 0, true];
	_this animateSource ['Server_Move_Source', 0, true];
	_this animateSource ['Server_Hide_Source', 0, true];
};

private _item166 = objNull;
if (_layerRoot) then {
	_item166 = createSimpleObject ["Land_PortableServer_01_olive_F", [6434.86, 6684.54, 10.2856]];
	_this = _item166;
	_objects pushBack _this;
	_objectIDs pushBack 166;
	_this setPosWorld [6434.86, 6684.54, 10.4587];
	_this setVectorDirAndUp [[-1.75635e-06, -1, 0], [0, 0, 1]];
	if (is3DEN) then {
		_this addEventHandler ['AttributesChanged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
		_this addEventHandler ['Dragged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
	};
	if (!isMultiplayer && 1 != 1) then {
		[_this, 1] spawn {
			sleep 0.5;
			(_this select 0) setObjectScale (_this select 1)
		}
	};
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
	_this animateSource ['Lights_Off_Source', 0, true];
	_this animateSource ['Server_Move_Source', 0, true];
	_this animateSource ['Server_Hide_Source', 0, true];
};

private _item167 = objNull;
if (_layerRoot) then {
	_item167 = createSimpleObject ["Land_PortableServer_01_olive_F", [6433.56, 6684.54, 8.66659]];
	_this = _item167;
	_objects pushBack _this;
	_objectIDs pushBack 167;
	_this setPosWorld [6433.56, 6684.54, 8.83966];
	_this setVectorDirAndUp [[-1.75635e-06, -1, 0], [0, 0, 1]];
	if (is3DEN) then {
		_this addEventHandler ['AttributesChanged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
		_this addEventHandler ['Dragged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
	};
	if (!isMultiplayer && 1 != 1) then {
		[_this, 1] spawn {
			sleep 0.5;
			(_this select 0) setObjectScale (_this select 1)
		}
	};
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
	_this animateSource ['Lights_Off_Source', 0, true];
	_this animateSource ['Server_Move_Source', 0, true];
	_this animateSource ['Server_Hide_Source', 0, true];
};

private _item168 = objNull;
if (_layerRoot) then {
	_item168 = createSimpleObject ["Land_PortableServer_01_olive_F", [6433.56, 6684.54, 8.97259]];
	_this = _item168;
	_objects pushBack _this;
	_objectIDs pushBack 168;
	_this setPosWorld [6433.56, 6684.54, 9.14566];
	_this setVectorDirAndUp [[-1.75635e-06, -1, 0], [0, 0, 1]];
	if (is3DEN) then {
		_this addEventHandler ['AttributesChanged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
		_this addEventHandler ['Dragged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
	};
	if (!isMultiplayer && 1 != 1) then {
		[_this, 1] spawn {
			sleep 0.5;
			(_this select 0) setObjectScale (_this select 1)
		}
	};
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
	_this animateSource ['Lights_Off_Source', 0, true];
	_this animateSource ['Server_Move_Source', 0, true];
	_this animateSource ['Server_Hide_Source', 0, true];
};

private _item169 = objNull;
if (_layerRoot) then {
	_item169 = createSimpleObject ["Land_PortableServer_01_olive_F", [6433.56, 6684.54, 9.30659]];
	_this = _item169;
	_objects pushBack _this;
	_objectIDs pushBack 169;
	_this setPosWorld [6433.56, 6684.54, 9.47966];
	_this setVectorDirAndUp [[-1.75635e-06, -1, 0], [0, 0, 1]];
	if (is3DEN) then {
		_this addEventHandler ['AttributesChanged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
		_this addEventHandler ['Dragged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
	};
	if (!isMultiplayer && 1 != 1) then {
		[_this, 1] spawn {
			sleep 0.5;
			(_this select 0) setObjectScale (_this select 1)
		}
	};
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
	_this animateSource ['Lights_Off_Source', 0, true];
	_this animateSource ['Server_Move_Source', 0, true];
	_this animateSource ['Server_Hide_Source', 0, true];
};

private _item170 = objNull;
if (_layerRoot) then {
	_item170 = createSimpleObject ["Land_PortableServer_01_olive_F", [6433.56, 6684.54, 9.63259]];
	_this = _item170;
	_objects pushBack _this;
	_objectIDs pushBack 170;
	_this setPosWorld [6433.56, 6684.54, 9.80566];
	_this setVectorDirAndUp [[-1.75635e-06, -1, 0], [0, 0, 1]];
	if (is3DEN) then {
		_this addEventHandler ['AttributesChanged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
		_this addEventHandler ['Dragged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
	};
	if (!isMultiplayer && 1 != 1) then {
		[_this, 1] spawn {
			sleep 0.5;
			(_this select 0) setObjectScale (_this select 1)
		}
	};
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
	_this animateSource ['Lights_Off_Source', 0, true];
	_this animateSource ['Server_Move_Source', 0, true];
	_this animateSource ['Server_Hide_Source', 0, true];
};

private _item171 = objNull;
if (_layerRoot) then {
	_item171 = createSimpleObject ["Land_PortableServer_01_olive_F", [6433.56, 6684.54, 9.95859]];
	_this = _item171;
	_objects pushBack _this;
	_objectIDs pushBack 171;
	_this setPosWorld [6433.56, 6684.54, 10.1317];
	_this setVectorDirAndUp [[-1.75635e-06, -1, 0], [0, 0, 1]];
	if (is3DEN) then {
		_this addEventHandler ['AttributesChanged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
		_this addEventHandler ['Dragged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
	};
	if (!isMultiplayer && 1 != 1) then {
		[_this, 1] spawn {
			sleep 0.5;
			(_this select 0) setObjectScale (_this select 1)
		}
	};
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
	_this animateSource ['Lights_Off_Source', 0, true];
	_this animateSource ['Server_Move_Source', 0, true];
	_this animateSource ['Server_Hide_Source', 0, true];
};

private _item172 = objNull;
if (_layerRoot) then {
	_item172 = createSimpleObject ["Land_PortableServer_01_olive_F", [6433.56, 6684.54, 10.2856]];
	_this = _item172;
	_objects pushBack _this;
	_objectIDs pushBack 172;
	_this setPosWorld [6433.56, 6684.54, 10.4587];
	_this setVectorDirAndUp [[-1.75635e-06, -1, 0], [0, 0, 1]];
	if (is3DEN) then {
		_this addEventHandler ['AttributesChanged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
		_this addEventHandler ['Dragged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
	};
	if (!isMultiplayer && 1 != 1) then {
		[_this, 1] spawn {
			sleep 0.5;
			(_this select 0) setObjectScale (_this select 1)
		}
	};
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
	_this animateSource ['Lights_Off_Source', 0, true];
	_this animateSource ['Server_Move_Source', 0, true];
	_this animateSource ['Server_Hide_Source', 0, true];
};

private _item173 = objNull;
if (_layerRoot) then {
	_item173 = createSimpleObject ["Land_PortableServer_01_olive_F", [6432.67, 6684.54, 8.66659]];
	_this = _item173;
	_objects pushBack _this;
	_objectIDs pushBack 173;
	_this setPosWorld [6432.67, 6684.54, 8.83966];
	_this setVectorDirAndUp [[-1.75635e-06, -1, 0], [0, 0, 1]];
	server_unit = _this;
	_this setVehicleVarName "server_unit";
	if (is3DEN) then {
		_this addEventHandler ['AttributesChanged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
		_this addEventHandler ['Dragged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
	};
	if (!isMultiplayer && 1 != 1) then {
		[_this, 1] spawn {
			sleep 0.5;
			(_this select 0) setObjectScale (_this select 1)
		}
	};
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
	_this animateSource ['Lights_Off_Source', 0, true];
	_this animateSource ['Server_Move_Source', 0, true];
	_this animateSource ['Server_Hide_Source', 0, true];
};

private _item174 = objNull;
if (_layerRoot) then {
	_item174 = createSimpleObject ["Land_PortableServer_01_olive_F", [6435.8, 6685.23, 8.66659]];
	_this = _item174;
	_objects pushBack _this;
	_objectIDs pushBack 174;
	_this setPosWorld [6435.8, 6685.23, 8.83966];
	_this setVectorDirAndUp [[1, -4.37114e-08, 0], [0, 0, 1]];
	server_unit_1 = _this;
	_this setVehicleVarName "server_unit_1";
	if (is3DEN) then {
		_this addEventHandler ['AttributesChanged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
		_this addEventHandler ['Dragged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
	};
	if (!isMultiplayer && 1 != 1) then {
		[_this, 1] spawn {
			sleep 0.5;
			(_this select 0) setObjectScale (_this select 1)
		}
	};
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
	_this animateSource ['Lights_Off_Source', 0, true];
	_this animateSource ['Server_Move_Source', 0, true];
	_this animateSource ['Server_Hide_Source', 0, true];
};

private _item241 = objNull;
if (_layerRoot) then {
	_item241 = createVehicle ["A3M_Sofa", [6427.59, 6682.14, 3.66659], [], 0, "CAN_COLLIDE"];
	_this = _item241;
	_objects pushBack _this;
	_objectIDs pushBack 241;
	_this setPosWorld [6427.59, 6682.14, 9.22062];
	_this setVectorDirAndUp [[-1, 1.19249e-08, 0], [0, 0, 1]];
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
};

private _item242 = objNull;
if (_layerRoot) then {
	_item242 = createVehicle ["A3M_Dildo", [6427.87, 6683.36, 3.54785], [], 0, "CAN_COLLIDE"];
	_this = _item242;
	_objects pushBack _this;
	_objectIDs pushBack 242;
	_this setPosWorld [6427.87, 6683.36, 8.63804];
	_this setVectorDirAndUp [[0.707108, 0.707106, 6.70657e-08], [0.707106, -0.707108, 8.43217e-09]];
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
};

private _item243 = objNull;
if (_layerRoot) then {
	_item243 = createVehicle ["A3M_Fridge", [6435.86, 6684.7, 0.259255], [], 0, "CAN_COLLIDE"];
	_this = _item243;
	_objects pushBack _this;
	_objectIDs pushBack 243;
	_this setPosWorld [6435.86, 6684.7, 6.14521];
	_this setVectorDirAndUp [[1.50996e-07, -1, 0], [0, 0, 1]];
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
};

private _item244 = objNull;
if (_layerRoot) then {
	_item244 = createVehicle ["A3M_SatDish", [6435.3, 6686.39, 7.77339], [], 0, "CAN_COLLIDE"];
	_this = _item244;
	_objects pushBack _this;
	_objectIDs pushBack 244;
	_this setPosWorld [6435.3, 6686.39, 14.297];
	_this setVectorDirAndUp [[0.5, -0.866025, 0], [0, 0, 1]];
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
};

private _item246 = objNull;
if (_layerRoot) then {
	_item246 = createVehicle ["A3M_Safe", [6431.86, 6684.5, 3.66659], [], 0, "CAN_COLLIDE"];
	_this = _item246;
	_objects pushBack _this;
	_objectIDs pushBack 246;
	_this setPosWorld [6431.86, 6684.5, 9.04174];
	_this setVectorDirAndUp [[1.50996e-07, -1, 0], [0, 0, 1]];
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
};

private _item248 = objNull;
if (_layerRoot) then {
	_item248 = createSimpleObject ["Land_TableBig_01_F", [6428.74, 6687.23, 5.25925]];
	_this = _item248;
	_objects pushBack _this;
	_objectIDs pushBack 248;
	_this setPosWorld [6428.74, 6687.23, 5.70372];
	_this setVectorDirAndUp [[0, 1, 0], [0, 0, 1]];
	if (is3DEN) then {
		_this addEventHandler ['AttributesChanged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
		_this addEventHandler ['Dragged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
	};
	if (!isMultiplayer && 1 != 1) then {
		[_this, 1] spawn {
			sleep 0.5;
			(_this select 0) setObjectScale (_this select 1)
		}
	};
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
};

private _item249 = objNull;
if (_layerRoot) then {
	_item249 = createSimpleObject ["Land_ChairWood_F", [6427.85, 6688.11, 5.2]];
	_this = _item249;
	_objects pushBack _this;
	_objectIDs pushBack 249;
	_this setPosWorld [6427.85, 6688.11, 5.19934];
	_this setVectorDirAndUp [[-0.5, 0.866026, 0], [0, 0, 1]];
	if (is3DEN) then {
		_this addEventHandler ['AttributesChanged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
		_this addEventHandler ['Dragged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
	};
	if (!isMultiplayer && 1 != 1) then {
		[_this, 1] spawn {
			sleep 0.5;
			(_this select 0) setObjectScale (_this select 1)
		}
	};
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
};

private _item250 = objNull;
if (_layerRoot) then {
	_item250 = createSimpleObject ["Land_ChairWood_F", [6429.04, 6688, 5.25925]];
	_this = _item250;
	_objects pushBack _this;
	_objectIDs pushBack 250;
	_this setPosWorld [6429.04, 6688, 5.2586];
	_this setVectorDirAndUp [[0, 1, 0], [0, 0, 1]];
	if (is3DEN) then {
		_this addEventHandler ['AttributesChanged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
		_this addEventHandler ['Dragged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
	};
	if (!isMultiplayer && 1 != 1) then {
		[_this, 1] spawn {
			sleep 0.5;
			(_this select 0) setObjectScale (_this select 1)
		}
	};
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
};

private _item251 = objNull;
if (_layerRoot) then {
	_item251 = createSimpleObject ["Land_ChairWood_F", [6428.22, 6686.32, 5.2]];
	_this = _item251;
	_objects pushBack _this;
	_objectIDs pushBack 251;
	_this setPosWorld [6428.22, 6686.32, 5.19934];
	_this setVectorDirAndUp [[-1.99477e-06, -1, 0], [0, 0, 1]];
	if (is3DEN) then {
		_this addEventHandler ['AttributesChanged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
		_this addEventHandler ['Dragged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
	};
	if (!isMultiplayer && 1 != 1) then {
		[_this, 1] spawn {
			sleep 0.5;
			(_this select 0) setObjectScale (_this select 1)
		}
	};
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
};

private _item252 = objNull;
if (_layerRoot) then {
	_item252 = createSimpleObject ["Land_ChairWood_F", [6429.31, 6686.36, 5.2]];
	_this = _item252;
	_objects pushBack _this;
	_objectIDs pushBack 252;
	_this setPosWorld [6429.31, 6686.36, 5.19934];
	_this setVectorDirAndUp [[0.5, -0.866025, 0], [0, 0, 1]];
	if (is3DEN) then {
		_this addEventHandler ['AttributesChanged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
		_this addEventHandler ['Dragged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
	};
	if (!isMultiplayer && 1 != 1) then {
		[_this, 1] spawn {
			sleep 0.5;
			(_this select 0) setObjectScale (_this select 1)
		}
	};
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
};

private _item253 = objNull;
if (_layerRoot) then {
	_item253 = createSimpleObject ["Land_ArmChair_01_F", [6433.06, 6689.02, 5.25925]];
	_this = _item253;
	_objects pushBack _this;
	_objectIDs pushBack 253;
	_this setPosWorld [6433.06, 6689.02, 5.74306];
	_this setVectorDirAndUp [[-1.99477e-06, -1, 0], [0, 0, 1]];
	if (is3DEN) then {
		_this addEventHandler ['AttributesChanged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
		_this addEventHandler ['Dragged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
	};
	if (!isMultiplayer && 1 != 1) then {
		[_this, 1] spawn {
			sleep 0.5;
			(_this select 0) setObjectScale (_this select 1)
		}
	};
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
};

private _item254 = objNull;
if (_layerRoot) then {
	_item254 = createSimpleObject ["Land_OfficeChair_01_F", [6429.95, 6688.42, 8.66659]];
	_this = _item254;
	_objects pushBack _this;
	_objectIDs pushBack 254;
	_this setPosWorld [6429.95, 6688.42, 9.34101];
	_this setVectorDirAndUp [[-0.500002, -0.866024, 0], [0, 0, 1]];
	if (is3DEN) then {
		_this addEventHandler ['AttributesChanged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
		_this addEventHandler ['Dragged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
	};
	if (!isMultiplayer && 1 != 1) then {
		[_this, 1] spawn {
			sleep 0.5;
			(_this select 0) setObjectScale (_this select 1)
		}
	};
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
};

private _item255 = objNull;
if (_layerRoot) then {
	_item255 = createVehicle ["Item_Laptop_Unfolded", [6430.09, 6689.17, 4.5114], [], 0, "CAN_COLLIDE"];
	_this = _item255;
	_objects pushBack _this;
	_objectIDs pushBack 255;
	_this setPosWorld [6430.09, 6689.17, 9.77903];
	_this setVectorDirAndUp [[0, 1, 0], [0, 0, 1]];
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
};

private _item256 = objNull;
if (_layerRoot) then {
	_item256 = createVehicle ["ACE_Can_RedGull_Item", [6430.4, 6689.37, 4.5114], [], 0, "CAN_COLLIDE"];
	_this = _item256;
	_objects pushBack _this;
	_objectIDs pushBack 256;
	_this setPosWorld [6430.4, 6689.37, 10.1726];
	_this setVectorDirAndUp [[0, 1, 0], [0, 0, 1]];
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
};

private _item257 = objNull;
if (_layerRoot) then {
	_item257 = createVehicle ["Intel_File2_F", [6430.51, 6689.14, 4.49736], [], 0, "CAN_COLLIDE"];
	_this = _item257;
	_objects pushBack _this;
	_objectIDs pushBack 257;
	_this setPosWorld [6430.51, 6689.14, 9.50474];
	_this setVectorDirAndUp [[-0.258819, 0.965926, 0], [0, 0, 1]];
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
};

private _item258 = objNull;
if (_layerRoot) then {
	_item258 = createSimpleObject ["Land_Wallet_01_F", [6430.48, 6689.43, 9.49736]];
	_this = _item258;
	_objects pushBack _this;
	_objectIDs pushBack 258;
	_this setPosWorld [6430.48, 6689.43, 9.50813];
	_this setVectorDirAndUp [[0.866025, 0.5, 0], [0, 0, 1]];
	if (is3DEN) then {
		_this addEventHandler ['AttributesChanged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
		_this addEventHandler ['Dragged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
	};
	if (!isMultiplayer && 1 != 1) then {
		[_this, 1] spawn {
			sleep 0.5;
			(_this select 0) setObjectScale (_this select 1)
		}
	};
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
	_this setObjectTextureGlobal [0, "a3\props_f_orange\items\documents\data\wallet_picture_co.paa"];
};

private _item259 = objNull;
if (_layerRoot) then {
	_item259 = createSimpleObject ["Leaflet_05_Old_F", [6430.73, 6689.19, 9.49736]];
	_this = _item259;
	_objects pushBack _this;
	_objectIDs pushBack 259;
	_this setPosWorld [6430.73, 6689.19, 9.50002];
	_this setVectorDirAndUp [[0.866025, -0.5, 0], [0, 0, 1]];
	if (is3DEN) then {
		_this addEventHandler ['AttributesChanged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
		_this addEventHandler ['Dragged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
	};
	if (!isMultiplayer && 1 != 1) then {
		[_this, 1] spawn {
			sleep 0.5;
			(_this select 0) setObjectScale (_this select 1)
		}
	};
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
	_this setObjectTextureGlobal [0, "a3\weapons_f_orange\ammo\data\leaflet_default_co.paa"];
	_this setObjectMaterialGlobal [0, ""];
};

private _item260 = objNull;
if (_layerRoot) then {
	_item260 = createSimpleObject ["Leaflet_05_F", [6430.72, 6689.33, 9.5114]];
	_this = _item260;
	_objects pushBack _this;
	_objectIDs pushBack 260;
	_this setPosWorld [6430.72, 6689.33, 9.53068];
	_this setVectorDirAndUp [[0, 1, 0], [0, 0, 1]];
	if (is3DEN) then {
		_this addEventHandler ['AttributesChanged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
		_this addEventHandler ['Dragged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
	};
	if (!isMultiplayer && 1 != 1) then {
		[_this, 1] spawn {
			sleep 0.5;
			(_this select 0) setObjectScale (_this select 1)
		}
	};
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
	_this setObjectTextureGlobal [0, "a3\weapons_f_orange\ammo\data\leaflet_default_co.paa"];
	_this setObjectMaterialGlobal [0, ""];
};

private _item261 = objNull;
if (_layerRoot) then {
	_item261 = createVehicle ["Land_Garbage_square3_F", [6433.94, 6686.39, 3.606], [], 0, "CAN_COLLIDE"];
	_this = _item261;
	_objects pushBack _this;
	_objectIDs pushBack 261;
	_this setPosWorld [6433.94, 6686.39, 8.65791];
	_this setVectorDirAndUp [[0, 1, 0], [0, 0, 1]];
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
};

private _item262 = objNull;
if (_layerRoot) then {
	_item262 = createVehicle ["Land_Garbage_square3_F", [6429.17, 6688.16, 3.60499], [], 0, "CAN_COLLIDE"];
	_this = _item262;
	_objects pushBack _this;
	_objectIDs pushBack 262;
	_this setPosWorld [6429.17, 6688.16, 8.65691];
	_this setVectorDirAndUp [[0, 1, 0], [0, 0, 1]];
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
};

private _item263 = objNull;
if (_layerRoot) then {
	_item263 = createVehicle ["Land_Garbage_line_F", [6429.54, 6680.79, 3.60093], [], 0, "CAN_COLLIDE"];
	_this = _item263;
	_objects pushBack _this;
	_objectIDs pushBack 263;
	_this setPosWorld [6429.54, 6680.79, 8.65108];
	_this setVectorDirAndUp [[-1, 4.88762e-07, 0], [0, 0, 1]];
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
};

private _item264 = objNull;
if (_layerRoot) then {
	_item264 = createVehicle ["Land_Garbage_square5_F", [6429.99, 6682.62, 0.259255], [], 0, "CAN_COLLIDE"];
	_this = _item264;
	_objects pushBack _this;
	_objectIDs pushBack 264;
	_this setPosWorld [6429.99, 6682.62, 5.29869];
	_this setVectorDirAndUp [[0, 1, 0], [0, 0, 1]];
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
};

private _item265 = objNull;
if (_layerRoot) then {
	_item265 = createVehicle ["A3M_Sofa", [6427.49, 6682.27, 0.259255], [], 0, "CAN_COLLIDE"];
	_this = _item265;
	_objects pushBack _this;
	_objectIDs pushBack 265;
	_this setPosWorld [6427.49, 6682.27, 5.81329];
	_this setVectorDirAndUp [[-1, 1.19249e-08, 0], [0, 0, 1]];
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
};

private _item266 = objNull;
if (_layerRoot) then {
	_item266 = createVehicle ["Land_Garbage_square5_F", [6429.25, 6687.24, 0.259255], [], 0, "CAN_COLLIDE"];
	_this = _item266;
	_objects pushBack _this;
	_objectIDs pushBack 266;
	_this setPosWorld [6429.25, 6687.24, 5.29869];
	_this setVectorDirAndUp [[0, 1, 0], [0, 0, 1]];
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
};

private _item267 = objNull;
if (_layerRoot) then {
	_item267 = createVehicle ["Land_GarbageBin_03_F", [6435.84, 6685.67, 0], [], 0, "CAN_COLLIDE"];
	_this = _item267;
	_objects pushBack _this;
	_objectIDs pushBack 267;
	_this setPosWorld [6435.84, 6685.67, 5.56667];
	_this setVectorDirAndUp [[0, 1, 0], [0, 0, 1]];
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
};

private _item268 = objNull;
if (_layerRoot) then {
	_item268 = createSimpleObject ["Land_OfficeCabinet_01_F", [6427.25, 6684.63, 8.66659]];
	_this = _item268;
	_objects pushBack _this;
	_objectIDs pushBack 268;
	_this setPosWorld [6427.25, 6684.63, 9.44709];
	_this setVectorDirAndUp [[-1, 4.88762e-07, 0], [0, 0, 1]];
	if (is3DEN) then {
		_this addEventHandler ['AttributesChanged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
		_this addEventHandler ['Dragged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
	};
	if (!isMultiplayer && 1 != 1) then {
		[_this, 1] spawn {
			sleep 0.5;
			(_this select 0) setObjectScale (_this select 1)
		}
	};
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
};

private _item269 = objNull;
if (_layerRoot) then {
	_item269 = createSimpleObject ["Land_OfficeCabinet_01_F", [6427.25, 6685.5, 8.66659]];
	_this = _item269;
	_objects pushBack _this;
	_objectIDs pushBack 269;
	_this setPosWorld [6427.25, 6685.5, 9.44709];
	_this setVectorDirAndUp [[-1, 4.88762e-07, 0], [0, 0, 1]];
	if (is3DEN) then {
		_this addEventHandler ['AttributesChanged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
		_this addEventHandler ['Dragged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
	};
	if (!isMultiplayer && 1 != 1) then {
		[_this, 1] spawn {
			sleep 0.5;
			(_this select 0) setObjectScale (_this select 1)
		}
	};
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
};

private _item271 = objNull;
if (_layerRoot) then {
	_item271 = createSimpleObject ["Land_OfficeCabinet_01_F", [6427.25, 6687.25, 8.66659]];
	_this = _item271;
	_objects pushBack _this;
	_objectIDs pushBack 271;
	_this setPosWorld [6427.25, 6687.25, 9.44709];
	_this setVectorDirAndUp [[-1, 4.88762e-07, 0], [0, 0, 1]];
	if (is3DEN) then {
		_this addEventHandler ['AttributesChanged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
		_this addEventHandler ['Dragged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
	};
	if (!isMultiplayer && 1 != 1) then {
		[_this, 1] spawn {
			sleep 0.5;
			(_this select 0) setObjectScale (_this select 1)
		}
	};
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
};

private _item272 = objNull;
if (_layerRoot) then {
	_item272 = createSimpleObject ["OfficeTable_01_old_F", [6430.25, 6689.26, 8.667]];
	_this = _item272;
	_objects pushBack _this;
	_objectIDs pushBack 272;
	_this setPosWorld [6430.25, 6689.26, 9.0894];
	_this setVectorDirAndUp [[0, 1, 0], [0, 0, 1]];
	if (is3DEN) then {
		_this addEventHandler ['AttributesChanged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
		_this addEventHandler ['Dragged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
	};
	if (!isMultiplayer && 1 != 1) then {
		[_this, 1] spawn {
			sleep 0.5;
			(_this select 0) setObjectScale (_this select 1)
		}
	};
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
};

private _item273 = objNull;
if (_layerRoot) then {
	_item273 = createSimpleObject ["Land_OfficeCabinet_02_F", [6427.25, 6686.38, 8.667]];
	_this = _item273;
	_objects pushBack _this;
	_objectIDs pushBack 273;
	_this setPosWorld [6427.25, 6686.38, 9.4475];
	_this setVectorDirAndUp [[-1, 4.88762e-07, 0], [0, 0, 1]];
	if (is3DEN) then {
		_this addEventHandler ['AttributesChanged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
		_this addEventHandler ['Dragged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
	};
	if (!isMultiplayer && 1 != 1) then {
		[_this, 1] spawn {
			sleep 0.5;
			(_this select 0) setObjectScale (_this select 1)
		}
	};
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
};

private _item274 = objNull;
if (_layerRoot) then {
	_item274 = createSimpleObject ["Land_ExtensionCord_F", [6431.25, 6689.25, 8.66659]];
	_this = _item274;
	_objects pushBack _this;
	_objectIDs pushBack 274;
	_this setPosWorld [6431.25, 6689.25, 8.73806];
	_this setVectorDirAndUp [[0, 1, 0], [0, 0, 1]];
	if (is3DEN) then {
		_this addEventHandler ['AttributesChanged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
		_this addEventHandler ['Dragged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
	};
	if (!isMultiplayer && 1 != 1) then {
		[_this, 1] spawn {
			sleep 0.5;
			(_this select 0) setObjectScale (_this select 1)
		}
	};
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
};

private _item275 = objNull;
if (_layerRoot) then {
	_item275 = createSimpleObject ["Land_CarBattery_01_F", [6431.94, 6689.27, 8.66659]];
	_this = _item275;
	_objects pushBack _this;
	_objectIDs pushBack 275;
	_this setPosWorld [6431.94, 6689.27, 8.79377];
	_this setVectorDirAndUp [[-0.5, 0.866026, 0], [0, 0, 1]];
	if (is3DEN) then {
		_this addEventHandler ['AttributesChanged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
		_this addEventHandler ['Dragged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
	};
	if (!isMultiplayer && 1 != 1) then {
		[_this, 1] spawn {
			sleep 0.5;
			(_this select 0) setObjectScale (_this select 1)
		}
	};
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
};

private _item276 = objNull;
if (_layerRoot) then {
	_item276 = createSimpleObject ["Land_FMradio_F", [6427.37, 6687.51, 10.2288]];
	_this = _item276;
	_objects pushBack _this;
	_objectIDs pushBack 276;
	_this setPosWorld [6427.37, 6687.51, 10.3014];
	_this setVectorDirAndUp [[0.946369, 0.323087, 0], [0, 0, 1]];
	if (is3DEN) then {
		_this addEventHandler ['AttributesChanged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
		_this addEventHandler ['Dragged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
	};
	if (!isMultiplayer && 1 != 1) then {
		[_this, 1] spawn {
			sleep 0.5;
			(_this select 0) setObjectScale (_this select 1)
		}
	};
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
};

private _item277 = objNull;
if (_layerRoot) then {
	_item277 = createSimpleObject ["Land_MobilePhone_old_F", [6429.72, 6689.06, 9.49798]];
	_this = _item277;
	_objects pushBack _this;
	_objectIDs pushBack 277;
	_this setPosWorld [6429.72, 6689.06, 9.50535];
	_this setVectorDirAndUp [[-0.295584, -0.955317, 0], [0, 0, 1]];
	if (is3DEN) then {
		_this addEventHandler ['AttributesChanged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
		_this addEventHandler ['Dragged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
	};
	if (!isMultiplayer && 1 != 1) then {
		[_this, 1] spawn {
			sleep 0.5;
			(_this select 0) setObjectScale (_this select 1)
		}
	};
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
	_this setObjectTextureGlobal [0, "a3\structures_f\items\electronics\data\electronics_screens_mobilephone_old_co.paa"];
};

private _item278 = objNull;
if (_layerRoot) then {
	_item278 = createVehicle ["PowerCable_01_CurveShort_F", [6434.72, 6685.52, 3.62], [], 0, "CAN_COLLIDE"];
	_this = _item278;
	_objects pushBack _this;
	_objectIDs pushBack 278;
	_this setPosWorld [6434.72, 6685.52, 8.64629];
	_this setVectorDirAndUp [[0, 1, 0], [0, 0, 1]];
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
	_this animateSource ['Cap_1_hide', 0, true];
	_this animateSource ['Cap_2_hide', 0, true];
};

private _item280 = objNull;
if (_layerRoot) then {
	_item280 = createSimpleObject ["Land_Portable_generator_F", [6432.04, 6690.38, 8.60659]];
	_this = _item280;
	_objects pushBack _this;
	_objectIDs pushBack 280;
	_this setPosWorld [6432.04, 6690.38, 8.96577];
	_this setVectorDirAndUp [[0, 1, 0], [0, 0, 1]];
	if (is3DEN) then {
		_this addEventHandler ['AttributesChanged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
		_this addEventHandler ['Dragged3DEN', {
			params ['_object'];
			_object setObjectScale ((_object get3DENAttribute 'ENH_objectScaling') # 0);
		}];
	};
	if (!isMultiplayer && 1 != 1) then {
		[_this, 1] spawn {
			sleep 0.5;
			(_this select 0) setObjectScale (_this select 1)
		}
	};
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
};

private _item282 = objNull;
if (_layerRoot) then {
	_item282 = createVehicle ["PowerCable_01_CurveShort_F", [6429.25, 6689.65, 3.6334], [], 0, "CAN_COLLIDE"];
	_this = _item282;
	_objects pushBack _this;
	_objectIDs pushBack 282;
	_this setPosWorld [6429.25, 6689.65, 8.65969];
	_this setVectorDirAndUp [[0, 1, 0], [0, 0, 1]];
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
	_this animateSource ['Cap_1_hide', 0, true];
	_this animateSource ['Cap_2_hide', 0, true];
};

private _item283 = objNull;
if (_layerRoot) then {
	_item283 = createVehicle ["PowerCable_01_StraightShort_F", [6430.3, 6690.29, 3.60659], [], 0, "CAN_COLLIDE"];
	_this = _item283;
	_objects pushBack _this;
	_objectIDs pushBack 283;
	_this setPosWorld [6430.3, 6690.29, 8.6338];
	_this setVectorDirAndUp [[0.999986, 0.00523608, 0], [0, 0, 1]];
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
	_this animateSource ['Cap_1_hide', 0, true];
	_this animateSource ['Cap_2_hide', 0, true];
};

private _item284 = objNull;
if (_layerRoot) then {
	_item284 = createVehicle ["PowerCable_01_StraightShort_F", [6431.28, 6690.29, 3.60659], [], 0, "CAN_COLLIDE"];
	_this = _item284;
	_objects pushBack _this;
	_objectIDs pushBack 284;
	_this setPosWorld [6431.28, 6690.29, 8.6338];
	_this setVectorDirAndUp [[0.999986, 0.00523608, 0], [0, 0, 1]];
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
	_this animateSource ['Cap_1_hide', 0, true];
	_this animateSource ['Cap_2_hide', 0, true];
};

private _item285 = objNull;
if (_layerRoot) then {
	_item285 = createVehicle ["PowerCable_01_CurveShort_F", [6429.55, 6687.5, 3.62], [], 0, "CAN_COLLIDE"];
	_this = _item285;
	_objects pushBack _this;
	_objectIDs pushBack 285;
	_this setPosWorld [6429.55, 6687.5, 8.64629];
	_this setVectorDirAndUp [[-0.99988, -0.0154832, 0], [0, 0, 1]];
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
	_this animateSource ['Cap_1_hide', 0, true];
	_this animateSource ['Cap_2_hide', 0, true];
};

private _item286 = objNull;
if (_layerRoot) then {
	_item286 = createVehicle ["PowerCable_01_StraightShort_F", [6428.87, 6688.49, 3.63189], [], 0, "CAN_COLLIDE"];
	_this = _item286;
	_objects pushBack _this;
	_objectIDs pushBack 286;
	_this setPosWorld [6428.87, 6688.49, 8.6591];
	_this setVectorDirAndUp [[-0.0152919, 0.999883, 0], [0, 0, 1]];
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
	_this animateSource ['Cap_1_hide', 0, true];
	_this animateSource ['Cap_2_hide', 0, true];
};

private _item288 = objNull;
if (_layerRoot) then {
	_item288 = createVehicle ["PowerCable_01_CurveLong_F", [6432.78, 6686.18, 3.62696], [], 0, "CAN_COLLIDE"];
	_this = _item288;
	_objects pushBack _this;
	_objectIDs pushBack 288;
	_this setPosWorld [6432.78, 6686.18, 8.65309];
	_this setVectorDirAndUp [[0.999961, 0.00882455, 0], [0, 0, 1]];
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	_this enableSimulation false;
	_this allowDamage false;
	_this animateSource ['Cap_1_hide', 0, true];
	_this animateSource ['Cap_2_hide', 0, true];
};

// /////////////////////////////////////////////////////////////////////////////////////////
// Triggers
private _triggers = [];
private _triggerIDs = [];

// /////////////////////////////////////////////////////////////////////////////////////////
// group attributes (applied only once group units exist)

// /////////////////////////////////////////////////////////////////////////////////////////
// waypoints
private _waypoints = [];
private _waypointIDs = [];

// /////////////////////////////////////////////////////////////////////////////////////////
// Logics
private _logics = [];
private _logicIDs = [];

// /////////////////////////////////////////////////////////////////////////////////////////
// Layers
if (_layerRoot) then {
	missionNamespace setVariable ["A3M%20Compositions_hackDen", [[_item0, _item1, _item106, _item107, _item108, _item109, _item111, _item112, _item113, _item114, _item115, _item116, _item117, _item118, _item119, _item120, _item121, _item122, _item123, _item124, _item125, _item126, _item127, _item128, _item129, _item130, _item131, _item132, _item133, _item134, _item135, _item136, _item137, _item138, _item142, _item143, _item144, _item145, _item146, _item147, _item148, _item149, _item150, _item151, _item152, _item153, _item154, _item155, _item156, _item157, _item158, _item159, _item160, _item161, _item162, _item163, _item164, _item165, _item166, _item167, _item168, _item169, _item170, _item171, _item172, _item173, _item174, _item241, _item242, _item243, _item244, _item246, _item248, _item249, _item250, _item251, _item252, _item253, _item254, _item255, _item256, _item257, _item258, _item259, _item260, _item261, _item262, _item263, _item264, _item265, _item266, _item267, _item268, _item269, _item271, _item272, _item273, _item274, _item275, _item276, _item277, _item278, _item280, _item282, _item283, _item284, _item285, _item286, _item288], []]];
};

// /////////////////////////////////////////////////////////////////////////////////////////
// Crews

// /////////////////////////////////////////////////////////////////////////////////////////
// vehicle cargo

// /////////////////////////////////////////////////////////////////////////////////////////
// Connections

// /////////////////////////////////////////////////////////////////////////////////////////
// Inits (executed only once all entities exist; isNil used to ensure non-scheduled environment)
isNil {
	if !(isNull _item135) then {
		this = _item135;
		this attachTo [server_unit, [0.04, -0.805, -100.55]];
	};
	if !(isNull _item136) then {
		this = _item136;
		this attachTo [server_unit, [0, -0.6, 0.88]];
		this setVectorDirAndUp [[0, -1, 0], [0, 0, 1]];
	};
	if !(isNull _item137) then {
		this = _item137;
		this attachTo [server_unit, [-1.1, 0.0, 0.35]];
		this setVectorDirAndUp [[1, 0, 0], [0, -1, 0]];
	};
	if !(isNull _item138) then {
		this = _item138;
		this attachTo [server_unit, [-1.1, 0.0, 1.38]];
		this setVectorDirAndUp [[1, 0, 0], [0, -1, 0]];
	};
	if !(isNull _item143) then {
		this = _item143;
		this attachTo [server_unit_1, [0.04, -0.805, -100.55]];
	};
	if !(isNull _item144) then {
		this = _item144;
		this attachTo [server_unit_1, [0, -0.6, 0.75]];
		this setVectorDirAndUp [[0, -1, 0], [0, 0, 1]];
	};
	if !(isNull _item145) then {
		this = _item145;
		this attachTo [server_unit, [0, 0, 0.306]];
	};
	if !(isNull _item146) then {
		this = _item146;
		this attachTo [server_unit, [0, 0, 0.64]];
	};
	if !(isNull _item147) then {
		this = _item147;
		this attachTo [server_unit, [0, 0, 0.966]];
	};
	if !(isNull _item148) then {
		this = _item148;
		this attachTo [server_unit, [0, 0, 1.292]];
	};
	if !(isNull _item149) then {
		this = _item149;
		this attachTo [server_unit, [0, 0, 1.619]];
	};
	if !(isNull _item150) then {
		this = _item150;
		this attachTo [server_unit_1, [0, 0, 0.306]];
	};
	if !(isNull _item151) then {
		this = _item151;
		this attachTo [server_unit_1, [0, 0, 0.64]];
	};
	if !(isNull _item152) then {
		this = _item152;
		this attachTo [server_unit_1, [0, 0, 0.966]];
	};
	if !(isNull _item153) then {
		this = _item153;
		this attachTo [server_unit_1, [0, 0, 1.292]];
	};
	if !(isNull _item154) then {
		this = _item154;
		this attachTo [server_unit_1, [0, 0, 1.619]];
	};
};

// /////////////////////////////////////////////////////////////////////////////////////////
// Module activations (only once everything is spawned and connected)

// /////////////////////////////////////////////////////////////////////////////////////////
[[_objects, _groups, _triggers, _waypoints, _logics, _markers], [_objectIDs, _groupIDs, _triggerIDs, _waypointIDs, _logicIDs, _markerIDs]]
