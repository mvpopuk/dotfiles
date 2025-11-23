return {
	-- Modern test runner with better UI
	{
		"nvim-neotest/neotest",
		dependencies = {
			"nvim-neotest/nvim-nio",
			"nvim-lua/plenary.nvim",
			"antoinemadec/FixCursorHold.nvim",
			"nvim-treesitter/nvim-treesitter",
			-- Test adapters
			"nvim-neotest/neotest-phpunit",
			"nvim-neotest/neotest-jest",
			"marilari88/neotest-vitest",
		},
		keys = {
			{ "<leader>rn", "<cmd>lua require('neotest').run.run()<cr>", desc = "Run nearest test" },
			{ "<leader>rf", "<cmd>lua require('neotest').run.run(vim.fn.expand('%'))<cr>", desc = "Run file tests" },
			{
				"<leader>rs",
				"<cmd>lua require('neotest').run.run(vim.fn.getcwd())<cr>",
				desc = "Run all tests",
			},
			{ "<leader>rl", "<cmd>lua require('neotest').run.run_last()<cr>", desc = "Run last test" },
			{ "<leader>rd", "<cmd>lua require('neotest').run.run({strategy = 'dap'})<cr>", desc = "Debug nearest test" },
			{ "<leader>rt", "<cmd>lua require('neotest').summary.toggle()<cr>", desc = "Toggle test summary" },
			{ "<leader>ro", "<cmd>lua require('neotest').output.open({enter = true})<cr>", desc = "Show test output" },
			{
				"<leader>rO",
				"<cmd>lua require('neotest').output_panel.toggle()<cr>",
				desc = "Toggle output panel",
			},
			{ "<leader>rS", "<cmd>lua require('neotest').run.stop()<cr>", desc = "Stop test" },
		},
		config = function()
			require("neotest").setup({
				adapters = {
					require("neotest-phpunit")({
						phpunit_cmd = function()
							return "vendor/bin/phpunit"
						end,
					}),
					require("neotest-jest")({
						jestCommand = "npm test --",
						jestConfigFile = "jest.config.js",
						env = { CI = true },
						cwd = function()
							return vim.fn.getcwd()
						end,
					}),
					require("neotest-vitest"),
				},
				discovery = {
					enabled = true,
				},
				diagnostic = {
					enabled = true,
				},
				floating = {
					border = "rounded",
					max_height = 0.6,
					max_width = 0.6,
					options = {},
				},
				icons = {
					child_indent = "│",
					child_prefix = "├",
					collapsed = "─",
					expanded = "╮",
					failed = "✖",
					final_child_indent = " ",
					final_child_prefix = "╰",
					non_collapsible = "─",
					passed = "✓",
					running = "●",
					running_animated = { "/", "|", "\\", "-", "/", "|", "\\", "-" },
					skipped = "○",
					unknown = "?",
				},
				output = {
					enabled = true,
					open_on_run = "short",
				},
				quickfix = {
					enabled = true,
					open = false,
				},
				run = {
					enabled = true,
				},
				status = {
					enabled = true,
					signs = true,
					virtual_text = false,
				},
				strategies = {
					integrated = {
						height = 40,
						width = 120,
					},
				},
				summary = {
					enabled = true,
					animated = true,
					follow = true,
					mappings = {
						attach = "a",
						clear_marked = "M",
						clear_target = "T",
						debug = "d",
						debug_marked = "D",
						expand = { "<CR>", "<2-LeftMouse>" },
						expand_all = "e",
						jumpto = "i",
						mark = "m",
						next_failed = "J",
						output = "o",
						prev_failed = "K",
						run = "r",
						run_marked = "R",
						short = "O",
						stop = "u",
						target = "t",
					},
				},
			})
		end,
	},
}
