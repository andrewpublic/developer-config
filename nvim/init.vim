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
:command ReloadLua :source ~/.config/nvim/lua/init.lua
:command Open :NvimTreeOpen
:command Close :NvimTreeClose
:command Focus :NvimTreeFocus
:command Home :cd ~/playground/projects
:command PS :cd ~/playground/backend/permission-service
:command HA :cd ~/playground/backend/hub-adaptor
:command Backend :cd ~/playground/backend
:command Todo :e ~/playground/todo/today.txt

" Vim-Plug "
" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')
" Plug 'navarasu/onedark.nvim'
Plug 'Mofiqul/dracula.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-tree/nvim-tree.lua'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'jose-elias-alvarez/null-ls.nvim'
Plug 'MunifTanjim/prettier.nvim'
Plug 'jremmen/vim-ripgrep'
call plug#end()


" Activate theme "
set termguicolors
" let g:onedark_config = {
"   \ 'style': 'deep',
" \}
" colorscheme onedark
colorscheme dracula

lua require('init')
