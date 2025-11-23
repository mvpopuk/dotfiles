return {
	"MeanderingProgrammer/render-markdown.nvim",
	ft = { "markdown" },
	dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" },
	keys = {
		{ "<leader>mp", "<cmd>RenderMarkdown toggle<cr>", desc = "Toggle Markdown Render" },
	},
	opts = {
		-- Render markdown in the current buffer with nice formatting
		heading = {
			enabled = true,
			sign = true,
			icons = { "󰲡 ", "󰲣 ", "󰲥 ", "󰲧 ", "󰲩 ", "󰲫 " },
		},
		code = {
			enabled = true,
			sign = true,
			style = "full",
			width = "block",
			left_pad = 2,
			right_pad = 2,
		},
		bullet = {
			enabled = true,
			icons = { "●", "○", "◆", "◇" },
		},
	},
}
