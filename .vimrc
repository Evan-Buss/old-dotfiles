set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
"""""""""""""
" PLUGINS
"""""""""""""
Plugin 'VundleVim/Vundle.vim'

"Bottom bar details
Plugin 'itchyny/lightline.vim'
Plugin 'taohex/lightline-buffer'
set laststatus=2
set showtabline=2
set hidden
"Tmux Controls
Plugin 'christoomey/vim-tmux-navigator'

"Colorthemes
Plugin 'dracula/vim'
Plugin 'ayu-theme/ayu-vim'
Plugin 'arcticicestudio/nord-vim'
Plugin 'CreaturePhil/vim-handmade-hero'


"Comments and file tree
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'

"Utilities
Plugin 'wakatime/vim-wakatime'
Plugin 'vim-pandoc/vim-pandoc'
Plugin 'vim-pandoc/vim-pandoc-syntax'

"File searcher 
Plugin 'ctrlpvim/ctrlp.vim'

"Tab autocomplete
Plugin 'ervandew/supertab'

"Bracket completion
Plugin 'jiangmiao/auto-pairs'

"Word highlighting
Plugin 'dominikduda/vim_current_word'
let g:vim_current_word#highlight_current_word = 0

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Put your non-Plugin stuff after this line

"Keymaps
"Nerdtree Ctrl+n to activate
map <C-n> :NERDTreeToggle<CR>
"Clear search highlight by pressing enter
nnoremap <CR> :noh<CR><CR>



" use lightline-buffer in lightline
if !has('gui_running')
    set t_Co=256
endif

let g:lightline = {
    \ 'tabline': {
    \   'left': [ [ 'bufferinfo' ],
    \             [ 'separator' ],
    \             [ 'bufferbefore', 'buffercurrent', 'bufferafter' ], ],
    \   'right': [ [ 'close' ], ],
    \ },
    \ 'component_expand': {
    \   'buffercurrent': 'lightline#buffer#buffercurrent',
    \   'bufferbefore': 'lightline#buffer#bufferbefore',
    \   'bufferafter': 'lightline#buffer#bufferafter',
    \ },
    \ 'component_type': {
    \   'buffercurrent': 'tabsel',
    \   'bufferbefore': 'raw',
    \   'bufferafter': 'raw',
    \ },
    \ 'component_function': {
    \   'bufferinfo': 'lightline#buffer#bufferinfo',
    \ },
    \ 'component': {
    \   'separator': '',
    \ },
    \ }

" remap arrow keys
nnoremap <Left> :bprev<CR>
nnoremap <Right> :bnext<CR>

" lightline-buffer ui settings
" replace these symbols with ascii characters if your environment does not support unicode
let g:lightline_buffer_logo = ''
let g:lightline_buffer_readonly_icon = ''
let g:lightline_buffer_modified_icon = '*'
let g:lightline_buffer_git_icon = ' '
let g:lightline_buffer_ellipsis_icon = '..'
let g:lightline_buffer_expand_left_icon = '◀ '
let g:lightline_buffer_expand_right_icon = ' ▶'
let g:lightline_buffer_active_buffer_left_icon = ''
let g:lightline_buffer_active_buffer_right_icon = ''
let g:lightline_buffer_separator_icon = '  '

" lightline-buffer function settings
let g:lightline_buffer_show_bufnr = 1
let g:lightline_buffer_rotate = 0
let g:lightline_buffer_fname_mod = ':t'
let g:lightline_buffer_excludes = ['vimfiler']

let g:lightline_buffer_maxflen = 30
let g:lightline_buffer_maxfextlen = 3
let g:lightline_buffer_minflen = 16
let g:lightline_buffer_minfextlen = 3
let g:lightline_buffer_reservelen = 20

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Ctrl-P Extensions
"Set no max file limit in CtrlP
"let g:ctrlp_max_files=0
"Search only working directory
"let g:ctrlp_working_path='c'

"vim_current_word
"Tab spacing
set tabstop=8
set shiftwidth=4
set softtabstop=4
set expandtab

"Line numbers
set number

"Ruler
set ruler

"Search
set ignorecase
set incsearch
set hlsearch

"Syntax highlighting
syntax on

"Indentation
set autoindent
"filetype plugin indent on

"Colorscheme settings
" set termguicolors

"let g:nord_comment_brightness=20
"colorscheme nord 
" colorscheme handmade-hero
"colorscheme dracula

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
