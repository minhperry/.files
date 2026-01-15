# .files

This is the repo for my dotfiles.

Uses stow.

# Quick Start

1. Install `stow`
2. Clone this
3. Link things

````
```bash
cd ~/dotfiles
stow zsh kitty bspwm polybar
````
```
```

## Adding a new config

1. Create a new folder in `~/dotfiles/APPNAME/.config/APPNAME`
2. Move the official config there.
3. Link it: `cd ~/dotfiles/ && stow APPNAME`

Basically always mirror the path from the home directory.
* If the config is at `~/.config/nvim/init.lua`
* Create `~/dotfiles/nvim/.config/nvim/`
