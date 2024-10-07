# Developer Setup

Primarily for Neovim config

## Prerequisites

Windows - WSL  
MacOS/Linux - Nvim

- Check if directory exists  
```~/.config```  
- If not, create it  
```mkdir ~/.config```  
- Then copy this repo's nvim folder into ~/.config  
```cp -r nvim ~/.config```  
- Run neovim on the command line  
```nvim```

If you get errors, press q to ignore and enter nvim

- To install the referenced plugins, run inside neovim  
```:PlugInstall```  
Note: To use :PlugInstall you will need vim-plug
- Has to be downloaded manually
  - Use wget for vim-plug then move to Autoload folder

If you get language server errors, do:

- Open Mason lsp-installer
```:Mason```
- Install relevant language servers referenced in :Lua
```/bash -> i```

## Useful Commands in Neovim

- Open Directory  
```:Open```  
- Open Init config file  
```:Init```  
- Open Lua config file  
```:Lua```  
- New Vertical Split  
```:vsp```  
- Switch between splits (including directory)  
```Ctrl+w```  

