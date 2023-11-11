vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
-- vim.opt.tabstop = 2
vim.opt.softtabstop = 4
-- vim.opt.softtabstop = 0
vim.opt.shiftwidth = 4
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.smartindent = true
vim.opt.autoindent = true
--
-- smarttab makes sure that the next line has same indentation as the previous one
vim.opt.smarttab = true

-- vim.opt.wrap = false
vim.opt.wrap = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.ignorecase = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

vim.g.mapleader = " "

-- clipboard -> Copy yanks to the system clipboard
vim.opt.clipboard:append("unnamedplus")

vim.g.autoclose_on = 0
