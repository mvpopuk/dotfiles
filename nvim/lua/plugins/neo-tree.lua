-- TODO

-- references:
-- https://github.com/nvim-neo-tree/neo-tree.nvim
-- https://github.com/nvim-neo-tree/neo-tree.nvim/wiki/Recipes
return {
	"nvim-neo-tree/neo-tree.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	event = "VeryLazy",
	keys = {
		{ "<leader>e", function()
			require("neo-tree.command").execute({ toggle = true, position = "float", dir = vim.fn.getcwd() })
		end, silent = true, desc = "Float File Explorer" },
		{ "<leader><tab>", function()
			require("neo-tree.command").execute({ toggle = true, position = "right", dir = vim.fn.getcwd() })
		end, silent = true, desc = "Right File Explorer" },
		{ "<leader>ec", ":Neotree dir=.<CR>", silent = true, desc = "Neo-tree Current Directory" },
		{ "<leader>eh", ":Neotree dir=~<CR>", silent = true, desc = "Neo-tree Home Directory" },
		{ "<leader>er", ":Neotree reveal<CR>", silent = true, desc = "Neo-tree Reveal Current File" },
	},
	config = function()
		require("neo-tree").setup({
			source_selector = {
				winbar = true,
				statusline = false,
			},
			close_if_last_window = true,
			popup_border_style = "rounded",
			enable_git_status = true,
			enable_modified_markers = true,
			enable_diagnostics = true,
			sort_case_insensitive = true,
			default_component_configs = {
				indent = {
					with_markers = true,
					with_expanders = true,
				},
				modified = {
					symbol = " ",
					highlight = "NeoTreeModified",
				},
				icon = {
					folder_closed = "",
					folder_open = "",
					folder_empty = "",
					folder_empty_open = "",
				},
				git_status = {
					symbols = {
						-- Change type
						added = "",
						deleted = "",
						modified = "",
						renamed = "",
						-- Status type
						untracked = "",
						ignored = "",
						unstaged = "",
						staged = "",
						conflict = "",
					},
				},
			},
			window = {
				position = "float",
				width = 35,
			},
			filesystem = {
				use_libuv_file_watcher = true,
				follow_current_file = {
					enabled = true, -- This will find and focus the file in the active buffer every time
					leave_dirs_open = false, -- `false` closes auto expanded dirs, such as with `:Neotree reveal`
				},
				hijack_netrw_behavior = "open_current", -- netrw disabled, opening a directory opens neo-tree in whatever position is specified in window.position
				cwd_target = {
					sidebar = "tab", -- sidebar will show the cwd of the tab
					current = "window", -- current will show the cwd of the current window
				},
				filtered_items = {
					hide_dotfiles = false,
					hide_gitignored = false,
					hide_by_name = {
						"node_modules",
					},
					never_show = {
						".DS_Store",
						"thumbs.db",
					},
				},
			},
			event_handlers = {
				{
					event = "neo_tree_window_after_open",
					handler = function(args)
						if args.position == "left" or args.position == "right" then
							vim.cmd("wincmd =")
						end
					end,
				},
				{
					event = "neo_tree_window_after_close",
					handler = function(args)
						if args.position == "left" or args.position == "right" then
							vim.cmd("wincmd =")
						end
					end,
				},
			},
		})

		-- Auto-command to ensure Neo-tree respects current working directory
		vim.api.nvim_create_autocmd("VimEnter", {
			callback = function()
				-- Set the initial directory for neo-tree to current working directory
				if vim.fn.argc() == 0 then
					-- Only if no files were opened
					local cwd = vim.fn.getcwd()
					vim.g.neo_tree_last_cwd = cwd
				end
			end,
		})
	end,
}
