set nocompatible
set encoding=utf-8
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set nohlsearch
set smartindent
set incsearch
set scrolloff=8
set number
set background=dark

call plug#begin('~/.vim/plugged')

Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp', { 'branch': 'main' }

" For vsnip users.
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

Plug 'rust-lang/rust.vim'
"Plug 'dense-analysis/ale'
Plug 'sainnhe/edge'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }

call plug#end()

" Important!!
if has('termguicolors')
    set termguicolors
endif
" The configuration options should be placed before `colorscheme edge`.
let g:edge_style = 'aura'
let g:edge_better_performance = 1
colorscheme edge

let mapleader = ' '
" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" load lsp config lua file
lua require('lsp-config')
