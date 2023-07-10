-- Keymaps
lvim.builtin.bufferline.keymap.normal_mode = {
	["<Tab>"] = ":BufferLineCycleNext<CR>", -- tab
	["<S-Tab>"] = ":BufferLineCyclePrev<CR>", -- shift-tab
}
lvim.keys.normal_mode["<C-f>"] = ":NvimTreeFocus<CR>"
lvim.keys.normal_mode["<C-w>z"] = ":WindowsMaximize<CR>"
lvim.keys.normal_mode["<C-w>="] = ":WindowsEqualize<CR>"

-- CMP Configuration
lvim.builtin.cmp.cmdline.enable = true

-- NVIM Tree Configuration
lvim.builtin.nvimtree.setup.view.float.enable = true
lvim.builtin.nvimtree.setup.view.float.quit_on_focus_loss = false
lvim.builtin.nvimtree.setup.view.float.open_win_config = function()
	return {
		row = 0,
		col = vim.o.columns - 33.5,
		border = "rounded",
		relative = "editor",
		width = 30,
		height = vim.o.lines,
	}
end

-- Lualine Configuration

-- Emmet Configuration

-- Blankline
lvim.builtin.indentlines.options.indent_level = 10
lvim.builtin.indentlines.options.max_indent_increase = 1
lvim.builtin.indentlines.options.strict_tabs = true
lvim.builtin.indentlines.options.filetype = { "html", "css", "scss", "javascriptreact", "typescriptreact" }
-- lvim.builtin.indentlines.options.use_treesitter_scope = true
lvim.builtin.indentlines.options.char_highlight_list = {
	"IndentBlanklineIndent1",
	"IndentBlanklineIndent2",
	"IndentBlanklineIndent3",
	"IndentBlanklineIndent4",
	"IndentBlanklineIndent5",
	"IndentBlanklineIndent6",
}
lvim.builtin.indentlines.options.show_current_context = true
lvim.builtin.indentlines.options.context_char = "┃"
