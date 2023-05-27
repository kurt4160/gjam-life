/// @description Insert heavy weight spaceship pattern

// Inherit the parent event
event_inherited();

activate_button = function()
{
	// create object with pattern to follow mouse cursor
	instance_create_layer(mouse_x, mouse_y, "Top", obj_add_pattern,
	{
		pattern: getHWSS()
	});
}

