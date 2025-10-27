return {
	{
		"zbirenbaum/copilot.lua",
		cmd = "Copilot",
		build = ":Copilot auth",
		event = "InsertEnter",
		config = function()
			require("copilot").setup({
				panel = {
					enabled = true,
					auto_refresh = true,
				keymap = {
					jump_next = "<c-j>",
					jump_prev = "<c-k>",
					accept = "<M-l>", -- changed from <M-CR> to avoid duplicate
					refresh = "r",
					open = "<M-CR>",
				},
					layout = { position = "bottom", ratio = 0.4 },
				},
				suggestion = {
					enabled = true,
					auto_trigger = true,
					debounce = 75,
					keymap = {
						accept = "<M-a>", -- changed from <c-a> to avoid conflict with select all
						accept_word = false,
						accept_line = false,
						next = "<c-l>",
						prev = "<c-h>",
						dismiss = "<C-e>",
					},
				},
			})
		end,
	},
}
