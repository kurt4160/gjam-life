/// @description Insert pulsar pattern

// Inherit the parent event
event_inherited();

activate_button = function()
{
	if (instance_exists(global.add_pattern_object)) 
		instance_destroy(global.add_pattern_object);
	// create object with pattern to follow mouse cursor
	global.add_pattern_object = instance_create_layer(mouse_x, mouse_y, "Top", obj_add_pattern,
	{
		pattern: getPulsar()
	});
}

