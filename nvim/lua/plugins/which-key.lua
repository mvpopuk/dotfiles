return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts = {
		preset = "modern",
		delay = 300,
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
		win = {
			border = "rounded",
		},
		spec = {
			{ "<leader>c", group = "Code" },
			{ "<leader>d", group = "Debug/Diagnostics" },
			{ "<leader>f", group = "Find" },
			{ "<leader>g", group = "Git/GitHub" },
			{ "<leader>gp", group = "Pull Requests" },
			{ "<leader>gi", group = "Issues" },
			{ "<leader>l", group = "LSP" },
			{ "<leader>m", group = "Markdown" },
			{ "<leader>r", group = "Run/Test" },
			{ "<leader>w", group = "Workspace" },
			{ "<leader>x", group = "Diagnostics" },
		},
	},
}
