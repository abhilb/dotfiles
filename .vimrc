filetype off

"General {{{
set nocompatible "disable vi compatibility
set autowrite    "writes on make/shell commands
set clipboard+=unnamed "yanks go on clipboard

set hlsearch
set incsearch
"}}}

"Formatting {{{

" nicked from gmarik's vimrc
set wildmode=longest,list "At command line complete longest common string, then list alternatives.

" again nicked from gmarik's vimrc
set backspace=indent, eol, start

set showcmd

set expandtab
set shiftwidth=4
set softtabstop=4
set number
set cursorline

syntax on
filetype plugin indent on
"}}}

"Vundle {{{
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Bundle 'gmarik/Vundle.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-fugitive'
Bundle 'L9'
Bundle 'vim-airline/vim-airline'
Bundle 'vim-airline/vim-airline-themes'
Bundle 'chrisbra/Colorizer'
"Bundle 'abhilb/puttum-kadalayum'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-eunuch'
Bundle 'tmhedberg/SimpylFold'
Bundle 'Valloric/YouCompleteMe'

call vundle#end()
"}}}

"Folding {{{
set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=marker
set foldlevel=0
set modelines=1
nnoremap <space> za
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

command! -nargs=* Wrap set wrap linebreak nolist


let mapleader=","

"my mappings
nnoremap <silent> <leader>ev :vsplit $MYVIMRC <CR>
nnoremap <silent> <leader>so :source $MYVIMRC <CR>

"Misc {{{
highlight todomsg ctermbg=red guibg=red ctermfg=yellow guifg=yellow term=bold
match todomsg /@todo/
"}}}

