local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
-- vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
-- vim.keymap.set("n", "<leader>fb", builtin.live_grep({ search_dirs = { "%:p" } }), {})
-- lua require'telescope.builtin'.live_grep{ search_dirs={"%:p"} }

vim.keymap.set("n", "<leader>fc", builtin.colorscheme, {})
vim.keymap.set("n", "<leader>fr", builtin.registers, {})

--new one below
vim.keymap.set("n", "<leader>fb", ":lua require'telescope.builtin'.live_grep{search_dirs={'%:p'}}<CR>", {})
