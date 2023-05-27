/// @description Start and stops the generation

// Inherit the parent event
event_inherited();

activate_button = function()
{
	global.pause = !global.pause;
}

