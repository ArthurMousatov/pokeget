# pokeget

[![GitHub stars](https://img.shields.io/github/stars/talwat/pokeget)](https://github.com/talwat/pokeget/stargazers)
[![GitHub license](https://img.shields.io/github/license/talwat/pokeget)](https://github.com/talwat/pokeget)
![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/talwat/pokeget)

Pokeget is a bash script you can use to display cool sprites of pokemon in your terminal.

## Info

Pokeget has support for all pokemon up to gen 8 *including gen 8* and is written in bash.

Pokeget has only needs basic dependencies usually preinstalled in GNU/Linux systems.

## Examples

![pokeget](examples/example-small1.png)
![pokeget](examples/example-small2.png)

## Installation

*Note: the install commands should be exactly the same for updating.*
You can install pokeget by doing these commands:

```bash
wget https://raw.githubusercontent.com/talwat/pokeget/main/pokeget
chmod +x pokeget
mv pokeget ~/.local/bin
```

Which will preform a local installation, or to install for all users do:

```bash
wget https://raw.githubusercontent.com/talwat/pokeget/main/pokeget
chmod +x pokeget
sudo mv pokeget /usr/bin
```

## Sources

All sprites are from [Pokemon Reborn](https://www.rebornevo.com/) *(A pokemon fan game)*.

However, all the original sprites and character designs are made by Game Freak.

## Usage

The help command is `pokeget help`, if you need to get a quick reminder.

You can do `pokeget <pokemon national dex id>` to display the sprite.

If you want a list of flags, you can look at [USAGE.md](USAGE.md).

## Dependencies

To run pokeget you will need bash and unzip.

To install pokeget, you might need wget if you don't clone the repository and instead use the install instructions.

All dependencies are usually installed by default on most Linux distros, as this script is designed to run on GNU/Linux.

## Known issues

During testing, some of the unicode symbols have displayed incorrectly, this is still being worked on.
