set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

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

"Colorscheme 
Plugin 'altercation/vim-colors-solarized'

"Tmux Controls
Plugin 'christoomey/vim-tmux-navigator'

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

"Syntax highlighting
Plugin 'vim-syntastic/syntastic'

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

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
    \ 'colorscheme': 'solarized',
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

" remap arrow keys to change buffer
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

"Ctrl-P Settings 
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0

"Tab spacing
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

"Line numbers
set number

"Ruler
set ruler

"Enable mouse control in terminals
set mouse=a

"Show the last used command
set showcmd
"set cursorline

"Search
set ignorecase
set incsearch
set hlsearch
set wildmenu
set wildmode=longest:full,full
set showmatch

"Syntax highlighting
syntax enable

"Indentation
set autoindent
"filetype plugin indent on

"Colorscheme settings
"set termguicolors
set background=dark
colorscheme solarized
