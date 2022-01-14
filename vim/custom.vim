"=====================================================
" Customized config file for both vanilla Vim and NeoVim
" Settings here will override those in "init.vim"
"=====================================================

" ===File path===
" neovim  : placed in $HOME/.config/nvim/custom.vim

"=====================================================
" Python
"=====================================================

" provide the execution path to python3
let g:python3_host_prog = '/Library/Frameworks/Python.framework/Versions/3.8/bin/python3'
" Now you can execute python codes in the command-line mode using:
" :py[thon]3 {command}

" python alias (,p runs python on script. ,t times python script)
nmap ,p :w<CR>:!python3 %<CR>
nmap ,t :w<CR>:!time python3 %<CR>

"=====================================================
" Key mappings
"=====================================================

" ESC key, only when in the Insert mode
inoremap jk <ESC>
" vim-isort 
let g:vim_isort_map = '<C-i>'

" define leader key
let mapleader = "\<Space>"

" open nvimrc file
nnoremap <Leader>v :sp ~/.config/nvim/custom.vim<CR>
" source nvimrc file
nnoremap <Leader>sv :source ~/.config/nvim/custom.vim<CR>

" change 2 split windows from vert to horiz or horiz to vert
map <Leader>th <C-w>t<C-w>H
map <Leader>tk <C-w>t<C-w>K

" make access to the clipboard register easier 
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

nnoremap <Leader>r <C-r> 
" redo changes
nnoremap <Leader>f <C-f> 
" scroll down a whole page
nnoremap <Leader>b <C-b>
" scroll up a whole page
nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>
" toggle the cursor highlight on and off
 
" simplify split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" make adjusing split sizes a bit more friendly
noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize -3<CR>
noremap <silent> <C-Down> :resize +3<CR>

" remap ctrl-k and ctrl-j to go up and down in command-line-mode
cnoremap <C-k> <up>
cnoremap <C-j> <down>
