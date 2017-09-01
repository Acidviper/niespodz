#include "..\..\script_macros.hpp"
/*
    File: fn_playerSkins.sqf
    Author: Daniel Stuart

    Description:
    Sets skins for players by their side and uniform.
*/
private["_skinName"];

switch(playerSide) do {
	case civilian: {
		if(EQUAL(LIFE_SETTINGS(getNumber,"civ_skins"),1)) then {
			if(uniform player == "U_C_Poor_2") then {
				player setObjectTextureGlobal [0, "textures\Uniform\bh.paa"];
			};

			if(uniform player == "U_B_CombatUniform_mcam") then {
				player setObjectTextureGlobal [0, "textures\Uniform\rebelka.paa"];
			};
		};
	};

	case west: {

		if(uniform player == "U_B_CombatUniform_mcam") then {
			player setObjectTextureGlobal [0, "textures\Uniform\cop_uniform.paa"];
		};
		if(uniform player == "U_B_CombatUniform_mcam_worn") then {
			if((call life_coplevel) < 10) then {player setObjectTextureGlobal [0, "textures\Uniform\cop_uniform1.paa"];};
			if((call life_coplevel) > 9) then {player setObjectTextureGlobal [0, "textures\Uniform\inspektor.paa"];};
		};
		if(uniform player == "U_B_CombatUniform_mcam_vest") then {
			player setObjectTextureGlobal [0, "textures\Uniform\boa_uniform.paa"];
		};
		if(uniform player == "U_B_GhillieSuit") then {
			player setObjectTextureGlobal [0, "textures\Uniform\boa_uniform.paa"];
		};

		unitBackpack player setObjectTextureGlobal [0,""];
	};

	case independent: {

		if(uniform player == "U_B_CombatUniform_mcam" || uniform player == "U_B_CombatUniform_mcam_vest") then {
			player setObjectTextureGlobal [0, "textures\Uniform\medic_uniform.paa"];
		};

		unitBackpack player setObjectTextureGlobal [0,""];
	};
};
