local icons = {
	kind = {
		Array = " ",
		Boolean = " ",
		Class = " ",
		Color = " ",
		Constant = " ",
		Constructor = " ",
		Enum = " ",
		EnumMember = " ",
		Event = " ",
		Field = " ",
		File = " ",
		Folder = "󰉋 ",
		Function = " ",
		Interface = " ",
		Key = " ",
		Keyword = " ",
		Method = " ",
		Module = " ",
		Namespace = " ",
		Null = "󰟢 ",
		Number = " ",
		Object = " ",
		Operator = " ",
		Package = " ",
		Property = " ",
		Reference = " ",
		Snippet = " ",
		String = " ",
		Struct = " ",
		Text = " ",
		TypeParameter = " ",
		Unit = " ",
		Value = " ",
		Variable = " ",
	},
	git = {
		LineAdded = " ",
		LineModified = " ",
		LineRemoved = " ",
		FileDeleted = " ",
		FileIgnored = "◌",
		FileRenamed = " ",
		FileStaged = "S",
		FileUnmerged = "",
		FileUnstaged = "",
		FileUntracked = "U",
		Diff = " ",
		Repo = " ",
		Octoface = " ",
		Branch = "",
	},
	ui = {
		ArrowCircleDown = "",
		ArrowCircleLeft = "",
		ArrowCircleRight = "",
		ArrowCircleUp = "",
		BoldArrowDown = "",
		BoldArrowLeft = "",
		BoldArrowRight = "",
		BoldArrowUp = "",
		BoldClose = "",
		BoldDividerLeft = "",
		BoldDividerRight = "",
		BoldLineLeft = "▎",
		BookMark = "",
		BoxChecked = "",
		Bug = " ",
		Stacks = "",
		Scopes = "",
		Watches = "󰂥",
		DebugConsole = "",
		Calendar = "",
		Check = "",
		ChevronRight = "",
		ChevronShortDown = "",
		ChevronShortLeft = "",
		ChevronShortRight = "",
		ChevronShortUp = "",
		Circle = " ",
		Close = "󰅖",
		CloudDownload = " ",
		Code = "",
		Comment = "",
		Dashboard = "",
		DividerLeft = "",
		DividerRight = "",
		DoubleChevronRight = "»",
		Ellipsis = "",
		EmptyFolder = "",
		EmptyFolderOpen = "",
		File = "",
		FileSymlink = "",
		Files = " ",
		FindFile = "󰈞",
		FindText = "󰊄",
		Fire = "",
		Folder = "󰉋 ",
		FolderOpen = " ",
		FolderSymlink = "",
		Forward = " ",
		Gear = " ",
		History = " ",
		Lightbulb = " ",
		LineLeft = "▏",
		LineMiddle = "│",
		List = " ",
		Lock = " ",
		NewFile = " ",
		Note = " ",
		Package = " ",
		Pencil = "󰏫 ",
		Plus = " ",
		Project = " ",
		Search = " ",
		SignIn = " ",
		SignOut = " ",
		Tab = "󰌒 ",
		Table = " ",
		Target = "󰀘 ",
		Telescope = " ",
		Text = " ",
		Tree = "",
		Triangle = "󰐊",
		TriangleShortArrowDown = "",
		TriangleShortArrowLeft = "",
		TriangleShortArrowRight = "",
		TriangleShortArrowUp = "",
	},
	diagnostics = {
		BoldError = "",
		Error = "",
		BoldWarning = "",
		Warning = "",
		BoldInformation = "",
		Information = "",
		BoldQuestion = "",
		Question = "",
		BoldHint = "",
		Hint = "󰌶",
		Debug = "",
		Trace = "✎",
	},
	misc = {
		Robot = "󰚩 ",
		Squirrel = "",
		Tag = "",
		Watch = "",
		Smiley = "",
		Package = "",
		CircuitBoard = "",
	},
}

-- import nvim-tree plugin safely
local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
	print("Error when setting up nvim-tree plugin")
	return
end

-- recommended settings from nvim-tree documentation
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- nvimtree.setup({})

-- change color for arrows in tree to light blue
vim.cmd([[ highlight NvimTreeIndentMarker guifg=#3FC5FF ]])

-- load the icons

-- configure nvim-tree
nvimtree.setup({
	view = {
		signcolumn = "auto",
		side = "left",
		centralize_selection = true,
		number = true,
		relativenumber = true,
		preserve_window_proportions = true,
		width = {}, -- for dynamically sizing the nvim-tree window
	},
	filters = {
		dotfiles = false,
		git_ignored = false,
	},
	renderer = {
		add_trailing = false,
		group_empty = false,
		highlight_git = false,
		full_name = false,
		highlight_opened_files = "none",
		root_folder_label = ":t",
		indent_width = 2,
		indent_markers = {
			enable = false,
			inline_arrows = true,
			icons = {
				corner = "└",
				edge = "│",
				item = "│",
				none = " ",
			},
		},
		icons = {
			git_placement = "before",
			padding = " ",
			symlink_arrow = " ➛ ",
			glyphs = {
				default = icons.ui.Text,
				symlink = icons.ui.FileSymlink,
				bookmark = icons.ui.BookMark,
				folder = {
					arrow_closed = icons.ui.ChevronRight,
					arrow_open = icons.ui.ChevronShortDown,
					default = icons.ui.Folder,
					open = icons.ui.FolderOpen,
					empty = icons.ui.EmptyFolder,
					empty_open = icons.ui.EmptyFolderOpen,
					symlink = icons.ui.FolderSymlink,
					symlink_open = icons.ui.FolderOpen,
				},
				git = {
					unstaged = icons.git.FileUnstaged,
					staged = icons.git.FileStaged,
					unmerged = icons.git.FileUnmerged,
					renamed = icons.git.FileRenamed,
					untracked = icons.git.FileUntracked,
					deleted = icons.git.FileDeleted,
					ignored = icons.git.FileIgnored,
				},
			},
		},
		special_files = { "Cargo.toml", "Makefile", "README.md", "readme.md" },
		symlink_destination = true,
	},
	update_focused_file = {
		enable = true,
		debounce_delay = 15,
		update_root = true,
		ignore_list = {},
	},

	diagnostics = {
		enable = true,
		show_on_dirs = true,
		show_on_open_dirs = true,
		debounce_delay = 50,
		severity = {
			min = vim.diagnostic.severity.HINT,
			max = vim.diagnostic.severity.ERROR,
		},
		icons = {
			hint = icons.diagnostics.BoldHint,
			info = icons.diagnostics.BoldInformation,
			warning = icons.diagnostics.BoldWarning,
			error = icons.diagnostics.BoldError,
		},
	},
})

-- open nvim-tree on setup

local function open_nvim_tree(data)
	-- buffer is a [No Name]
	local no_name = data.file == "" and vim.bo[data.buf].buftype == ""

	-- buffer is a directory
	local directory = vim.fn.isdirectory(data.file) == 1

	if not no_name and not directory then
		return
	end

	-- change to the directory
	if directory then
		vim.cmd.cd(data.file)
	end

	-- open the tree
	require("nvim-tree.api").tree.open()
end

vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })
