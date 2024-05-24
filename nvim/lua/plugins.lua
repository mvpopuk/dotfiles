return {
	{ "airblade/vim-rooter" },
	{
		"famiu/bufdelete.nvim",
		event = "VeryLazy",
		config = function()
			local keymap = vim.keymap.set
			local opts = { noremap = true, silent = true }
			-- keymap("n", "Q", "<cmd>Bdelete!<CR>", opts)
			keymap("n", "Q", ":lua require('bufdelete').bufdelete(0, false)<cr>", opts)
		end,
	},
	{ "windwp/nvim-ts-autotag", opts = {} },
	{
		"stevearc/dressing.nvim",
		dependencies = { "MunifTanjim/nui.nvim" },
		opts = {},
		config = function()
			require("dressing").setup()
		end,
	},
	{
		"dnlhc/glance.nvim",
		config = function()
			require("glance").setup()
		end,
		keys = {
			{ "gD", "<CMD>Glance definitions<CR>", desc = "Glance definitions" },
			{ "gR", "<CMD>Glance references<CR>", desc = "Glance references" },
			{ "gY", "<CMD>Glance type_definitions<CR>", desc = "Glance type_definitions" },
			{ "gM", "<CMD>Glance implementations<CR>", desc = "Glance implementations" },
		},
	},
	{
		"karb94/neoscroll.nvim",
		config = function()
			require("neoscroll").setup({
				stop_eof = true,
				easing_function = "sine",
				hide_cursor = true,
				-- respect_scrolloff = true,
				cursor_scrolls_alone = true,
				-- performance_mode = false
			})
		end,
	},
	{
		"windwp/nvim-spectre",
		event = "BufRead",
	},
	{
		"kylechui/nvim-surround",
		version = "*", -- Use for stability; omit to use `main` branch for the latest features
		event = "VeryLazy",
		config = function()
			require("nvim-surround").setup({
				-- Configuration here, or leave empty to use defaults
				-- https://github.com/kylechui/nvim-surround
			})
		end,
	},
	{ "folke/neodev.nvim", opts = {} },
	{
		"echasnovski/mini.pairs",
		event = "VeryLazy",
		config = function(_, opts)
			require("mini.pairs").setup(opts)
		end,
	},
	{
		"ggandor/flit.nvim",
		keys = function()
			---@type LazyKeys[]
			local ret = {}
			for _, key in ipairs({ "f", "F", "t", "T" }) do
				ret[#ret + 1] = { key, mode = { "n", "x", "o" }, desc = key }
			end
			return ret
		end,
		opts = { labeled_modes = "nx" },
	},
	{
		"ggandor/leap.nvim",
		keys = {
			{ "s", mode = { "n", "x", "o" }, desc = "Leap forward to" },
			{ "S", mode = { "n", "x", "o" }, desc = "Leap backward to" },
			{ "gs", mode = { "n", "x", "o" }, desc = "Leap from windows" },
		},
		config = function(_, opts)
			local leap = require("leap")
			for k, v in pairs(opts) do
				leap.opts[k] = v
			end
			leap.add_default_mappings(true)
			vim.keymap.del({ "x", "o" }, "x")
			vim.keymap.del({ "x", "o" }, "X")
		end,
	},
	{
		"LunarVim/breadcrumbs.nvim",
		config = function()
			require("breadcrumbs").setup()
		end,
	},
	{
		"SmiteshP/nvim-navic",
		config = function()
			local icons = require("config.icons")
			require("nvim-navic").setup({
				highlight = true,
				lsp = {
					auto_attach = true,
					preference = { "typescript-tools" },
				},
				click = true,
				separator = " " .. icons.ui.ChevronRight .. " ",
				depth_limit = 0,
				depth_limit_indicator = "..",
				icons = {
					File = " ",
					Module = " ",
					Namespace = " ",
					Package = " ",
					Class = " ",
					Method = " ",
					Property = " ",
					Field = " ",
					Constructor = " ",
					Enum = " ",
					Interface = " ",
					Function = " ",
					Variable = " ",
					Constant = " ",
					String = " ",
					Number = " ",
					Boolean = " ",
					Array = " ",
					Object = " ",
					Key = " ",
					Null = " ",
					EnumMember = " ",
					Struct = " ",
					Event = " ",
					Operator = " ",
					TypeParameter = " ",
				},
			})
		end,
	},
	{
		"utilyre/barbecue.nvim",
		name = "barbecue",
		version = "*",
		opts = {
			-- configurations go here
		},
		config = function()
			require("barbecue").setup({
				create_autocmd = true, -- prevent barbecue from updating itself automatically
				theme = "tokyonight",
			})

			vim.api.nvim_create_autocmd({
				"WinScrolled", -- or WinResized on NVIM-v0.9 and higher
				"BufWinEnter",
				"CursorHold",
				"InsertLeave",
				-- "BufModifiedSet"	-- include this if you have set `show_modified` to `true`
			}, {
				group = vim.api.nvim_create_augroup("barbecue.updater", {}),
				callback = function()
					require("barbecue.ui").update()
				end,
			})
		end,
	},

	{
		"folke/persistence.nvim",
		event = "BufReadPre", -- this will only start session saving when an actual file was opened
		opts = {
			-- add any custom options here
		},
	},
	{ "voldikss/vim-floaterm" },
	{
		"JoosepAlviste/nvim-ts-context-commentstring",
		lazy = true,
		opts = {},
		config = function()
			require("nvim-treesitter.configs").setup({
				enable_autocmd = false,
			})
		end,
	},
	{ "tpope/vim-commentary" },
	{
		"echasnovski/mini.comment",
		event = "VeryLazy",
		opts = {},
		config = function()
			require("mini.comment").setup({
				options = {
					custom_commentstring = function()
						return require("ts_context_commentstring").calculate_commentstring() or vim.bo.commentstring
					end,
				},
			})
		end,
	},
}
