EVDSellVehicles = false;

EVDGetMaterials = {
	private ["_type","_materials"];

	_type = _this select 0;

	switch (_type) do {
		case "MedBox0": 	{ _materials = [["PartGeneric", 1]] };
	};

	_materials;
};
