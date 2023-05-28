gjam-life  
---
gamedev.tv 2023 game jam  
---
This is an implementation of [Conway's Game of Life](https://en.wikipedia.org/wiki/Conway%27s_Game_of_Life).  
I made this for the [gamedev.tv 2023 game jam](https://itch.io/jam/gamedevtv-jam-2023) with [GameMaker](https://gamemaker.io/en).  

Overview from [Wikipedia](https://en.wikipedia.org/wiki/Conway%27s_Game_of_Life)
---
The Game of Life, also known simply as Life, is a cellular automaton devised by the British mathematician John Horton Conway in 1970.It is a zero-player game,meaning that its evolution is determined by its initial state, requiring no further input. One interacts with the Game of Life by creating an initial configuration and observing how it evolves. It is Turing complete and can simulate a universal constructor or any other Turing machine.  

**Rules:**  
1. Any live cell with fewer than two live neighbours dies, as if by underpopulation.
2. Any live cell with two or three live neighbours lives on to the next generation.
3. Any live cell with more than three live neighbours dies, as if by overpopulation.
4. Any dead cell with exactly three live neighbours becomes a live cell, as if by reproduction.  

---
## Documentation  

The playing area is a grid of size 100x100. On startup there are no living cells on the grid.  
You can insert some predefined patters:  
1. Glider: The Glider is a simple moving pattern. It moves right-down the play area. 
2. HWSS: The Heavyweight spaceship is a more complex moving pattern. It moves horizontal on the play area.
3. Pulsar: The Pulsar is a static pattern with a period of 3
4. Glider Gun: The Gosper glider gun produces Glider patterns  

Just push one of the pattern buttons and place the pattern on the play area. To exit insert mode press the right mouse button or select another pattern or start the game.  
Push "Start" to start the game. About every 2 seconds a new generation of cells is drawn.  
The color of a cell shows their age. The gradient is from red (very young) to green (old).  
You can stop the creation of new generations by pushing "Stop". 
To clear the play area push the "Clear" button.
If you want to start with a random population of cells push the "Random" button.  

At the top of the menu you can see the number of generations and the number of living cells.




