" Andrew's NeoVim Beginner Settings "

" Testing "
set nocompatible " disable compatibility with old vi
set showmatch " show matching?
set ignorecase " not case sensitive
set hlsearch " highlighted search
set incsearch " / for next search

" Tabs "
set tabstop=2
set softtabstop=2
set expandtab
set shiftwidth=4
set autoindent
set wildmode=longest,list

" Buffer "
set splitright

" Style "
set number
set cc=80
syntax on
set cursorline

" Copy Paste "
set clipboard=unnamedplus

" Scrolling "
set ttyfast


" Background Files - off by user choice
" set noswapfile
" set backupdir=~/.cache/vim


" Custom Commands "
" Open config init.vim file "
:command Init :e ~/.config/nvim/init.vim
:command Lua :e ~/.config/nvim/lua/init.lua
:command Reload :source ~/.config/nvim/init.vim
:command Open :NvimTreeOpen
:command Close :NvimTreeClose
:command Focus :NvimTreeFocus
:command Home :cd ~/playground/projects


" Vim-Plug"
" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')
Plug 'navarasu/onedark.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-tree/nvim-tree.lua'
Plug 'nvim-tree/nvim-web-devicons'
call plug#end()


" Activate theme"
set termguicolors
let g:onedark_config = {
  \ 'style': 'deep',
\}
colorscheme onedark

lua require('init')
