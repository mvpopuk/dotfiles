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

		-- Document existing keymaps
		wk.register({
			f = {
				name = "Find (Telescope)",
				f = "Find files",
				g = "Live grep",
				b = "Buffers",
				h = "Help tags",
				r = "LSP references",
				m = "LSP methods",
				F = "Find word under cursor",
				G = "Grep word under cursor",
				S = "Grep string under cursor",
			},
			g = {
				name = "Go to",
				d = "Definition",
				v = "Definition (vsplit)",
				i = "Implementation",
			},
			c = {
				name = "Code",
				a = "Code actions",
			},
			l = {
				name = "Language/LSP",
				f = "Format buffer",
				p = "Run Pint (PHP)",
				e = "Fix ESLint",
				E = "Format with ESLint",
			},
			r = {
				name = "Run (Tests)",
				n = "Nearest test",
				f = "File tests",
				s = "Test suite",
				l = "Last test",
				v = "Visit test",
			},
			w = {
				name = "Workspace",
				a = "Add folder",
				r = "Remove folder",
				l = "List folders",
			},
			x = {
				name = "Diagnostics (Trouble)",
				x = "Toggle diagnostics",
				w = "Workspace diagnostics",
				d = "Document diagnostics",
				q = "Quickfix",
				l = "Location list",
			},
			d = {
				name = "Debug/Delete",
				g = "Diagnostics (Telescope)",
			},
			W = "Save without format",
			["2"] = "Vertical split",
			w = "Close buffer",
			q = "Force close buffer",
			k = "Old files",
			m = "Modified files (git)",
			v = "Go to definition (vsplit)",
			git = "Lazygit",
			df = "Git diff",
			sv = "Source vimrc",
			["<left>"] = "Previous buffer",
			["<right>"] = "Next buffer",
		}, { prefix = "<leader>" })
	end,
}
