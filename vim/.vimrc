set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

" Git plugin
" Plugin 'tpope/vim-fugitive'
"
" Installed by me
"
Plugin 'preservim/nerdtree'
"Plugin 'kien/ctrlp.vim'
"Plugin 'vimwiki/vimwiki'

"Smooth scrolling
"Plugin 'psliwka/vim-smoothie'
"Plugin 'yuttie/comfortable-motion.vim'

" Themes
Plugin 'tomasr/molokai'
Plugin 'morhetz/gruvbox'
Plugin 'sonph/onehalf', {'rtp': 'vim/'}
"For onehalfdark
set t_Co=256
"End onehalfdark
"
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

" Colors and theming
colorscheme molokai
set background=dark
"Airline theming
let g:airline_theme='molokai'
"let g:airline_solarized_bg='dark'

filetype plugin on
set autoread
let mapleader = ","
syntax on

"filetype plugin indent on
"set tabstop=4
"set softtabstop=0
"set expandtab
"set shiftwidth=4
"set smarttab

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable docstring previews via SimpylFold
let g:SimpylFold_docstring_preview=1

" Enable PEP8 indentation
"autocmd BufNewFile,BufRead *.py
"    \ set tabstop=4 |
"    \ set softtabstop=4 |
"    \ set shiftwidth=4 |
"    \ set textwidth=79 |
"    \ set expandtab |
"    \ set autoindent |
"    \ set fileformat=unix |

" Enable settings for other filetypes
"autocmd BufNewFile,BufRead *.js, *.html, *.css
"    \ set tabstop=2 |
"    \ set softtabstop=2 |
"    \ set shiftwidth=2 |

" Flag whitespace
" au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Set UTF-8
set encoding=utf-8

" Line numbering
set nu
" Relative line numbering
set rnu

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

"Leader+r to run python
"autocmd FileType python nnoremap <buffer> <F9> :exec '!python' shellescape(@%,1)<cr>"
"autocmd FileType python nnoremap <buffer> <F9> :exec '!clear; python' shellescape(@%, 1)<cr>
"My backup:
"autocmd FileType python nnoremap <buffer> <leader>r :w<cr>:exec 'w !python' shellescape(@%, 1)<cr>
autocmd FileType python nnoremap <buffer> <leader>r :w<cr>:exec 'w !python' shellescape(@%, 1)<cr>


" Comment out python line
autocmd FileType python nnoremap <buffer> <leader>c I#<esc>

" Word wrap
set linebreak

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

"My shortcuts
nnoremap <C-tab> :tabnext<CR>
nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <space> za "Enable folding with spacebar
"For some reason this causes vim to start in insert mode:
"nnoremap <esc> :noh<return><esc>
"
