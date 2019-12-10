set nocompatible              " be iMproved, required
filetype off                  " required
set autoread

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
"
" Installed by me
"
" SimpylFold
Plugin 'tmhedberg/SimpylFold'
" Auto-Indentation
Plugin 'vim-scripts/indentpython.vim'
" YouCompleteMe
"Bundle 'Valloric/YouCompleteMe'
" syntastic
Plugin 'scrooloose/syntastic'
" PEP checking
Plugin 'nvie/vim-flake8'
" Colorschemes/themes
"Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
"Plugin 'ajh17/spacegray.vim'
"Plugin 'kiddos/malokai.vim'
Plugin 'tomasr/molokai'
Plugin 'morhetz/gruvbox'
"NERDTree
Plugin 'scrooloose/nerdtree'
"Ctrl-P
Plugin 'kien/ctrlp.vim'
"vim-airline and themes
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'junegunn/goyo.vim'


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

" Change leader to comma
let mapleader = ","

syntax enable
set background=dark
"assumes terminal?

"Solarized Theming
"let g:solarized_termcolors=16
"let g:solarized_termtrans=1
"let g:solarized_visibility = "high"
"let g:solarized_contrast = "high"

"Gruvbox Theming

colorscheme molokai

"filetype plugin indent on
"set tabstop=4
"set softtabstop=0
"set expandtab
"set shiftwidth=4
"set smarttab

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with spacebar
nnoremap <space> za

" Enable docstring previews via SimpylFold
let g:SimpylFold_docstring_preview=1

" Enable PEP8 indentation
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

" Enable settings for other filetypes
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |

" Flag whitespace
" au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Set UTF-8
set encoding=utf-8

" Line numbering
set nu

" Make backspace work like in other apps
set backspace=indent,eol,start

"Ignore case when searching (:set noic to turn off)
set ic

" Set cursor highlighting
set cursorline

" Make code look pretty
autocmd BufRead,BufNewFile *.py let python_highlight_all=1

"System clipboard
set clipboard=unnamed
"
"Airline theming
let g:airline_theme='molokai'
"let g:airline_solarized_bg='dark'

"Leader+r to run python
"autocmd FileType python nnoremap <buffer> <F9> :exec '!python' shellescape(@%,1)<cr>"
"autocmd FileType python nnoremap <buffer> <F9> :exec '!clear; python' shellescape(@%, 1)<cr>
"My backup:
"autocmd FileType python nnoremap <buffer> <leader>r :w<cr>:exec 'w !python' shellescape(@%, 1)<cr>
autocmd FileType python nnoremap <buffer> <leader>r :w<cr>:exec 'w !python' shellescape(@%, 1)<cr>


" Comment out python line
autocmd FileType python nnoremap <buffer> <leader>c I#<esc>

" Word wrap

" Set scripts to be executable from the shell
"au BufWritePost * if getline(1) =~ "^#!" | if getline(1) =~ "/bin/" | silent !chmod +x <afile> | endif | endif

" My script for python template
autocmd FileType python nnoremap <buffer> <leader>t :! chmod +x %<cr><cr>

"Will's Stuff
set hlsearch
"Highlights all occurrences of a word when you search
"To disable until next search, use :noh

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

" Uncomment the following to have Vim jump to the last position when 
" reopening a file
if has("autocmd")
  au BufReadPost * if line("`\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

set incsearch
"Jump to search match while typing
