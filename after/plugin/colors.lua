-- function ColorMyPencils(color)
-- 	color = color or "rose-pine"
-- 	vim.cmd.colorscheme(color)
--
-- 	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- 	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
-- end
--
-- ColorMyPencils('rose-pine')

------------- Theme setup for nightfly --------------------
-- local status, _ = pcall(vim.cmd, "colorscheme nightfly")
--
-- if not status then
-- 	print("nightfly colorscheme not found")
-- 	return
-- end
-----------------------------------------------------------

-- Set the theme name here
-- local colorscheme = "catppuccin"
-- local colorscheme = "github_dark_colorblind"
-- local colorscheme = "gruvbox"
local colorscheme = "github_dark_colorblind"

local status, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)

if not status then
	print(colorscheme .. " could not be set")
end

-- vim.api.nvim_set_hl(0, "Normal", { bg = "#000000" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

vim.o.termguicolors = true
vim.o.background = "dark"
