return {
	"nvim-neotest/neotest",
	dependencies = {
		"nvim-neotest/nvim-nio",
		"nvim-lua/plenary.nvim",
		"antoinemadec/FixCursorHold.nvim",
		"nvim-treesitter/nvim-treesitter",
		-- Adapters
		"nvim-neotest/neotest-phpunit",
		"nvim-neotest/neotest-jest",
		"marilari88/neotest-vitest",
	},
	keys = {
		{ "<leader>rn", "<cmd>lua require('neotest').run.run()<cr>", desc = "Run nearest test" },
		{ "<leader>rf", "<cmd>lua require('neotest').run.run(vim.fn.expand('%'))<cr>", desc = "Run file tests" },
		{ "<leader>rs", "<cmd>lua require('neotest').run.run(vim.fn.getcwd())<cr>", desc = "Run test suite" },
		{ "<leader>rl", "<cmd>lua require('neotest').run.run_last()<cr>", desc = "Run last test" },
		{ "<leader>rd", "<cmd>lua require('neotest').run.run({strategy = 'dap'})<cr>", desc = "Debug test" },
		{ "<leader>rt", "<cmd>lua require('neotest').summary.toggle()<cr>", desc = "Toggle summary" },
		{ "<leader>ro", "<cmd>lua require('neotest').output.open({enter = true})<cr>", desc = "Show output" },
		{ "<leader>rO", "<cmd>lua require('neotest').output_panel.toggle()<cr>", desc = "Toggle output panel" },
		{ "<leader>rS", "<cmd>lua require('neotest').run.stop()<cr>", desc = "Stop test" },
	},
	config = function()
		local neotest = require("neotest")

		neotest.setup({
			adapters = {
				require("neotest-phpunit")({
					phpunit_cmd = function()
						return "vendor/bin/phpunit"
					end,
				}),
				require("neotest-jest")({
					jestCommand = "npm test --",
				}),
				require("neotest-vitest"),
			},
			icons = {
				passed = "✓",
				running = "●",
				failed = "✖",
				skipped = "○",
				unknown = "?",
			},
			floating = {
				border = "rounded",
				max_height = 0.6,
				max_width = 0.6,
			},
			summary = {
				mappings = {
					expand = { "<CR>", "<2-LeftMouse>" },
					expand_all = "e",
					jumpto = "i",
					output = "o",
					run = "r",
					stop = "u",
				},
			},
		})
	end,
}
