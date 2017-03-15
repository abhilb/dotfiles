filetype off

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

filetype plugin indent on

let g:airline#extensions#tabline#enabled = 1

map <C-n> :NERDTreeToggle<CR>
set laststatus=2

set expandtab
set shiftwidth=4
set softtabstop=4
set number
set cursorline


"Python settings {{1
au BufNewFile,BufRead *.py
    \set tabstop=4       |
    \set softtabstop=4   |
    \set shiftwidth=4    |
    \set expandtab       |
    \set autoindent      |
    \set fileformat=unix |

command! -nargs=* Wrap set wrap linebreak nolist

syntax on

let mapleader=","

"my mappings
nnoremap <silent> <leader>ev :vsplit $MYVIMRC <CR>
nnoremap <silent> <leader>so :source $MYVIMRC <CR>

highlight todomsg ctermbg=red guibg=red ctermfg=yellow guifg=yellow term=bold
match todomsg /@todo/


