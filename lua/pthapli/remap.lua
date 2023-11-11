-- set space as mapleader
vim.g.mapleader = " "

-- ! does not work with nvim-tree since it is disabled in its configuration
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- press jk to enter normal mode from insert mode( NO NEED TO PRESS ESC )
vim.keymap.set("i", "jk", "<ESC>")

local keymap = vim.keymap

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR") --  go to prevo tab

-- nvim-tree keymappings
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- restart lsp server
keymap.set("n", "<leader>rs", ":LspRestart<CR>") -- mapping to restart lsp if necessary

-- delete single character without copying into register
keymap.set("n", "x", '"_x')
