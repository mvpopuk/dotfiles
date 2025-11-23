return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 300
	end,
	config = function()
		local wk = require("which-key")
		wk.setup({
			plugins = {
				marks = true,
				registers = true,
				spelling = {
					enabled = true,
					suggestions = 20,
				},
				presets = {
					operators = true,
					motions = true,
					text_objects = true,
					windows = true,
					nav = true,
					z = true,
					g = true,
				},
			},
			window = {
				border = "rounded",
				position = "bottom",
			},
		})

		-- Register group names only (which-key will auto-detect actual keymaps)
		wk.register({
			f = { name = "+Find" },
			g = { name = "+Goto" },
			c = { name = "+Code" },
			l = { name = "+LSP" },
			r = { name = "+Run/Test" },
			w = { name = "+Workspace" },
			x = { name = "+Diagnostics" },
			d = { name = "+Debug/Diagnostics" },
		}, { prefix = "<leader>" })
	end,
}
