return {
	-- {
	-- 	"folke/tokyonight.nvim",
	-- 	config = function()
	-- 		require("tokyonight").setup({
	-- 			vim.cmd.colorscheme("tokyonight"),
	-- 			-- your configuration comes here
	-- 			-- or leave it empty to use the default settings
	-- 			style = "storm", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
	-- 			transparent = true, -- Enable this to disable setting the background color
	-- 			-- terminal_colors = true, -- Configure the colors used when opening a `:terminal` in [Neovim](https://github.com/neovim/neovim)
	-- 			styles = {
	-- 				-- Style to be applied to different syntax groups
	-- 				-- Value is any valid attr-list value for `:help nvim_set_hl`
	-- 				comments = { italic = true },
	-- 				keywords = { italic = true },
	-- 				functions = {},
	-- 				variables = {},
	-- 				-- Background styles. Can be "dark", "transparent" or "normal"
	-- 				sidebars = "transparent", -- style for sidebars, see below
	-- 				floats = "transparent", -- style for floating windows
	-- 			},
	-- 			-- sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
	-- 			hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
	-- 			dim_inactive = false, -- dims inactive windows
	-- 			lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold
	--
	-- 			--- You can override specific color groups to use other groups or a hex color
	-- 			--- function will be called with a ColorScheme table
	-- 			---@param colors ColorScheme
	-- 			on_colors = function(colors) end,
	--
	-- 			--- You can override specific highlights to use other groups or a hex color
	-- 			--- function will be called with a Highlights and ColorScheme table
	-- 			---@param highlights Highlights
	-- 			---@param colors ColorScheme
	-- 			on_highlights = function(highlights, colors) end,
	-- 		})
	--
	-- 		vim.cmd("highlight Normal guibg=None guifg=None")
	-- 		vim.cmd("highlight NonText guibg=None guifg=None")
	-- 		vim.cmd("highlight SignColumn guibg=None guifg=None")
	-- 		vim.cmd("highlight WinSeparator guibg=#24283b guifg=#24283b")
	--
	-- 		-- NeoTree
	-- 		vim.cmd("highlight NeoTreeIndentMarker guifg=#3c4260")
	-- 		-- vim.cmd("highlight NeoTreeGitIgnored guifg=#4b6479")
	-- 		vim.cmd("highlight NeoTreeDimText guifg=#24283b")
	-- 		-- vim.cmd("highlight NeoTreeStats guifg=#4b6479")
	-- 		-- vim.cmd("highlight NeoTreeStatsHeader guifg=#4b6479")
	-- 		vim.cmd("highlight NeoTreeWinSeparator guibg=None")
	-- 		vim.cmd("highlight NeoTreeTabInactive guifg=#565d89")
	-- 		vim.cmd("highlight NeoTreeTabSeparatorInactive guifg=#24283b")
	-- 		vim.cmd("highlight NeoTreeTabSeparatorActive guifg=#24283b")
	-- 		vim.cmd("highlight NeoTreeNormal guibg=None")
	-- 		vim.cmd("highlight NeoTreeNormalNC guibg=None")
	-- 		vim.cmd("highlight NeoTreeWinSeparator guibg=None guifg=None")
	-- 		vim.cmd("highlight NeoTreeVertSplit guibg=None guifg=None")
	-- 	end,
	-- },

	-- {
	-- 	"navarasu/onedark.nvim",
	-- 	config = function()
	-- 		require("onedark").setup()
	-- 		vim.cmd("colorscheme onedark")
	-- 	end,
	-- },
	-- {
	-- 	"sainnhe/gruvbox-material",
	-- 	enabled = true,
	-- 	priority = 1000,
	-- 	config = function()
	-- 		vim.g.gruvbox_material_transparent_background = 0
	-- 		vim.g.gruvbox_material_foreground = "mix"
	-- 		vim.g.gruvbox_material_background = "hard" -- soft, medium, hard
	-- 		vim.g.gruvbox_material_ui_contrast = "low" -- The contrast of line numbers, indent lines, etc.
	-- 		vim.g.gruvbox_material_float_style = "dim" -- Background of floating windows
	-- 		vim.g.gruvbox_material_statusline_style = "material"
	-- 		vim.g.gruvbox_material_cursor = "auto"
	-- 		vim.g.gruvbox_material_better_performance = 1
	-- 		vim.g.gruvbox_material_enable_italic = 1
	--
	-- 		vim.cmd.colorscheme("gruvbox-material")
	--
	-- 		-- vim.cmd("highlight Normal guibg=None guifg=None")
	-- 		-- vim.api.nvim_set_hl(0, "FloatBorder", { link = "Normal" })
	-- 		vim.cmd("highlight FloatBorder guibg=#1c2021 guifg=#938273")
	-- 	end,
	-- },
	{
		"oxfist/night-owl.nvim",
		lazy = false, -- make sure we load this during startup if it is your main colorscheme
		priority = 1000, -- make sure to load this before all the other start plugins
		name = "night-owl",
		config = function()
			require("night-owl").setup()
			vim.cmd.colorscheme("night-owl")

			vim.cmd("highlight Normal guibg=None guifg=None")
			vim.cmd("highlight NonText guibg=None guifg=None")
			vim.cmd("highlight SignColumn guibg=None guifg=None")
			vim.cmd("highlight EndOfBuffer guifg=#001728")
			-- vim.cmd('highlight VertSplit ctermbg=NONE ctermfg=15')
			vim.cmd("highlight VertSplit guibg=#011627 guifg=#011627")
			vim.cmd("highlight GitGutterAdd guibg=NONE guifg=#22da6e")
			vim.cmd("highlight GitGutterChange guibg=NONE guifg=#21c7a8")
			vim.cmd("highlight GitGutterChangeDelete guibg=NONE guifg=#ef5350")
			vim.cmd("highlight GitGutterDelete guibg=NONE guifg=#ef5350")
			vim.cmd("highlight DiagnosticSignError guibg=NONE guifg=#e27878")
			vim.cmd("highlight DiagnosticSignWarn guibg=NONE guifg=#e27878")
			vim.cmd("highlight DiagnosticSignHint guibg=NONE")
			vim.cmd("highlight IblIndent guifg=#4b6479 gui=nocombine")
			vim.cmd("highlight FloatermBorder guibg=NONE guifg=#44657b")
			vim.cmd("highlight FloatBorder guibg=None guifg=#44657b")
			vim.cmd("highlight SignifySignAdd guibg=none guifg=#22da6e")
			vim.cmd("highlight SignifySignChange guibg=none guifg=#ffeb95")
			vim.cmd("highlight SignifySignDelete guibg=none guifg=#ef5350")
			vim.cmd("highlight BufferLineSeparator guibg=None guifg=#161821")
			vim.cmd("highlight TroubleSignOther guibg=None guifg=green")
			vim.cmd("highlight TroubleFoldIcon guifg=None")
			vim.cmd("highlight TroubleCount guibg=None")
			vim.cmd("highlight TelescopeBorder guifg=#44657b")
			vim.cmd("highlight TelescopePromptBorder guifg=#44657b")
			vim.cmd("highlight TelescopeResultsBorder guifg=#44657b")
			vim.cmd("highlight FPerson guifg=#4c5375 guibg=#1E2132")
			vim.cmd("highlight Pmenu guibg=#161821")
			vim.cmd("highlight CmpPmenu guifg=#8ab8c2")
			vim.cmd("highlight CmpPmenuBorder guifg=#44657b")
			-- these statusline bg colors are different because thus way it hides the caret
			vim.cmd("highlight StatusLine guifg=#001625 guibg=#001625")
			vim.cmd("highlight StatusLineNC guifg=#001625 guibg=#001624")
			vim.cmd("highlight NvimTreeIndentMarker guifg=#4b6479")
			vim.cmd("highlight NvimTreeEndOfBuffer guifg=#011627")
			vim.cmd("highlight NvimTreeFolderArrowOpen guifg=#4b6479")
			vim.cmd("highlight NvimTreeFolderArrowClosed guifg=#4b6479")
			vim.cmd("highlight NvimTreeNormal guifg=#5f7e97")
			vim.cmd("highlight NvimTreeCursorLine guibg=None")
			-- vim.cmd('highlight WinSeparator guifg=#4b6479')
			vim.cmd("highlight WinSeparator guifg=#011627")

			vim.cmd("highlight NeoTreeIndentMarker guifg=#4b6479")
			vim.cmd("highlight NeoTreeGitIgnored guifg=#4b6479")
			vim.cmd("highlight NeoTreeDimText guifg=#4b6479")
			vim.cmd("highlight NeoTreeStats guifg=#4b6479")
			vim.cmd("highlight NeoTreeStatsHeader guifg=#4b6479")
			vim.cmd("highlight NeoTreeWinSeparator guibg=NONE ctermfg=15")
			vim.cmd("highlight NeoTreeTabInactive guifg=#4b6479")
			vim.cmd("highlight NeoTreeTabSeparatorInactive guifg=#011627")
			vim.cmd("highlight NeoTreeTabSeparatorActive guifg=#011627")
			vim.cmd("highlight NeoTreeNormal guibg=None guifg=None")
		end,
	},
}
