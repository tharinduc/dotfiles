set number
set background=dark

colorscheme murphy

syntax on


"""""""" Vim Plug """"""""
call plug#begin('~/.vim/plugged')

Plug 'vim-syntastic/syntastic'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

nnoremap <C-c> :SyntasticCheck<CR>
nnoremap <C-x> :SyntasticReset<CR>


Plug 'rust-lang/rust.vim'
syntax enable
filetype plugin indent on


Plug 'ycm-core/YouCompleteMe'

call plug#end()

""""""""""""""""""""""""""

