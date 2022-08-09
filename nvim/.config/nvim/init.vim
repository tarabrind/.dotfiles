" --- General

let mapleader = " "
set mouse=a
set termguicolors

set number
set relativenumber
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set smarttab
set nowrap

set incsearch
set hlsearch
set ignorecase
set smartcase

" set signcolumn=yes:1
set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir
set undofile
set scrolloff=7
" set updatetime=250
set encoding=UTF-8
set fileformat=unix

" --- Plugins

call plug#begin('~/.config/nvim/plugged')

Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
" Plug 'hrsh7th/cmp-buffer'
" Plug 'hrsh7th/cmp-path'
" Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
" Color schemas
Plug 'morhetz/gruvbox'  " colorscheme gruvbox

call plug#end()

" lua require('tden')

" --- Colors

colorscheme gruvbox
set background=dark

" --- Remaps


" --- Autocommands

autocmd FileType python set colorcolumn=79
