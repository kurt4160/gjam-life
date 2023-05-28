/// @description On this object the cells are drawn
/// at every 60th step (2 seconds) a new generation is calculated
// count steps
// only calculate new generation if not paused
if (!global.pause)
{
	// calculate only every 60 steps
	if stepCount <= 0
	{
		// calculate next generation for all cells in the grid
		for (var _y = 0; _y < global.sizeY; _y++)
		{
			for (var _x = 0; _x < global.sizeX; _x++)
			{
				calc_next_state(_x, _y);
			}
		}	
		// new state becomes old state
		copyState();
		// wait 60 steps for next calculation
		stepCount = GAME_SPEED;
		// count generations
		global.generations++;
	}
	else
	{
		stepCount--;
	}
}