call plug#begin('~/.vim/plugged')
" Themes
" Plug 'morhetz/gruvbox'
Plug 'sainnhe/gruvbox-material'
" Telescope
Plug 'nvim-telescope/telescope.nvim'

" Core
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'

" Utils
Plug 'jiangmiao/auto-pairs'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" cmp
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'saadparwaiz1/cmp_luasnip'

" LSP
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'
Plug 'nvim-lua/lsp_extensions.nvim'

" Snippets
Plug 'L3MON4D3/LuaSnip'
Plug 'rafamadriz/friendly-snippets'

call plug#end()

lua require('user/lsp')
lua require('user/cmp')
lua require('user/options')
lua require('user/keymaps')
lua require('user/treesitter')

colorscheme gruvbox-material

fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

augroup a98c14
    autocmd!
    autocmd BufWritePre * :call TrimWhitespace()
augroup END


" LSP
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']
