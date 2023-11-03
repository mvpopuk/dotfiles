require('bufferline').setup {
  options = {
    indicator = ' ',
    numbers = "none",
    diagnostics = "nvim-cmp",
    diagnostics_update_in_insert = true,
    diagnostics_indicator = function(count, level, diagnostics_dict, context)
    local icon = level:match("error") and " " or " "
    return " " .. icon .. count
    end,
    show_buffer_close_icons = true,
    show_close_icon = false,
    offsets = {
      {
        filetype = 'nerdtree',
        text = '  File Explorer',
        highlight = 'Directory',
        text_align = 'left',
      },
    },

    modified_icon = ' ',
    separator_style = 'thin',

    custom_areas = {
      left = function()
        return {
          { text = '    ', fg = '#128A27',  },
        }
      end,
    },
  },
    highlights = {
        background = {
            bg = { attribute = 'bg', highlight = 'EndOfBuffer' },
            fg = { attribute = 'fg', highlight = 'LineNr' },
        },
        fill = {
            bg = { attribute = 'bg', highlight = 'EndOfBuffer' },
            fg = { attribute = 'fg', highlight = 'EndOfBuffer' },
        },
        separator = {
            fg = { attribute = 'fg', highlight = 'EndOfBuffer' },
            bg = { attribute = 'bg', highlight = 'EndOfBuffer' },
        },
        close_button = {
            bg = { attribute = 'bg', highlight = 'EndOfBuffer' },
            fg = { attribute = 'fg', highlight = 'LineNr' },
        },
        close_button_visible = {
            bg = { attribute = 'bg', highlight = 'EndOfBuffer' },
            fg = { attribute = 'fg', highlight = 'LineNr' },
        },
        close_button_selected = {
            bg = { attribute = 'bg', highlight = 'EndOfBuffer' },
            fg = { attribute = 'fg', highlight = 'LineNr' },
        },
        buffer_visible = {
            bg = { attribute = 'bg', highlight = 'EndOfBuffer' },
            fg = { attribute = 'fg', highlight = 'LineNr' },
        },
        modified = {
            bg = { attribute = 'bg', highlight = 'EndOfBuffer' },
        },
        modified_visible = {
            bg = { attribute = 'bg', highlight = 'EndOfBuffer' },
        },
    }
}
