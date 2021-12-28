pokeget
===

Pokeget is a bash script you can use to display cool sprites of pokemon in your terminal.

## Installation
You can install pokeget by doing these commands:
```
wget https://raw.githubusercontent.com/talwat/pokeget/main/pokeget
chmod +x pokeget
mv pokeget ~/.local/bin
```
Which will preform a local installaion, or to install for all users do:
```
wget https://raw.githubusercontent.com/talwat/pokeget/main/pokeget
chmod +x pokeget
sudo mv pokeget /usr/bin
```

## Sources
Pokeget gets it's small sprites from [here](https://gitlab.com/phoneybadger/pokemon-colorscripts/), and it's large sprites from [here](https://github.com/shinya/pokemon-terminal-art).

All sprites are from Generation 3 *(Pokemon Ruby, Saphire and Emerald)* made by Game Freak.

## Usage
The help command is `pokeget help`, if you need to get a quick reminder.

You can do `pokeget <pokemon national dex id>` to display the sprite.

If you prefer a smaller sprite, you can use the `small` flag. (eg. `pokeget -small <pokemon name>`)

*Note: If you use the small flag, due to the sources where the sprites come from, you will need to put the pokemon name instead of id.*

## Dependencies
To run pokeget you will need bash.

To install pokeget, you might need wget if you dont clone the repository and instead use the install instructions.

Both dependencies are usually installed by default on most linux distros, as this script is designed to run on linux.
