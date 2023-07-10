lvim.plugins = {
	{
		"romgrk/nvim-treesitter-context",
		config = function()
			reload("treesitter-context").setup({
				enable = true, -- Enable this plugin (Can be enabled/disabled later via commands)
				throttle = true, -- Throttles plugin updates (may improve performance)
				max_lines = 0, -- How many lines the window should span. Values <= 0 mean no limit.
				patterns = {
					-- Match patterns for TS nodes. These get wrapped to match at word boundaries.
					-- For all filetypes
					-- Note that setting an entry here replaces all other patterns for this entry.
					-- By setting the 'default' entry below, you can control which nodes you want to
					-- appear in the context window.
					default = {
						"class",
						"function",
						"method",
					},
				},
			})
		end,
	},
	{
		"cpea2506/one_monokai.nvim",
		config = function()
			reload("one_monokai").setup({
				transparent = true,
			})
		end,
	},
	{
		"anuvyklack/windows.nvim",
		dependencies = "anuvyklack/middleclass",
		config = function()
			reload("windows").setup({
				autowidth = {
					winwidth = 12,
				},
				animation = {
					enable = false,
				},
			})
		end,
	},
	--[[ {
		"nmac427/guess-indent.nvim",
		config = function()
			reload("guess-indent").setup({})
		end,
	}, ]]
	{
		"nacro90/numb.nvim",
		config = function()
			reload("numb").setup({})
		end,
	},
	{
		"brenoprata10/nvim-highlight-colors",
		config = function()
			reload("nvim-highlight-colors").setup({
				enable_named_colors = true,
				enable_tailwind = true,
			})
		end,
	},
	{
		"andweeb/presence.nvim",
		config = function()
			require("presence").setup({
				auto_update = true,
				neovim_image_text = "LunarVim",
				main_image = "file",
				client_id = "914799712794705961",
				show_time = false,
				workspace_text = function()
					return "Man Dep Trai"
				end,
			})
		end,
	},
	{
		"asiryk/auto-hlsearch.nvim",
		config = function()
			reload("auto-hlsearch").setup()
		end,
	},
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		config = function()
			require("noice").setup({
				cmdline = {
					format = {
						cmdline = { icon_hl_group = "DevIconVim" },
						lua = { icon_hl_group = "DevIconLua" },
						help = { icon_hl_group = "Operator" },
					},
				},
				popupmenu = {
					backend = "cmp",
				},
				presets = {
					lsp_doc_border = true,
				},
			})
		end,
		dependencies = {
			-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
			"MunifTanjim/nui.nvim",
			-- OPTIONAL:
			--   `nvim-notify` is only needed, if you want to use the notification view.
			--   If not available, we use `mini` as the fallback
			"rcarriga/nvim-notify",
		},
	},
	{
		"rcarriga/nvim-notify",
		config = function()
			reload("notify").setup({
				background_colour = "#000000",
				timeout = 1000,
				fps = 70,
			})
		end,
	},
	{
		"windwp/nvim-ts-autotag",
		config = function()
			reload("nvim-ts-autotag").setup()
		end,
	},
	{
		"woosaaahh/sj.nvim",
		config = function()
			local sj = reload("sj")
			sj.setup({
				auto_jump = true,
			})
			vim.keymap.set("n", "<S-h>", sj.run)
		end,
	},
	{
		"kosayoda/nvim-lightbulb",
		config = function()
			reload("nvim-lightbulb").setup({
				autocmd = { enabled = true },
				status_text = {
					enabled = true,
					-- Text to provide when code actions are available
					text = "💡",
					-- Text to provide when no actions are available
					text_unavailable = "",
				},
			})
		end,
	},
	{
		"stevearc/dressing.nvim",
		config = function()
			reload("dressing").setup({
				input = {
					anchor = "NW",
					insert_only = false,
					override = function(conf)
						conf.col = 1
						conf.row = 1

						return conf
					end,
					win_options = {
						winblend = 0,
					},
					mappings = {
						n = {
							["q"] = "Close",
						},
					},
				},
				select = {
					backend = { "telescope" },
				},
			})
		end,
	},
	{
		"folke/todo-comments.nvim",
		config = function()
			reload("todo-comments").setup()
		end,
	},
	{
		"folke/trouble.nvim",
		config = function()
			require("trouble").setup({
				auto_open = false, -- automatically open the list when you have diagnostics
				auto_close = true, -- automatically close the list when you have no diagnostics
				use_diagnostic_signs = true,
			})
			vim.keymap.set("n", "T", ":TroubleToggle<CR>")
		end,
	},
	{
		"kylechui/nvim-surround",
		version = "*",
		event = "VeryLazy",
		config = function()
			require("nvim-surround").setup({
				-- Configuration here, or leave empty to use defaults
			})
		end,
	},
	{
		"kevinhwang91/nvim-ufo",

		config = function()
			vim.o.foldcolumn = "1" -- '0' is not bad
			vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
			vim.o.foldlevelstart = 99
			vim.o.foldenable = true
			vim.keymap.set("n", "zR", require("ufo").openAllFolds)
			vim.keymap.set("n", "<C-p>", require("ufo").closeAllFolds)
		end,
		dependencies = {
			"kevinhwang91/promise-async",
		},
	},
}
