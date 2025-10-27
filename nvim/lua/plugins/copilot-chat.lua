return {
	{
		"CopilotC-Nvim/CopilotChat.nvim",
		branch = "main", -- Explicitly use main branch instead of canary
		version = false, -- Use latest from main branch
		pin = false, -- Don't pin to specific commit
		dependencies = {
			{ "zbirenbaum/copilot.lua" }, -- or github/copilot.vim
			{ "nvim-lua/plenary.nvim" }, -- for curl, log wrapper
		},
		build = "make tiktoken", -- Only on MacOS or Linux
		opts = {
			debug = false, -- Disable debugging for better performance
			-- Explicitly configure to use main branch features
			model = "gpt-4", -- Use stable model
		},
		config = function(_, opts)
			require("CopilotChat").setup(opts)
		end,
		-- Force lazy to reinstall from main branch
		cond = function()
			return true
		end,
	},
}
