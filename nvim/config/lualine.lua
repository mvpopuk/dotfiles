local fg = '#C9CCCD'
local bg = '#082F3B'
local separator = '#'

local colors = {
    color0 = '#D0D6B5',
    color1 = '#172030',
    color2 = '#FFAE8F',
    color3 = '#B87EA2',
    color4 = '#1E2A3E',
    color5 = '#4B2234',
    color6 = '#73A7A7',
}

require('lualine').setup {
    options = {
    icons_enabled = true,
    theme = {
        normal = {
                a = { fg = colors.color1, bg = colors.color6, gui = 'bold', separator = colors.color0 },
                b = { fg = fg, bg = colors.color4 },
                c = { fg = fg, bg = colors.color4 },
                x = { fg = fg, bg = colors.color4 },
                y = { fg = fg, bg = colors.color4 },
                z = { fg = fg, bg = colors.color4 },
            },
            insert = {
                a = { fg = colors.color1, bg = colors.color0, gui = 'bold', separator = colors.color0 },
            },
            visual = {
                a = { fg = colors.color1, bg = colors.color2, gui = 'bold', separator = colors.color0 },
            },
            command = {
                a = { fg = colors.color1, bg = colors.color3, gui = 'bold', separator = colors.color0 },
            },
            replace = {
                a = { fg = colors.color2, bg = colors.color5, gui = 'bold', separator = colors.color0 },
            },
            inactive = {
                c = { fg = fg, bg = colors.color4 },
            }
        },
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {},
    always_divide_middle = true,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {},
    lualine_c = {
      {
      'filename', 
      path=1
      }
    },
    lualine_x = {'diagnostics'},
    lualine_y = {'diff', 'branch'},
    lualine_z = {''}
  },
}
