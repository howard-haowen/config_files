" vim  : placed in $HOME/.vimrc

set nocompatible              " be iMproved, required
filetype off                  " required

" ===Set Vundle as the plugin manager===

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"=====================================================
"" All plugins should be included below!
"=====================================================

Plugin 'mhartington/oceanic-next'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'zxqfl/tabnine-vim'
Plugin 'frazrepo/vim-rainbow'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'davidhalter/jedi-vim'
Plugin 'python-mode/python-mode'

"=====================================================
"" All plugins should be included above!
"=====================================================

call vundle#end()            " required
filetype plugin indent on    " required

"=====================================================
"" General settings
"=====================================================
set hidden
set lines=30
set columns=120
set wrap
set linebreak
set pythonthreedll=python36.dll
set guifont=Lucida_Console:h18
colorscheme OceanicNext                     " set vim colorscheme
let g:airline_theme='transparent'           " set airline theme
syntax enable                               " enable syntax highlighting

" Relative numbers
augroup toggle_relative_number
autocmd InsertEnter * :setlocal norelativenumber
autocmd InsertLeave * :setlocal relativenumber

" Leader key
let mapleader = "\<Space>"
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P
nnoremap <Leader>f :NERDTreeToggle<CR>
nnoremap <Leader>w <C-w>

" Buffers
set hidden

" Handy remapping
" ESC key, only when on the Insert mode
inoremap jk <ESC>
" Setting horizontal and vertical splits
set splitbelow
set splitright

" Split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

" Setting up indendation
au BufNewFile, BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

au BufNewFile, BufRead *.js, *.html, *.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2

highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Setting up pyflakes

let python_highlight_all=1
syntax on

" NERD tree settings
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

" Setting up line numbering
set nu

" Rainbow bracket settings
let g:rainbow_active = 1

" Encodings
set encoding=utf-8
set fileencodings=utf-8,chinese,latin-1
if has("win32")
set fileencoding=chinese
else
set fileencoding=utf-8
endif
"解決選單亂碼
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
"解決consle輸出亂碼
language messages en_US.utf-8

" Remap the ESC key with <j-k>, only in the Insert mode
imap jk <Esc>
