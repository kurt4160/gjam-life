/// @description Insert random pattern

// Inherit the parent event
event_inherited();

activate_button = function()
{
	global.pause = true;
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

