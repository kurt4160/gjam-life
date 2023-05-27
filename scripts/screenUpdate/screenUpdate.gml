// function to draw the cells on the screen

// Draws one cell. When visible with the gradient color, when not visible in black (background)
// Each cell is a rounded rectangle with the size  global.cell_size
function setVisibility(x, y, visibility)
{
	// scale coordinates
	var _x = x * global.cell_size;
	var _y = y * global.cell_size;
	// for speed lifecount in local variable
	var _lifeCount = global.lifeCount[x, y];
	// if not paused calculate life count 
	if (!global.pause)
	{
		// if still alive increment life count, otherwise set it to 0
		_lifeCount = visibility ? _lifeCount + 1 : 0;
		global.lifeCount[x, y] = _lifeCount;
	}
	// get gradient color and draw rectangle
	var _color = getColor(_lifeCount);
	draw_roundrect_colour(_x, _y, _x + global.cell_size, _y + global.cell_size, 
		visibility ? _color : c_black,
		visibility ? _color : c_black, false);
}

// Draws all cells
function update_grid()
{
	// Clear playing area
	draw_rectangle_colour(0, 0, global.sizeX * global.cell_size - 1, global.sizeY * global.cell_size - 1, c_black, c_black, c_black, c_black, false);
	// counter for cells
	var _cell_count = 0;
	// all cells in the grid
	for (var _y = 0; _y < global.sizeY; _y++)
	{
		for (var _x = 0; _x < global.sizeX; _x++)
		{
			// for speed visibility in local variable
			var _visible = global.next_state[_x, _y];
			if (_visible) _cell_count++;
			setVisibility(_x, _y, _visible);
		}
	}	
	global.cell_count = _cell_count;
}
