return {
	{
		"lukas-reineke/indent-blankline.nvim",
		event = "BufReadPost", -- Trigger on buffer read post event
		config = function()
			-- Define highlight groups
			local highlight = {
				"Highlight",
			}

			-- Require and set up hooks
			local hooks = require("ibl.hooks")
			hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
				vim.api.nvim_set_hl(0, "Highlight", { fg = "#3a4261" })
			end)

			-- New configuration setup
			require("ibl").setup({
				scope = {
					enabled = true,
					show_start = true,
					show_end = false,
					injected_languages = false,
					highlight = { "Function", "Label" },
					priority = 500,
				},
				indent = { highlight = highlight, char = "│" },
				exclude = {
					filetypes = {
						"lspinfo",
						"packer",
						"checkhealth",
						"help",
						"man",
						"gitcommit",
						"TelescopePrompt",
						"TelescopeResults",
						"lua",
						"vim",
						"startify",
						"goyo",
						"help",
						"alpha",
						"dashboard",
						"neo-tree",
						"Trouble",
						"lazy",
					},
				},
			})
		end,
	},
}
