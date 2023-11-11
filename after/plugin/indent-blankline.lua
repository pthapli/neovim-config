local setup, indent_blankline = pcall(require, "ibl")
if not setup then
	print("Error in setting up indent_blankline plugin")
	return
end

indent_blankline.setup()
