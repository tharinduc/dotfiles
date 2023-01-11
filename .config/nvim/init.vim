set nocompatible
set encoding=utf-8
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set nohlsearch
set smartindent
set incsearch
set scrolloff=8
set relativenumber
set number
set background=dark
set sb
set spr

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

" Statusline
Plug 'nvim-lualine/lualine.nvim'
" Icons for the statusline
Plug 'kyazdani42/nvim-web-devicons'
Plug 'tpope/vim-fugitive'

" Treesitter with context to have sticky function names
"Plug 'nvim-treesitter/nvim-treesitter'
"Plug 'nvim-treesitter/nvim-treesitter-context'

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

" Stop copying the replacing string
xnoremap("<leader>p", "\"_dp")

"" Copy to system clipboard
"nnoremap("<leader>y", "\"+y")
"vnoremap("<leader>y", "\"+y")
"nnoremap("<leader>d", "\"_d")
"vnoremap("<leader>d", "\"_d")

" Move cursor to the middle when Ctrl+u/d
nnoremap("<C-d>", "<C-d>zz")
nnoremap("<C-u>", "<C-u>zz")

" Find files using Telescope command-line sugar.
nnoremap <leader>fa <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>ff <cmd>Telescope git_files<cr>

" load the Statusline
lua require('statusline')

" load lsp config lua file
lua require('lsp-config')

" load treesitter
"lua require('treesitter')
"lua require('treesitter-context')

" open vim in working directory
"augroup cdpwd
"    autocmd!
"    autocmd VimEnter * cd $PWD
"augroup END
