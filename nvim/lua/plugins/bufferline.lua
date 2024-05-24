return {
	{
		"akinsho/bufferline.nvim",
		version = "*",
		dependencies = "nvim-tree/nvim-web-devicons",
		config = function()
			require("bufferline").setup({
				options = {
					-- numbers = "",
					mappings = true,
					close_command = "bdelete! %d",
					right_mouse_command = "bdelete! %d",
					left_mouse_command = "buffer %d",
					middle_mouse_command = nil,
					indicator_icon = " ",
					buffer_close_icon = "⨉",
					modified_icon = "●",
					close_icon = "⨉",
					left_trunc_marker = "",
					right_trunc_marker = "",
					max_name_length = 18,
					max_prefix_length = 15,
					tab_size = 18,
					diagnostics = "nvim_lsp",
					diagnostics_update_in_insert = true,
					diagnostics_indicator = function(count, level, diagnostics_dict, context)
						local icon = level:match("error") and " " or " "
						return " " .. icon .. count
					end,
					offsets = {
						{
							filetype = "neo-tree",
							text = "  File Explorer",
							text_align = "left",
						},
					},
					show_buffer_icons = true,
					show_buffer_close_icons = true,
					show_close_icon = false,
					show_tab_indicators = true,
					persist_buffer_sort = true,
					separator_style = "blank",
					-- custom_areas = {
					-- 	left = function()
					-- 		return {
					-- 			{ text = "    ", guifg = "#18bd9d", guibg = "#1e222a" },
					-- 		}
					-- 	end,
					-- },
					enforce_regular_tabs = false,
					always_show_bufferline = true,
					sort_by = "extension",
					highlights = {
						background = {
							guibg = { attribute = "bg", highlight = "WinSeparator" },
						},
						close_button = {
							guibg = { attribute = "bg", highlight = "WinSeparator" },
						},
						separator = {
							guifg = { attribute = "fg", highlight = "WinSeparator" },
							guibg = { attribute = "bg", highlight = "WinSeparator" },
						},
						separator_selected = {
							guifg = { attribute = "fg", highlight = "WinSeparator" },
							guibg = { attribute = "bg", highlight = "WinSeparator" },
						},
						separator_visible = {
							guifg = { attribute = "fg", highlight = "WinSeparator" },
							guibg = { attribute = "bg", highlight = "WinSeparator" },
						},
						modified = {
							guifg = { attribute = "fg", highlight = "WinSeparator" },
						},
						modified_selected = {
							guifg = { attribute = "fg", highlight = "WinSeparator" },
						},
					},
				},
			})
		end,
	},
}
