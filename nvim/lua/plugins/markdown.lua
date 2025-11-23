return {
	"ellisonleao/glow.nvim",
	ft = { "markdown" },
	cmd = "Glow",
	keys = {
		{
			"<leader>mp",
			function()
				local current_file = vim.fn.expand("%:p")
				local preview_buf = vim.api.nvim_create_buf(false, true)

				-- Open vertical split
				vim.cmd("vsplit")
				local preview_win = vim.api.nvim_get_current_win()
				vim.api.nvim_win_set_buf(preview_win, preview_buf)

				-- Run glow and capture output
				local glow_output = vim.fn.systemlist("glow " .. vim.fn.shellescape(current_file))

				-- Set buffer content
				vim.api.nvim_buf_set_lines(preview_buf, 0, -1, false, glow_output)
				vim.api.nvim_buf_set_option(preview_buf, "modifiable", false)
				vim.api.nvim_buf_set_option(preview_buf, "buftype", "nofile")
				vim.api.nvim_buf_set_option(preview_buf, "bufhidden", "wipe")
				vim.api.nvim_buf_set_name(preview_buf, "Markdown Preview")

				-- Set up auto-refresh on save
				vim.api.nvim_create_autocmd("BufWritePost", {
					buffer = vim.fn.bufnr(current_file),
					callback = function()
						if vim.api.nvim_win_is_valid(preview_win) then
							local new_output = vim.fn.systemlist("glow " .. vim.fn.shellescape(current_file))
							vim.api.nvim_buf_set_option(preview_buf, "modifiable", true)
							vim.api.nvim_buf_set_lines(preview_buf, 0, -1, false, new_output)
							vim.api.nvim_buf_set_option(preview_buf, "modifiable", false)
						end
					end,
				})
			end,
			desc = "Markdown Preview (Vertical Split)",
		},
	},
	opts = {
		border = "rounded",
		style = "dark",
	},
}
