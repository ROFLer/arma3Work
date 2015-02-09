//////////////////////////////////////////////
//											//
//	Script:	'\ROFLer\fn_news.sqf'			//
//											//
//	Author:	Henning 'ROFLer' Nebeling		//
//											//
//	Init:	News Control					//
//											//
//////////////////////////////////////////////

private ["_titleText1","_titleText2","_scrollText","_titleText"];
_titleText1 = _this select 0;
_titleText2 = _this select 1;
_scrollText = _this select 2;

_titleText = parseText format ["<t size='2'>%1</t><br/>%2",_titleText1,_titleText2];
_scrollText = parseText format ["<t size='1.2'>%1 ~~~ %1 ~~~ %1 ~~~ %1 ~~~ %1 ~~~ %1 ~~~ %1 ~~~ %1 ~~~ %1 ~~~ %1</t>",_scrollText];

[_titleText,_scrollText] spawn BIS_fnc_AAN;

sleep 30;

(uinamespace getvariable "BIS_AAN") closedisplay 1;
