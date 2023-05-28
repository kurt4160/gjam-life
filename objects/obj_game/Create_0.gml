/// @description Defines and initialize variables

// global variables
global.lifeCount = [];							// counts the life time of each cell to color it different
global.current_state = [];						// 2D array containing the current state of the cells
global.next_state = [];							// 2D array containing the next state of the cells
global.cell_size = 8;							// size in pixel of one cell
global.side_menu_width = 200;					// size of menu on the right
global.sizeX = (room_width - global.side_menu_width) / global.cell_size; // width of the play area in pixel
global.sizeY = room_height / global.cell_size;							 // height of the play area in pixel
global.generations = 0;							// number of calculated generations
global.cell_count = 0;							// number of active cells
global.pause = true;							// pause the generation
// color gradient to color the active cells
global.gradient = [ #ff0000, #fc4000, #f65f00, #ee7800, #e38e00, #d5a100, #c6b400, #b3c400, #9ed400, #84e300, #60f12a, #00ff59 ];
global.gradient_size = array_length(global.gradient); // size of the gradient
global.add_pattern_object = 0;					// instance of the add pattern object

// Initialize array
for (var _y = 0; _y < global.sizeY; _y++)
{
	for (var _x = 0; _x < global.sizeX; _x++)
	{
		global.lifeCount[_x, _y] = 0;
		global.current_state[_x, _y] = false;
		global.next_state[_x, _y] = false;
	}
}
// Create play area
instance_create_layer(0, 0, "Instances", obj_cell);


