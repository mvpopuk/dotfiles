return {
	{
		"lewis6991/gitsigns.nvim",
		lazy = false,
		config = function()
			local icons = require("config.icons")
			require("gitsigns").setup({
				signs = {
					add = {
						hl = "GitSignsAdd",
						text = icons.ui.BoldLineLeft,
						numhl = "GitSignsAddNr",
						linehl = "GitSignsAddLn",
					},
					change = {
						hl = "GitSignsChange",
						text = icons.ui.BoldLineLeft,
						numhl = "GitSignsChangeNr",
						linehl = "GitSignsChangeLn",
					},
					delete = {
						hl = "GitSignsDelete",
						text = icons.ui.TriangleShortArrowRight,
						numhl = "GitSignsDeleteNr",
						linehl = "GitSignsDeleteLn",
					},
					topdelete = {
						hl = "GitSignsDelete",
						text = icons.ui.TriangleShortArrowRight,
						numhl = "GitSignsDeleteNr",
						linehl = "GitSignsDeleteLn",
					},
					changedelete = {
						hl = "GitSignsChange",
						text = icons.ui.BoldLineLeft,
						numhl = "GitSignsChangeNr",
						linehl = "GitSignsChangeLn",
					},
				},
				signcolumn = true,
				numhl = false,
				linehl = false,
				word_diff = false,
				watch_gitdir = {
					interval = 1000,
					follow_files = true,
				},
				attach_to_untracked = true,
				current_line_blame = true, -- Toggle with `:Gitsigns toggle_current_line_blame`
				current_line_blame_opts = {
					virt_text = true,
					virt_text_pos = "eol", -- 'eol' | 'overlay' | 'right_align'
					delay = 1000,
					ignore_whitespace = false,
				},
				current_line_blame_formatter = "<author>, <author_time:%Y-%m-%d> - <summary>",
				sign_priority = 6,
				status_formatter = nil,
				update_debounce = 200,
				max_file_length = 40000,
				preview_config = {
					border = "rounded",
					style = "minimal",
					relative = "cursor",
					row = 0,
					col = 1,
				},
				yadm = { enable = false },

				on_attach = function(bufnr)
					vim.keymap.set(
						"n",
						"<leader>H",
						require("gitsigns").preview_hunk,
						{ buffer = bufnr, desc = "Preview git hunk" }
					)

					vim.keymap.set("n", "<leader>hs", require("gitsigns").stage_hunk)
					vim.keymap.set("n", "<leader>hr", require("gitsigns").reset_hunk)
					vim.keymap.set("v", "<leader>hs", function()
						require("gitsigns").stage_hunk({ vim.fn.line("."), vim.fn.line("v") })
					end)
					vim.keymap.set("v", "<leader>hr", function()
						require("gitsigns").reset_hunk({ vim.fn.line("."), vim.fn.line("v") })
					end)
					vim.keymap.set("n", "<leader>hS", require("gitsigns").stage_buffer)
					vim.keymap.set("n", "<leader>hu", require("gitsigns").undo_stage_hunk)
					vim.keymap.set("n", "<leader>hR", require("gitsigns").reset_buffer)
					vim.keymap.set("n", "<leader>hp", require("gitsigns").preview_hunk)
					vim.keymap.set("n", "<leader>hb", function()
						require("gitsigns").blame_line({ full = true })
					end)
					vim.keymap.set("n", "<leader>tb", require("gitsigns").toggle_current_line_blame)
					vim.keymap.set("n", "<leader>hd", require("gitsigns").diffthis)
					vim.keymap.set("n", "<leader>hD", function()
						require("gitsigns").diffthis("~")
					end)
					vim.keymap.set("n", "<leader>td", require("gitsigns").toggle_deleted)
				end,
			})
		end,
	},
	{
		"sindrets/diffview.nvim",
		event = "VeryLazy",
		cmd = { "DiffviewOpen", "DiffviewClose", "DiffviewToggleFiles", "DiffviewFocusFiles" },
	},
	-- Git related plugins
	"tpope/vim-fugitive",
	"tpope/vim-rhubarb",

	-- not git, but it's okay
	"mbbill/undotree",
}
