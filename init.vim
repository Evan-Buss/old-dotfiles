set nocompatible
filetype indent plugin on
syntax on

call plug#begin('~/.config/nvim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'wakatime/vim-wakatime'
Plug 'ervandew/supertab'
Plug 'jiangmiao/auto-pairs'
Plug 'dominikduda/vim_current_word'
Plug 'ayu-theme/ayu-vim'
call plug#end()

set colorcolumn=81

set incsearch
set hlsearch    "hightlight searches
set ignorecase  "case insensitive
set smartcase   "except when all caps

set backspace=indent,eol,start "backspace over autoindents,linebreaks,etc.

set number          "enable line numbers
set relativenumber  "set numbers to be relative to cursor position

set shiftwidth=4
set softtabstop=4
set expandtab

set hidden      "open multiple buffers
set confirm     "ask about failed commands

set mouse=a     "enable mouse use for all modes
nnoremap <Left> :bprev<CR>  
nnoremap <Right> :bnext<CR> 

"this shit not working for some reason
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'


set termguicolors
let ayucolor = "mirage"
colorscheme ayu
