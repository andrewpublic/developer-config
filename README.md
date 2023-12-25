# Developer Setup

Primarily for Neovim config

## Prerequisites:

```Windows - WSL```
```MacOS/Linux - Nvim```

Check if directory exists:
```~/.config```
If not, create it:
```mkdir ~/.config```
Then copy this repo's nvim folder into ~/.config:
```cp -r nvim ~/.config```
Run neovim on the command line:
```nvim```

If you get errors, press q to ignore and enter nvim

Then to install the referenced plugins, run inside neovim:
```:PlugInstall```
Note: To use :PlugInstall you will need vim-plug
- Has to be downloaded manually
  - Use wget for vim-plug then move to Autoload folder
