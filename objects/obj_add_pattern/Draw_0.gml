/// @description Draws the pattern to the object
// height and with of the pattern
// pattern ist 2 dimensional array with 0 and 1
var _height = array_length(pattern);
var _width = array_length(pattern[0]);
for (var _i = 0; _i < _height; _i++)
{
	for (var _j = 0; _j < _width; _j++)
	{
		// draw dot when pattern conatins 1 at this position
		if (pattern[_i, _j] == 1)
		{
			// scale with the global scale
			var _x = x + _j * global.cell_size;
			var _y = y + _i * global.cell_size;
			var _color = c_yellow;
			draw_roundrect_colour(_x, _y, _x + global.cell_size, _y + global.cell_size, 
				_color,
				_color, false);
		}
	}
}
