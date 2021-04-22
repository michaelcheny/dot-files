set nocompatible
filetype off
filetype plugin on
filetype indent on

" Show whitespaces
if &encoding == 'utf-8'
  set list listchars=tab:▸\ ,eol:¬,trail:.
endif

" PLUGINS
call plug#begin('~/.config/nvim/plugged')
"Plug 'dracula/vim', { 'as': 'dracula' }
" Plug 'ayu-theme/ayu-vim'
"Plug 'sainnhe/sonokai'
Plug 'joshdick/onedark.vim'
"Plug 'folke/tokyonight.nvim'
"Plug 'morhetz/gruvbox'
"Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }
Plug 'sheerun/vim-polyglot'
"Plug 'sainnhe/everforest'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" LSP STUFF
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
call plug#end()

" Important!!
if has('termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

" BACKGROUND STUFF
"let g:tokyonight_style="storm"

colorscheme onedark


" hi! Normal ctermbg=NONE guibg=NONE

"LANGUAGE SERVER STUFF
:lua << END
  require'lspconfig'.tsserver.setup{}
  require'lspconfig'.solargraph.setup{}
END

" MAPPINGS
map <silent> <C-n> :NERDTreeFocus<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
inoremap jj <Esc>

" ================ General Config ====================

"execute pathogen#infect()
set number                      "Line numbers are good
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
"set gcr=a:blinkon0              "Disable cursor blink
set visualbell                  "No sounds
set autoread                    "Reload files changed outside vim
set relativenumber
set nowrap
"set noerrorbells
set signcolumn=yes
"set colorcolumn=+1
set cmdheight=2
set modeline
set cursorline
set mouse=a
set clipboard=unnamedplus
set splitbelow
set splitright
set ruler

" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden

"turn on syntax highlighting
syntax on

" Change leader to a comma because the backslash is too far away
" That means all \x commands turn into ,x
" The mapleader has to be set before vundle starts loading all 
" the plugins.
let mapleader=","
set timeout timeoutlen=1500

" ================ Turn Off Swap Files ==============

set noswapfile
set nobackup
set nowb

" ================ Folds ============================

set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

"
" ================ Scrolling ========================

set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

" ================ Search ===========================

set incsearch       " Find the next match as we type the search
set hlsearch        " Highlight searches by default
set ignorecase      " Ignore case when searching...
set smartcase       " ...unless we type a capital
set nohlsearch

" ================ Indentation ======================

set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab


" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·

set linebreak    "Wrap lines at convenient points


