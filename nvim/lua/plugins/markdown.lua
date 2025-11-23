return {
	"ellisonleao/glow.nvim",
	ft = { "markdown" },
	cmd = "Glow",
	keys = {
		{
			"<leader>mp",
			function()
				local current_file = vim.fn.expand("%:p")

				-- Check if preview window already exists and close it
				for _, win in ipairs(vim.api.nvim_list_wins()) do
					local buf = vim.api.nvim_win_get_buf(win)
					local buf_name = vim.api.nvim_buf_get_name(buf)
					if buf_name:match("Markdown Preview") then
						-- Only close if there's more than one window
						if #vim.api.nvim_list_wins() > 1 then
							vim.api.nvim_win_close(win, true)
						else
							vim.api.nvim_buf_delete(buf, { force = true })
						end
						return
					end
				end

				-- Open vertical split
				vim.cmd("vsplit")
				local preview_win = vim.api.nvim_get_current_win()

				-- Create terminal buffer with glow
				local glow_cmd = "glow -s dark -w 80 " .. vim.fn.shellescape(current_file)
				vim.fn.termopen(glow_cmd, {
					on_exit = function()
						-- Cleanup
					end,
				})

				-- Set buffer options
				vim.api.nvim_buf_set_name(0, "Markdown Preview: " .. vim.fn.fnamemodify(current_file, ":t"))
				vim.cmd("setlocal nomodified")
				vim.cmd("setlocal nomodifiable")
				vim.cmd("setlocal nonumber")
				vim.cmd("setlocal norelativenumber")

				-- Set up auto-refresh on save
				local source_buf = vim.fn.bufnr(current_file)
				vim.api.nvim_create_autocmd("BufWritePost", {
					buffer = source_buf,
					callback = function()
						if vim.api.nvim_win_is_valid(preview_win) then
							local old_buf = vim.api.nvim_win_get_buf(preview_win)

							-- Create new terminal buffer
							local new_buf = vim.api.nvim_create_buf(false, true)
							vim.api.nvim_win_set_buf(preview_win, new_buf)

							-- Run glow in the new buffer
							vim.api.nvim_buf_call(new_buf, function()
								vim.fn.termopen(glow_cmd)
								vim.api.nvim_buf_set_name(0, "Markdown Preview: " .. vim.fn.fnamemodify(current_file, ":t"))
								vim.cmd("setlocal nomodified")
								vim.cmd("setlocal nomodifiable")
								vim.cmd("setlocal nonumber")
								vim.cmd("setlocal norelativenumber")
							end)

							-- Delete old buffer
							if vim.api.nvim_buf_is_valid(old_buf) then
								vim.api.nvim_buf_delete(old_buf, { force = true })
							end
						end
					end,
				})

				-- Switch back to source window
				vim.cmd("wincmd p")
			end,
			desc = "Markdown Preview (Vertical Split)",
		},
	},
	opts = {
		border = "rounded",
		style = "dark",
	},
}
