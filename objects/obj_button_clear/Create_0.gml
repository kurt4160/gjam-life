/// @description Clears the play area
event_inherited();

activate_button = function()
{
	global.pause = true;
	for (var _y = 0; _y < global.sizeY; _y++)
	{
		for (var _x = 0; _x < global.sizeY; _x++)
		{
			global.next_state[_x, _y] = false;
			global.current_state[_x, _y] = false;
		}
	}
}