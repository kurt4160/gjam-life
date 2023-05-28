/// @description Start and stops the generation

// Inherit the parent event
event_inherited();

activate_button = function()
{
	if (instance_exists(global.add_pattern_object)) 
		instance_destroy(global.add_pattern_object);
	global.pause = !global.pause;
}

