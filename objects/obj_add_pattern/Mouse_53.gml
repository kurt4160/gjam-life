/// @description Inserts pattern on left click in board
var _x = x / global.cell_size;
var _y =  y / global.cell_size;
if (_x <= global.sizeX && _y <= global.sizeY)
	insertObject(_x,_y, pattern);	
