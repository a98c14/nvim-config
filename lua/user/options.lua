vim.opt.wildignore:append "*.pyc"
vim.opt.wildignore:append "*_build/*"
vim.opt.wildignore:append "**/coverage/*"
vim.opt.wildignore:append "**/node_modules/*"
vim.opt.wildignore:append "**/android/*"
vim.opt.wildignore:append "**/ios/*"
vim.opt.wildignore:append "**/.git/*"

vim.opt.tabstop=4
vim.opt.softtabstop=4
vim.opt.shiftwidth=4
vim.opt.expandtab=true
vim.opt.smartindent=true
vim.opt.hidden=true
vim.opt.hlsearch=false
vim.opt.nu=true
vim.opt.relativenumber=true
vim.opt.errorbells=false
vim.opt.wrap=false
vim.opt.swapfile=false
vim.opt.backup=false
vim.opt.undodir = os.getenv("HOME")..'/undodir'
vim.opt.undofile=true
vim.opt.incsearch=true
vim.opt.scrolloff=8
vim.opt.showmode=false
vim.opt.completeopt= { "menuone", "noinsert", "noselect" }
vim.opt.signcolumn = "yes"
vim.opt.clipboard = "unnamedplus"
vim.opt.termguicolors = true
vim.opt.cmdheight = 1
vim.opt.guifont = "CaskaydiaCove NF"

-- Folding
-- vim.opt.foldmethod= "syntax"
-- vim.opt.foldlevel=0
-- vim.opt.foldclose="all"
