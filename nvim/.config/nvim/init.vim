" --- General
syntax enable
set mouse=a
set termguicolors
set spelllang=en,ru

set number
"set relativenumber
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set smarttab
set nowrap

set incsearch " set incremental search, like modern browsers
set hlsearch " hilight gearch line
set ignorecase " case insensitive searching
set smartcase " case-sensitive if expresson contains a capital letter

"set signcolumn=yes:1
set noerrorbells " No beeps
set novisualbell
set splitright " Split vertical windows right to the current current windows
set splitbelow " Split horizontal windows below to the current windows
set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir
set undofile
set scrolloff=7
"set updatetime=1000
set encoding=UTF-8
set fileformat=unix

" --- Plugins
call plug#begin('~/.config/nvim/plugged')
" Common
Plug 'neovim/nvim-lspconfig' " Nvim's built-in LSP configuration set
Plug 'hrsh7th/cmp-nvim-lsp' " Nvim-cmp source for built-in LSP
Plug 'hrsh7th/nvim-cmp' " A complection engine plugin
Plug 'hrsh7th/cmp-buffer' " nvim-cmp source for buffer words
"Plug 'L3MON4D3/LuaSnip' " Snippet engine
"Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-lualine/lualine.nvim' " Statusline

" HTML
"Plug 'gregsexton/MatchTag', { 'for': ['html', 'javascript'] }
"Plug 'othree/html5.vim', { 'for': ['html', 'javascript'] }
"Plug 'tpope/vim-haml', { 'for': 'haml'}

" CSS/SCSS
"Plug 'norcalli/nvim-colorizer.lua'
"Plug 'cakebaker/scss-syntax.vim', { 'for': ['scss', 'sass'] }
"Plug 'hail2u/vim-css3-syntax', { 'for': ['css', 'scss'] }

" JavaScript
"Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
"Plug 'othree/yajs.vim', { 'for': 'javascript' }

" Go lang
"Plug 'fatih/vim-go', { 'for': 'go' }
"Plug 'nsf/gocode',  { 'for': 'go' }

" TypeScript
"Plug 'HerringtonDarkholme/yats.vim', { 'for': 'typescript' }

"TOML
Plug 'cespare/vim-toml', { 'for': 'toml' }

" Markdown
Plug 'reedes/vim-lexical', { 'for': [ 'markdown', 'vimwiki' ] }
Plug 'vim-pandoc/vim-pandoc-syntax', { 'for': [ 'markdown', 'vimwiki' ] }

" Color schemas
Plug 'morhetz/gruvbox'  " colorscheme gruvbox
call plug#end()

lua require('plugins.lualine')

" --- Colors
colorscheme gruvbox
set background=dark

" --- Remaps
let mapleader = "\<Space>"
let maplocalleader = "\<Space>"

" --- Autocommands
autocmd FileType python set colorcolumn=7
