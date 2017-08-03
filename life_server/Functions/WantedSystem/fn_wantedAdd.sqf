/*
    File: fn_wantedAdd.sqf
    Author: Bryan "Tonic" Boardwine"
    Database Persistence By: ColinM
    Assistance by: Paronity
    Stress Tests by: Midgetgrimm

    Description:
    Adds or appends a unit to the wanted list.
*/
private["_uid","_type","_index","_data","_crimes","_val","_customBounty","_name","_pastCrimes","_query","_queryResult"];
_uid = [_this,0,"",[""]] call BIS_fnc_param;
_name = [_this,1,"",[""]] call BIS_fnc_param;
_type = [_this,2,"",[""]] call BIS_fnc_param;
_customBounty = [_this,3,-1,[0]] call BIS_fnc_param;
if (_uid isEqualTo "" || _type isEqualTo "" || _name isEqualTo "") exitWith {}; //Bad data passed.

//What is the crime?
switch (_type) do
{
    case "187V": {_type = ["187V",150000]};
    case "187": {_type = ["187",300000]};
    case "901": {_type = ["901",50000]};
    case "215": {_type = ["215",55000]};
    case "213": {_type = ["213",70000]};
    case "211": {_type = ["211",100000]};
    case "207": {_type = ["207",260000]};
    case "207A": {_type = ["207A",150000]};
    case "390": {_type = ["390",100000]};
    case "487": {_type = ["487",100000]};
    case "488": {_type = ["488",75000]};
    case "480": {_type = ["480",20000]};
    case "481": {_type = ["481",130000]};
    case "482": {_type = ["482",50000]};
    case "483": {_type = ["483",200000]};
    case "459": {_type = ["459",100000]};
    case "666": {_type = ["666",12000]};
    case "667": {_type = ["667",20000]};
    case "668": {_type = ["668",50000]};
	case "919": {_type = ["919",80000]};
	case "919A": {_type = ["919A",80000]};

    case "1": {_type = ["1",5000]};
    case "2": {_type = ["2",3000]};
    case "3": {_type = ["3",4000]};
    case "4": {_type = ["4",5000]};
    case "5": {_type = ["5",2500]};
    case "6": {_type = ["6",5000]};
    case "7": {_type = ["7",2000]};
    case "8": {_type = ["8",20000]};
    case "9": {_type = ["9",30000]};
    case "10": {_type = ["10",45000]};
    case "11": {_type = ["11",100000]};
    case "12": {_type = ["12",18500]};
    case "13": {_type = ["13",5000]};
    case "14": {_type = ["14",25000]};
    case "15": {_type = ["15",60000]};
    case "16": {_type = ["16",10000]};
    case "17": {_type = ["17",15000]};
    case "18": {_type = ["18",10000]};
    case "19": {_type = ["19",15000]};
    case "20": {_type = ["20",5000]};
    case "21": {_type = ["21",10000]};
    case "22": {_type = ["22",80000]};
    case "23": {_type = ["23",350000]};
    case "24": {_type = ["24",150000]};
    case "25": {_type = ["25",180000]};
    default {_type = [];};
};

if (count _type isEqualTo 0) exitWith {}; //Not our information being passed...
//Is there a custom bounty being sent? Set that as the pricing.
if (_customBounty != -1) then {_type set[1,_customBounty];};
//Search the wanted list to make sure they are not on it.

_query = format["SELECT wantedID FROM wanted WHERE wantedID='%1'",_uid];
_queryResult = [_query,2,true] call DB_fnc_asyncCall;
_val = [_type select 1] call DB_fnc_numberSafe;
_number = _type select 0;

if (count _queryResult != 0) then
{
    _crime = format["SELECT wantedCrimes, wantedBounty FROM wanted WHERE wantedID='%1'",_uid];
    _crimeresult = [_crime,2] call DB_fnc_asyncCall;
    _pastcrimess = [_crimeresult select 0] call DB_fnc_mresToArray;
    if (_pastcrimess isEqualType "") then {_pastcrimess = call compile format["%1", _pastcrimess];};
    _pastCrimes = _pastcrimess;
    _pastCrimes pushBack _number;
    _pastCrimes = [_pastCrimes] call DB_fnc_mresArray;
    _query = format["UPDATE wanted SET wantedCrimes = '%1', wantedBounty = wantedBounty + '%2', active = '1' WHERE wantedID='%3'",_pastCrimes,_val,_uid];
    [_query,1] call DB_fnc_asyncCall;
} else {
    _crimes = [_type select 0];
    _crimes = [_crimes] call DB_fnc_mresArray;
    _query = format["INSERT INTO wanted (wantedID, wantedName, wantedCrimes, wantedBounty, active) VALUES('%1', '%2', '%3', '%4', '1')",_uid,_name,_crimes,_val];
    [_query,1] call DB_fnc_asyncCall;
};
