# so_long

A small 2D game built with the MinilibX graphics library. This project is part of the 42 school curriculum.

## Description

This project involves creating a simple 2D game where the player must collect items and reach the exit. It teaches about window management, event handling, colors, textures, and basic game development concepts using the MinilibX library.

## Features

The game implements:
- Map parsing from a .ber file
- Player movement with WASD/Arrow keys
- Collectible items
- Exit condition
- Wall collision
- Movement counter
- Sprite rendering
- Error handling
- Path validation
- Clean exit management

## Getting Started

### Prerequisites
- GCC compiler
- Make
- X11 development libraries
- MinilibX dependencies

### Installation
```bash
git clone https://github.com/yourusername/so_long.git
cd so_long
make
```

### Usage
```bash
./so_long maps/map.ber
```

### Map Format
The map must be composed of only these 5 characters:
- `0` for an empty space
- `1` for a wall
- `C` for a collectible
- `E` for the exit
- `P` for the player's starting position

Example map:
```
1111111111111
10010000000C1
1000011111001
1P0011E000001
1111111111111
```

## Controls
- `W` or `↑` : Move up
- `A` or `←` : Move left
- `S` or `↓` : Move down
- `D` or `→` : Move right
- `ESC` or `Q` : Quit game

## Implementation Details

The game features:
1. Map validation and error checking
2. Sprite loading and rendering
3. Player movement and collision detection
4. Item collection tracking
5. Win condition monitoring
6. Path finding validation
7. Memory management

## Error Handling
The program handles various error cases:
- Invalid map format
- Missing map file
- Invalid file extension
- Incorrect map characters
- Invalid map configuration
- Unreachable exit or collectibles

## Building
The project includes a Makefile with the following rules:
- `make` - Compiles the program
- `make clean` - Removes object files
- `make fclean` - Removes object files and the executable
- `make re` - Rebuilds the program

## Return Value
- Returns 0 on successful completion
- Returns appropriate error codes on failure
- Displays error messages for invalid inputs or configurations

## Author
- Rania (radaoudi)

## License
This project is part of the 42 school curriculum. Please refer to 42's policies regarding code usage and distribution.

## Acknowledgments
- 42 school for providing the project requirements and framework
- MinilibX library documentation and resources
