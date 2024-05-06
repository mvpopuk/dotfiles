return {
	"folke/noice.nvim",
	event = "VeryLazy",
	enabled = true,
	opts = {
		-- add any options here
	},
	dependencies = {
		-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
		"MunifTanjim/nui.nvim",
		-- OPTIONAL:
		--   `nvim-notify` is only needed, if you want to use the notification view.
		--   If not available, we use `mini` as the fallback
		-- "rcarriga/nvim-notify",
	},
	config = function()
		require("noice").setup({
			views = {
				-- cmdline_popup = {
				-- 	position = {
				-- 		row = 5,
				-- 		col = "50%",
				-- 	},
				-- 	size = {
				-- 		width = 60,
				-- 		height = "auto",
				-- 	},
				-- },
				popupmenu = {
					relative = "editor",
					position = {
						row = 8,
						col = "50%",
					},
					size = {
						width = 60,
						height = 10,
					},
					border = {
						style = "rounded",
						padding = { 0, 1 },
					},
					win_options = {
						winhighlight = { Normal = "Normal", FloatBorder = "DiagnosticInfo" },
					},
				},
			},
			routes = {
				{
					filter = {
						event = "msg_show",
						kind = "",
						find = "written",
					},
					opts = { skip = true },
				},
			},
			-- routes = {
			--   {
			--     view = "notify",
			--     filter = { event = "msg_showmode" },
			--   },
			-- },
			lsp = {
				Proogress = {
					enabled = false,
					-- Lsp Progress is formatted using the builtins for lsp_progress. See config.format.builtin
					-- See the section on formatting for more details on how to customize.
					--- @type NoiceFormat|string
					format = "lsp_progress",
					--- @type NoiceFormat|string
					format_done = "lsp_progress_done",
					throttle = 1000 / 30, -- frequency to update lsp progress message
					view = "mini",
				},
				override = {
					["vim.lsp.util.convert_input_to_markdown_lines"] = true,
					["vim.lsp.util.stylize_markdown"] = true,
					["cmp.entry.get_documentation"] = true,
				},
			},
			-- you can enable a preset for easier configuration
			-- presets = {
			--     bottom_search = true,         -- use a classic bottom cmdline for search
			--     command_palette = true,       -- position the cmdline and popupmenu together
			--     long_message_to_split = true, -- long messages will be sent to a split
			--     inc_rename = false,           -- enables an input dialog for inc-rename.nvim
			--     lsp_doc_border = true,        -- add a border to hover docs and signature help
			-- },
			-- cmdline = {
			--     view = "cmdline",
			-- },
			mini = {
				win_options = {
					winblend = 0,
				},
			},
		})
	end,
}
