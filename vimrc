set nocompatible

filetype on
filetype plugin on
filetype indent on

syntax on

set number
set linebreak
set showbreak=+++
set textwidth=100
set showmatch
set visualbell

set hlsearch
set smartcase
set ignorecase
set incsearch
set wrapscan "begin search from top of the file when nothing is found

set autoindent
set shiftwidth=4
set smartindent
set smarttab
set softtabstop=4

set ruler

set undolevels=1000
set backspace=indent,eol,start
set history=1000

set wildmenu
set wildmode=list:longest

" code folding
set foldmethod=indent
set foldlevel=99

set nobackup
set noswapfile

set scrolloff=3 "keep three lines between the cursor and the edge of the screen

call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'majutsushi/tagbar'
Plug 'joshdick/onedark.vim'
Plug 'airblade/vim-gitgutter'
Plug 'kien/ctrlp.vim'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-commentary'
Plug 'rosenfeld/conque-term'
Plug 'Valloric/YouCompleteMe'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'rhysd/vim-clang-format'
Plug 'tpope/vim-fugitive'
Plug 'derekwyatt/vim-fswitch'
Plug 'vhdirk/vim-cmake'
Plug 'jlanzarotta/bufexplorer'
Plug 'tpope/vim-unimpaired'
Plug 'mattn/emmet-vim'
Plug 'easymotion/vim-easymotion'

call plug#end()

inoremap jj <esc>

let mapleader = ','

nnoremap <leader>n :NERDTreeFocus<cr>
nnoremap <C-n> :NERDTree<cr>
nnoremap <C-t> :NERDTreeToggle<cr>
nnoremap <C-f> :NERDTreeFind<cr>
nnoremap <space> za

set expandtab
set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4

colorscheme onedark

" Rainbo braces
let g:rainbow_active=1

" Tagbar settings
let g:tagbar_autofocus=0
let g:tagbar_width=42
nmap <F8> :TagbarToggle<CR>


" Conque settings
nmap <leader>python :ConqueTermSplit python<cr>
nmap <leader>bash :ConqueTermSplit bash<cr>

" Clang format settings
let g:clang_format#auto_format=1


" you complete me settings
nnoremap <F5>        :YcmForceCompileAndDiagnostics<CR>
nnoremap <leader>gic :YcmCompleter GoToInclude<CR>
nnoremap <leader>gdc :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gdf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gip :YcmCompleter GoToImprecise<CR>
nnoremap <leader>f   :YcmCompleter FixIt<CR>

nnoremap <leader>s :FSHere<CR>

nnoremap <A-Left> <C-w>h<CR>
nnoremap <A-Right> <C-w>l<CR>

let g:rainbow_guifgs = ['DarkOrange3', 'DarkOrchid3', 'FireBrick']
let g:rainbow_ctermfgs = ['yellow', 'red', 'magenta']

highlight todomsg ctermbg=red guibg=red ctermfg=yellow guifg=yellow term=bold
match todomsg /@todo/

source $VIM/abbreviations.vim
source $VIM/mappings.vim
