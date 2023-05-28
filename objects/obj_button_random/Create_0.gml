/// @description Insert random pattern

// Inherit the parent event
event_inherited();

activate_button = function()
{
	if (instance_exists(global.add_pattern_object)) 
		instance_destroy(global.add_pattern_object);
	global.pause = true;
	global.generations = 0;
	// calculate new state for all cells
	for (var _y = 0; _y < global.sizeY; _y++)
	{
		for (var _x = 0; _x < global.sizeX; _x++)
		{
			// cell exists with 40%
			global.next_state[_x, _y] = random(100) > 60;
		}
	}
	global.pause = false;
}

