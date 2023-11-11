-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")

	-- Simple plugins can be specified as strings
	use("rstacruz/vim-closer")

	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.4",
		-- or                            , branch = '0.1.x',
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	-- use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })
	use("nvim-treesitter/playground")
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			require("nvim-treesitter.install").update({ with_sync = true })
		end,
	})

	use("theprimeagen/harpoon")
	use("mbbill/undotree")

	-- Theme nightfly
	use("bluz71/vim-nightfly-guicolors")

	-- Theme ayu
	-- use("ayu-theme/ayu-vim")
	use("mhartington/oceanic-next")
	use({ "catppuccin/nvim", as = "catppuccin" })
	use("shatur/neovim-ayu")
	use("folke/tokyonight.nvim")
	use("ellisonleao/gruvbox.nvim")

	use({ "projekt0n/github-nvim-theme" })
	-- use("preservim/nerdcommenter")

	-- tmux and split window navigation
	use("christoomey/vim-tmux-navigator")

	-- comment plugin
	use("numToStr/Comment.nvim")

	-- functions that many plugins use
	use("nvim-lua/plenary.nvim")

	-- icon plugin
	use("kyazdani42/nvim-web-devicons")

	-- file tree in neovim
	use({ "nvim-tree/nvim-tree.lua", after = "nvim-web-devicons", requires = "nvim-tree/nvim-web-devicons" })

	-- file naviation
	-- use("stevearc/oil.nvim")

	--auto save feature
	-- use("Pocco81/auto-save.nvim")

	-- highlight word under the cursor in the buffer
	use("RRethy/vim-illuminate")

	-- formatting and linting
	use("jose-elias-alvarez/null-ls.nvim")
	use("jayp0521/mason-null-ls.nvim")

	-- autocompletion
	-- use("hrsh7th/nvim-cmp") -- completion plugin
	use("hrsh7th/cmp-buffer") -- source for text in buffer
	-- use("hrsh7th/cmp-path") -- source for file system paths

	--status line at the bottom
	use("nvim-lualine/lualine.nvim")

	--auto closing
	use("windwp/nvim-autopairs")
	use("windwp/nvim-ts-autotag")

	--------------------test-----------------------
	-- use("cohama/lexima.vim")
	--------------------test over------------------

	-- use("L3MON4D3/LuaSnip") -- snippet engine
	use("saadparwaiz1/cmp_luasnip") -- for autocompletion
	use("rafamadriz/friendly-snippets") -- useful snippets

	use("jose-elias-alvarez/typescript.nvim")

	--plugin to manage registers
	use({
		"tversteeg/registers.nvim",
		config = function()
			require("registers").setup()
		end,
	})

	--debugging plugins
	use("mfussenegger/nvim-dap")
	use("mxsdev/nvim-dap-vscode-js")
	use({ "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } })
	use({
		"microsoft/vscode-js-debug",
		opt = true,
		run = "npm install --legacy-peer-deps && npx gulp vsDebugServerBundle && mv dist out",
	})
	--plugin for moving around in file
	use("ggandor/leap.nvim")

	--rust lsp setup
	use("simrat39/rust-tools.nvim")

	use("lukas-reineke/indent-blankline.nvim")

	use({
		"utilyre/barbecue.nvim",
		tag = "*",
		requires = {
			"SmiteshP/nvim-navic",
			"nvim-tree/nvim-web-devicons", -- optional dependency
		},
		after = "nvim-web-devicons", -- keep this if you're using NvChad
		config = function()
			require("barbecue").setup()
		end,
	})

	-- use({ "akinsho/bufferline.nvim", tag = "*", requires = "nvim-tree/nvim-web-devicons" })
	use({
		"akinsho/toggleterm.nvim",
		tag = "*",
		-- config = function()
		-- 	require("toggleterm").setup()
		-- end,
	})

	-- better comments for comment highlights
	use("Djancyp/better-comments.nvim")

	-- github copilot
	use("github/copilot.vim")

	-- markdown viewer for neovim
	use({
		"iamcco/markdown-preview.nvim",
		run = function()
			vim.fn["mkdp#util#install"]()
		end,
	})

	use({
		"VonHeikemen/lsp-zero.nvim",
		branch = "v2.x",
		requires = {
			-- LSP Support
			{ "neovim/nvim-lspconfig" }, -- Required
			{ -- Optional
				"williamboman/mason.nvim",
				run = function()
					pcall(vim.cmd, "MasonUpdate")
				end,
			},
			{ "williamboman/mason-lspconfig.nvim" }, -- Optional

			-- Autocompletion
			{ "hrsh7th/nvim-cmp" }, -- Required
			{ "hrsh7th/cmp-nvim-lsp" }, -- Required
			{ "L3MON4D3/LuaSnip" }, -- Required
			{ "hrsh7th/cmp-path" },
			{ "glepnir/lspsaga.nvim" },
			{ "onsails/lspkind.nvim" },
		},
	})
end)
