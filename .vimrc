set nocompatible

set encoding=utf-8
set number
syntax on
set tabstop=4
let mapleader = "\<Space>"

call plug#begin()

Plug 'nanotech/jellybeans.vim'
Plug 'vim-fuzzbox/fuzzbox.vim'

call plug#end()

set termguicolors
colorscheme jellybeans
set background=dark

" fuzzbox plugin keymaps
" search word under the cursor
nnoremap <leader>fw :FuzzyGrep <C-R><C-W><CR>

set tags=/home/tharindu/.vim/system.tags,/home/tharindu/.vim/allegro.tags,tags
