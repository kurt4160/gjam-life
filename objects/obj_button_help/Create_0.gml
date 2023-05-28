/// @description Shows romm with help
event_inherited();

activate_button = function()
{
	global.pause = true;
	room_goto(rm_help);
}