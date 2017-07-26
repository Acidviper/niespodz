/*

	Main configuration for non-persistent market system
	Will need triggers to hook into vanilla pricing methods

*/

	//Schema: SHORTNAME, Default, Min, Max, changes in action, [Sales multiplied by 1, Purchase multiplied by -1]
	//["gold", 1500, 450, 2300, 8, 5],

////////////MAIN CONFIG

life_market_resources = [

	// Default İsler

	["oil_processed", 3000, 300, 4250, 3, 1,
		[
			["s_pro",1],
			["oil_processed",1],
			["diamond_cut",1],
			["jewelery",1],
			["copper_refined",1],
			["iron_refined",1],
			["salt_refined",1],
			["glass",1],
			["cement",1],
			["goldbar",1],
			["bottles",1]
		]
	],

	["diamond_cut", 4500, 450, 5250, 5, 2,
		[
			["s_pro",1],
			["oil_processed",1],
			["jewelery",1],
			["copper_refined",1],
			["iron_refined",1],
			["salt_refined",1],
			["glass",1],
			["cement",1],
			["goldbar",1],
			["bottles",1]
		]
	],

	["jewelery", 22000, 12000, 32000, 5, 2,
		[
			["s_pro",1],
			["oil_processed",1],
			["diamond_cut",1],
			["copper_refined",1],
			["iron_refined",1],
			["salt_refined",1],
			["glass",1],
			["cement",1],
			["goldbar",1],
			["bottles",1]
		]
	],

	["copper_refined", 1900, 190, 2500, 2, 1,
		[
			["s_pro",1],
			["oil_processed",1],
			["diamond_cut",1],
			["jewelery",1],
			["iron_refined",1],
			["salt_refined",1],
			["glass",1],
			["cement",1],
			["goldbar",1],
			["bottles",1]
		]
	],

	["iron_refined", 2100, 350, 4250, 3, 1,
		[
			["s_pro",1],
			["oil_processed",1],
			["diamond_cut",1],
			["jewelery",1],
			["copper_refined",1],
			["salt_refined",1],
			["glass",1],
			["cement",1],
			["goldbar",1],
			["bottles",1]
		]
	],

	["salt_refined", 1400, 140, 3150, 2, 1,
		[
            ["s_pro",1],
			["oil_processed",1],
			["diamond_cut",1],
			["jewelery",1],
			["copper_refined",1],
			["iron_refined",1],
			["glass",1],
			["cement",1],
			["goldbar",1],
			["bottles",1]
		]
	],

	["glass", 2500, 1250, 3500, 2, 1,
		[
            ["s_pro",1],
			["oil_processed",1],
			["diamond_cut",1],
			["jewelery",1],
			["copper_refined",1],
			["iron_refined",1],
			["salt_refined",1],
			["cement",1],
			["goldbar",1],
			["bottles",1]
		]
	],

	["cement", 2500, 1500, 3200, 2, 1,
		[
            ["s_pro",1],
			["oil_processed",1],
			["diamond_cut",1],
			["jewelery",1],
			["copper_refined",1],
			["iron_refined",1],
			["salt_refined",1],
			["glass",1],
			["goldbar",1],
			["bottles",1]
		]
	],

	["goldBar", 95000, 30000, 125000, 2, 1,
		[
			["s_pro",1],
			["oil_processed",1],
			["diamond_cut",1],
			["jewelery",1],
			["copper_refined",1],
			["iron_refined",1],
			["salt_refined",1],
			["glass",1],
			["cement",1],
			["bottles",1]
		]
	],

	["marijuana", 5000, 2200, 6250, 10, 7,
		[
			["cocaine_processed",1],
			["heroin_processed",1],
			["bottledwhiskey",1],
			["bottledbeer",1],
			["bottledshine",1],
			["whiskey",1],
			["beer",1],
			["moonshine",1],
			["turtleRaw",1],
			["uranpre",1],
			["buran",1]
		]
	],

	["cocaine_processed", 9000, 4500, 11250, 15, 10,
		[
			["marijuana",1],
			["heroin_processed",1],
			["bottledwhiskey",1],
			["bottledbeer",1],
			["bottledshine",1],
			["whiskey",1],
			["beer",1],
			["moonshine",1],
			["turtleRaw",1],
			["uranpre",1],
			["buran",1]
		]
	],

	["heroin_processed", 6500, 2500, 8700, 15, 10,
		[
			["marijuana",1],
			["cocaine_processed",1],
			["bottledwhiskey",1],
			["bottledbeer",1],
			["bottledshine",1],
			["whiskey",1],
			["beer",1],
			["moonshine",1],
			["turtleRaw",1],
			["uranpre",1],
			["buran",1]
		]
	],

	["bottledwhiskey", 6000, 2500, 7500, 3, 1,
		[
			["marijuana",1],
			["cocaine_processed",1],
			["heroin_processed",1],
			["bottledbeer",1],
			["bottledshine",1],
			["whiskey",1],
			["beer",1],
			["moonshine",1],
			["turtleRaw",1],
			["uranpre",1],
			["buran",1]
		]
	],

	["bottledbeer", 4500, 2500, 6500, 3, 1,
		[
			["marijuana",1],
			["cocaine_processed",1],
			["heroin_processed",1],
			["bottledwhiskey",1],
			["bottledshine",1],
			["whiskey",1],
			["beer",1],
			["moonshine",1],
			["turtleRaw",1],
			["uranpre",1],
			["buran",1]
		]
	],

	["whiskey", 2500, 100, 5500, 2, 1,
		[
			["marijuana",1],
			["cocaine_processed",1],
			["heroin_processed",1],
			["bottledwhiskey",1],
			["bottledbeer",1],
			["bottledshine",1],
			["beer",1],
			["moonshine",1],
			["turtleRaw",1],
			["uranpre",1],
			["buran",1]
		]
	],

	["beer", 1000, 50, 4000, 2, 1,
		[
			["marijuana",1],
			["cocaine_processed",1],
			["heroin_processed",1],
			["bottledwhiskey",1],
			["bottledbeer",1],
			["bottledshine",1],
			["whiskey",1],
			["moonshine",1],
			["turtleRaw",1],
			["uranpre",1],
			["buran",1]
		]
	],

	["rye", 300, 50, 600, 2, 1,
		[
			["hops",1],
			["yeast",1],
			["cornmeal",1],
			["mash",1]
		]
	],

	["hops", 300, 50, 600, 2, 1,
		[
			["rye",1],
			["yeast",1],
			["cornmeal",1],
			["mash",1]
		]
	],

	["yeast", 300, 50, 600, 2, 1,
		[
			["rye",1],
			["hops",1],
			["cornmeal",1],
			["mash",1]
		]
	],

	["cornmeal", 300, 50, 600, 2, 1,
		[
			["rye",1],
			["hops",1],
			["yeast",1],
			["mash",1]
		]
	],

	["bottles", 1800, 600, 2600, 2, 1,
		[
			["s_pro",1],
			["oil_processed",1],
			["diamond_cut",1],
			["jewelery",1],
			["copper_refined",1],
			["iron_refined",1],
			["salt_refined",1],
			["glass",1],
			["cement",1],
			["goldbar",1]
		]
	],

	["bottledshine", 4500, 1500, 6500, 3, 1,
		[
			["marijuana",1],
			["cocaine_processed",1],
			["heroin_processed",1],
			["bottledwhiskey",1],
			["bottledbeer",1],
			["whiskey",1],
			["beer",1],
			["moonshine",1],
			["turtleRaw",1],
			["buran",1]
		]
	],

	["moonshine", 1000, 250, 2500, 2, 1,
		[
			["marijuana",1],
			["cocaine_processed",1],
			["heroin_processed",1],
			["bottledwhiskey",1],
			["bottledbeer",1],
			["bottledshine",1],
			["whiskey",1],
			["beer",1],
			["turtleRaw",1],
			["buran",1]
		]
	],

	["mash", 100, 25, 200, 2, 1,
		[
			["rye",1],
			["hops",1],
			["yeast",1],
			["cornmeal",1]
		]
	],

	["turtle_Raw", 25000, 12500, 35000, 3, 1,
		[
		    ["marijuana",1],
			["cocaine_processed",1],
			["heroin_processed",1],
			["bottledwhiskey",1],
			["bottledbeer",1],
			["bottledshine",1],
			["whiskey",1],
			["beer",1],
			["moonshine",1],
			["buran",1]
		]
	],

	["uranpre", 75000, 45000, 85000, 15, 10,
		[
			["marijuana",1],
			["cocaine_processed",1],
			["heroin_processed",1],
			["bottledwhiskey",1],
			["bottledbeer",1],
			["bottledshine",1],
			["whiskey",1],
			["beer",1],
			["moonshine",1],
			["turtleRaw",1],
			["buran",1]
		]
	],

	["buran", 55000, 35000, 65000, 15, 10,
		[
			["marijuana",1],
			["cocaine_processed",1],
			["heroin_processed",1],
			["bottledwhiskey",1],
			["bottledbeer",1],
			["bottledshine",1],
			["whiskey",1],
			["beer",1],
			["moonshine",1],
			["turtleRaw",1],
			["uranpre",1]
		]
	],

	["s_pro", 1800, 650, 2600, 2, 1,
	    [
			["oil_processed",1],
			["diamond_cut",1],
			["jewelery",1],
			["copper_refined",1],
			["iron_refined",1],
			["salt_refined",1],
			["glass",1],
			["cement",1],
			["goldbar",1],
			["bottles",1]
		]
	]

];
publicVariable "life_market_resources";

////////////GENERATED CONFIG
//life_market_changes = []; //[SHORTNAME,SELL,BUY]
life_market_shortnames = []; //shortnames if in market
//life_market_clampprices = []; //[SHORTNAME,MIN,MAX]

{
	life_market_shortnames set [count life_market_shortnames, _x select 0];
	//life_market_clampprices set [count life_market_clampprices, [_x select 0, _x select 2, _x select 3] ];
	//life_market_changes set [count life_market_changes, [_x select 0, _x select 4, _x select 5] ];
}
foreach life_market_resources;

publicVariable "life_market_shortnames";
//publicVariable "life_market_clampprices";

////////////SYNC PRICES WITH SERVER IF EMPTY
//if(isNil("life_market_prices")) then
//{
	life_market_prices = []; //[SHORTNAME,CURRENTPRICE,DIRECTIONGLOBAL,DIRECTIONLOCAL]
	{

		life_market_prices set [count life_market_prices, [_x select 0, _x select 1, 0, 0] ];
	}
	foreach life_market_resources;

	publicVariable "life_market_prices";

	systemChat "Market Prices Generated!";
//};