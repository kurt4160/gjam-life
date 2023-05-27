// function for calculating the states of the cells

// Calculate the number of neighbours of one cell
function count_neighbours(x, y)
{
	var count = 0;
	if (x > 0)
	{
		if (y > 0) 	if (global.current_state[x - 1, y - 1]) count++;
		if (global.current_state[x - 1, y]) count++;
		if (y < global.sizeY - 1) if global.current_state[x - 1, y + 1] count++;
	}
	if (x < global.sizeX - 1)
	{
		if (y > 0) 	if (global.current_state[x + 1, y - 1]) count++;
		if (global.current_state[x + 1, y]) count++;
		if (y < global.sizeY - 1) if global.current_state[x + 1, y + 1] count++;
	}
	if (y > 0) 	if (global.current_state[x, y - 1]) count++;
	if (y < global.sizeY - 1) if global.current_state[x, y + 1] count++;
	return count;
}

// Calculate the next state of all cells
// 1. Any live cell with fewer than two live neighbours dies, as if by underpopulation.
// 2. Any live cell with two or three live neighbours lives on to the next generation.
// 3. Any live cell with more than three live neighbours dies, as if by overpopulation.
// 4. Any dead cell with exactly three live neighbours becomes a live cell, as if by reproduction.
function calc_next_state(x, y)
{
	var count = count_neighbours(x, y);
	if (!global.current_state[x, y] && count == 3) global.next_state[x, y] = true;
	if (global.current_state[x, y] && count < 2) global.next_state[x, y] = false;
	if (global.current_state[x, y] && count > 3) global.next_state[x, y] = false;
	if (global.current_state[x, y] && (count == 2 || count == 3)) global.next_state[x, y] = true;
}

// Copies the array with the next state into the array with the current state
function copyState()
{
	for(var a = 0; a < array_length(global.next_state); a++)
	{
        global.current_state[a] = []
        array_copy(global.current_state[a], 0, global.next_state[a], 0, array_length(global.next_state[a]))
    }
}