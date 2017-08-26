_heli 	= _this; 
switch (toUpper typeOf _heli) do
{
	case toUpper "O_Heli_Light_02_F" : 
	{
		_heli removeWeapon "missiles_DAGR";
	};
	case toUpper "B_Heli_Light_01_dynamicLoadout_F" : 
	{
		_heli removeWeapon "missiles_DAR"; 
	};
	default {};
};		