set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=**/coverage/*
set wildignore+=**/node_modules/*
set wildignore+=**/android/*
set wildignore+=**/ios/*
set wildignore+=**/.git/*

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set hidden
set nohlsearch
set nu
set relativenumber
set noerrorbells
set nowrap
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set scrolloff=8
set noshowmode
set completeopt=menuone,noinsert,noselect
set signcolumn=yes
set clipboard+=unnamedplus

" Folding
set foldmethod=syntax
set foldlevel=0
" set foldclose=all

call plug#begin('~/.vim/plugged')
" Themes
Plug 'morhetz/gruvbox'

" Telescope
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-lua/plenary.nvim'

" Utils
Plug 'jiangmiao/auto-pairs'

" Neovim Tree shitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" LSP PlUGINS
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'nvim-lua/lsp_extensions.nvim'

call plug#end()

lua require('config')
lua require('lsp')

colorscheme gruvbox

nnoremap <Space> <Nop>
let mapleader=" "

fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

nnoremap <leader>pf <cmd>lua require('telescope.builtin').find_files()<cr>

noremap <C-j> 5j
noremap <C-k> 5k

augroup a98c14
    autocmd!
    autocmd BufWritePre * :call TrimWhitespace()
augroup END

" LSP
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']
" lua require('lspconfig').tsserver.setup{ on_attact=require('completion').on_attach }

