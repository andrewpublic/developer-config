# Developer Setup

## Updated February 2025

Primarily for Neovim config

### Prerequisites

Windows - WSL or Git Bash 
MacOS/Linux - iTerm2

- Check if directory exists  
```~/.config```  
- If not, create it  
```mkdir ~/.config```  
- Then copy this repo's nvim folder into ~/.config  
```cp -r nvim ~/.config```  
- Run neovim on the command line  
```nvim```

### Package Manager

- To install the referenced plugins, run inside neovim  
```:PackerSync```  
(You may have to go inside the nvim/lua/andrewpublic/packer.lua file)

If you get language server errors, do:

- Open Mason lsp-installer  
```:Mason```
- Install relevant language servers referenced in :Lua  
```/bash -> i```

## Useful Commands in our Neovim Config

- New Vertical Split (general)  
```:vsp```  
- Switch between splits (general)  
```Ctrl+w```  

### Usage Pattern: Go to directory then run "nvim ."
- Search File Name  
```<space>fs```
- Code Search (text lookup aka grep)  
```<space>gr{text_input}```
- Navigate UndoTree (similar to Git history except local)  
```<space>fu```
- Solution Explorer (at current directory level)  
```<space>fj```
- Open Git Explorer (custom)  
```<space>git OR Ctrl+P```
- Add bookmark  
```<space>a```
- Navigate bookmarks  
```<space>e```
- Quick shortcut to bookmarks (1-4)  
```Ctrl+j/k/l/;```
- Go to next/prev bookmark  
```Ctrl+Shift+K/J```

