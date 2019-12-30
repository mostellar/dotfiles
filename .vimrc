set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tomasr/molokai'
Plugin 'morhetz/gruvbox'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Colors and scheming
syntax on
set background=dark
colorscheme molokai
let g:airline_theme='molokai'
set number
" Uses highlighting to change SpecialKey (used for incomplete autocomplete)
" color
:highlight! def link SpecialKey Normal

" Make backspace work like in other apps
set backspace=indent,eol,start

" Set cursor highlighting
set cursorline

" Whitespace characters (":set list" to show)
set listchars=eol:¬,tab:→\ ,trail:·,extends:›,precedes:‹,nbsp:␣
set showbreak=↪\ 

" Wrap words
set wrap linebreak nolist

" Change cursor based on normal/insert mode
" Insert Mode
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_SR = "\<Esc>]50;CursorShape=2\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

"System clipboard
set clipboard=unnamed

"Highlights all occurrences of a word when you search
"To disable until next search, use :noh
set hlsearch

set ignorecase
"Makes lowercase searches case-insensitive by default
"Add  \C to search to make case sensitive

set smartcase
"Requires ignorecase
"Automatically makes searches and subs with uppercase case sensitive
"Add \C (case sensitive) or \c (case insensitive) to override

"Tabs to spaces
set tabstop=4
set shiftwidth=4
set expandtab
set visualbell t_vb=

"Airline customization
let g:airline#extensions#whitespace#enabled = 0

" Commands and scripts
command! -nargs=1 Silent execute ':silent !'.<q-args> | execute ':redraw!'
command! MD exe ':silent !open -a Typora %' | exe 'sleep 500m' | exe ':silent !open -a iTerm' | exe ':redraw!'
