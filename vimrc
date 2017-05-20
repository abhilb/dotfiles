
"General {{{
set nocompatible "disable vi compatibility
set autowrite    "writes on make/shell commands
set clipboard+=unnamed "yanks go on clipboard
"}}}

"Searching {{{
set hlsearch
set incsearch

nnoremap noh :nohlsearch<CR>
"}}}

"Formatting {{{
set wildmenu

" nicked from gmarik's vimrc
set wildmode=longest,list "At command line complete longest common string, then list alternatives.


set showcmd

set expandtab
set shiftwidth=4
set softtabstop=4
set number
set cursorline

syntax on
filetype off
"}}}

"Vundle {{{
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Plugin 'gmarik/vundle'
Plugin 'ervandew/supertab'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'L9'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'chrisbra/Colorizer'
"Plugin 'abhilb/puttum-kadalayum'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-eunuch'
Plugin 'tmhedberg/SimpylFold'

Plugin 'tpope/vim-rails'
Plugin 'abhilb/parunthu'
Plugin 'https://github.com/kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'sjl/gundo.vim'
Plugin 'git://github.com/altercation/vim-colors-solarized'
Plugin 'mattn/emmet-vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'easymotion/vim-easymotion'
Plugin 'tpope/vim-fireplace'

call vundle#end()
"}}}

filetype plugin indent on

"Folding {{{
set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=marker
set foldlevel=0
set modelines=1
nnoremap <space> za
"}}}

"CtrlP settings {{{
"search top to bottom
let g:ctrlp_match_window='bottom,order=ttb'
"open file in a new buffer
let g:ctrlp_switch_buffer=0
"change default mapping
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
"}}}

"Colorscheme {{{
"syntax enable
set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans=1
let g:solarized_contrast="high"
colorscheme solarized
"}}}
filetype plugin indent on

let g:airline#extensions#tabline#enabled = 1

map <C-n> :NERDTreeToggle<CR>
set laststatus=2

"Python settings {{{
au BufNewFile,BufRead *.py
    \set tabstop=4       |
    \set softtabstop=4   |
    \set shiftwidth=4    |
    \set expandtab       |
    \set autoindent      |
    \set fileformat=unix |
"}}}

au BufNewFile,BufRead *.tpl imap <C-1> <Esc><C-y>,i

command! -nargs=* Wrap set wrap linebreak nolist


let mapleader=","

"Misc {{{
highlight todomsg ctermbg=red guibg=red ctermfg=yellow guifg=yellow term=bold
match todomsg /@todo/
"}}}

source $VIM/abbreviations.vim
source $VIM/mappings.vim

