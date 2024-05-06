return {
	"vim-test/vim-test",
	keys = {
		{ "<Leader>rs", ":w<CR>:TestSuite<CR>" },
		{ "<Leader>rf", ":w<CR>:TestFile<CR>" },
		{ "<Leader>rl", ":w<CR>:TestLast<CR>" },
		{ "<Leader>rn", ":w<CR>:TestNearest<CR>" },
		{ "<Leader>rv", ":w<CR>:TestVisit<CR>" },
	},
	init = function()
		vim.g.tslime = {
			session = "runner",
			window = "1",
			pane = "1",
		}

		vim.g["test#strategy"] = "floaterm"

		vim.g["test#php#phpunit#executable"] = "vendor/bin/phpunit"
	end,
}
