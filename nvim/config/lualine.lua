-- -- Iceberg Colors
-- local colors = {
--   red = '#f44747',
--   grey = '#f5f5f5',
--   gray = '#8e99ae',
--   black = '#1e2132',
--   blk = '#000000',
--   white = '#ffffff',
--   transparent = '#161821',
--   green = '#b1bb80',
--   yellow = '#f2b589',
--   cyan = '#8ab8c2',
--   blue = '#84a0c6',
--   magenta = '#df89dd'
-- }

-- local iceberg = {
--   normal = {
--     a = { fg = colors.blk, bg = colors.cyan },
--     b = { fg = colors.gray,  bg = colors.black },
--     c = { fg = colors.light_grey, bg = colors.transparent },
--     z = { fg = colors.gray, bg = colors.black },
--   },
--   insert = { 
--         a = { fg = colors.blk, bg = colors.yellow },
--         z = { fg = colors.gray, bg = colors.black }
--     },
--   visual = { 
--         a = { fg = colors.blk, bg = colors.green },
--         z = { fg = colors.gray, bg = colors.black }
--     },
--   replace = { 
--         a = { fg = colors.blk, bg = colors.green },
--         z = { fg = colors.gray, bg = colors.black }
--     },
-- }

-- -- Dracula Colors
-- -- local colors = {
-- --   white = '#feffff',
-- --   red = '#ff6d67',
-- --   grey = '#abb2bf',
-- --   gray = '#55596d',
-- --   black = '#323844',
-- --   transparent = '#272a37',
-- --   green = '#59f68d',
-- --   yellow = '#f3f89d',
-- --   blue = '#61afef',
-- --   magenta = '#ff92d0',
-- --   cyan = '#99ecfd',
-- --   orange = '#ff8700',
-- -- }

-- -- local dracula = {
-- --   normal = {
-- --     a = { fg = colors.grey, bg = colors.black },
-- --     b = { fg = colors.grey,  bg = colors.black },
-- --     c = { fg = colors.gray, bg = colors.transparent },
-- --     z = { fg = colors.grey, bg = colors.black },
-- --   },
-- --   insert = { a = { fg = colors.transparent, bg = colors.green } },
-- --   visual = { a = { fg = colors.transparent, bg = colors.yellow } },
-- --   replace = { a = { fg = colors.transparent, bg = colors.red } },
-- -- }

-- -- Inspired Github Colors
-- -- local colors = {
-- --   red = '#ca1243',
-- --   grey = '#f5f5f5',
-- --   light_grey = '#979BAC',
-- --   black = '#383a42',
-- --   white = '#ffffff',
-- --   transparent = '#ffffff',
-- --   light_green = '#83a598',
-- --   orange = '#fe8019',
-- --   green = '#8ec07c',
-- --   yellow = '#f8eec7',
-- --   cyan = '#489FC1',
-- -- }

-- -- local inspired_github = {
-- --   normal = {
-- --     a = { fg = colors.white, bg = colors.red },
-- --     b = { fg = colors.black,  bg = colors.grey },
-- --     c = { fg = colors.light_grey, bg = colors.white },
-- --     z = { fg = colors.white, bg = colors.black },
-- --   },
-- --   insert = { a = { fg = colors.black, bg = colors.yellow } },
-- --   visual = { a = { fg = colors.white, bg = colors.cyan } },
-- --   replace = { a = { fg = colors.black, bg = colors.green } },
-- -- }

-- local empty = require('lualine.component'):extend()
-- function empty:draw(default_highlight)
--   self.status = ''
--   self.applied_separator = ''
--   self:apply_highlights(default_highlight)
--   self:apply_section_separators()
--   return self.status
-- end

-- -- Put proper separators and gaps between components in sections
-- local function process_sections(sections)
--   for name, section in pairs(sections) do
--     local left = name:sub(9, 10) < 'x'
--     for pos = 1, name ~= 'lualine_z' and #section or #section - 1 do
--       table.insert(section, pos * 2, { empty, color = { fg = colors.white, bg = '#001728' } })
--     end
--     for id, comp in ipairs(section) do
--       if type(comp) ~= 'table' then
--         comp = { comp }
--         section[id] = comp
--       end
--       comp.separator = left and { right = '' } or { left = '' }
--       -- comp.separator = left and { right = '' } or { left = '' }
--     end
--   end
--   return sections
-- end

-- local function search_result()
--   if vim.v.hlsearch == 0 then
--     return ''
--   end
--   local last_search = vim.fn.getreg('/')
--   if not last_search or last_search == '' then
--     return ''
--   end
--   local searchcount = vim.fn.searchcount { maxcount = 9999 }
--   return last_search .. '(' .. searchcount.current .. '/' .. searchcount.total .. ')'
-- end

-- local function modified()
--   if vim.bo.modified then
--     return '+'
--   elseif vim.bo.modifiable == false or vim.bo.readonly == true then
--     return '-'
--   end
--   return ''
-- end

-- -- vim.g.gitblame_display_virtual_text = 1
-- -- local git_blame = require('gitblame')

-- require('lualine').setup {
--     options = {
--     theme = 'night-owl',
--     component_separators = '',
--     globalstatus = true,
--   },
--   disabled_filetypes = { 'goyo' },
--   -- process_sections
--   sections = process_sections {
--     lualine_a = { 'mode' },
--     lualine_b = { 
--       { 'filename', file_status = false, path = 4 },
--       -- { 'aerial' },
--       { 
--         'diagnostics',
--         source = { 'intelephense', 'quick-lint-js' },
--         sections = { 'error' },
--         diagnostics_color = { error = { bg = colors.red, fg = colors.white } },
--       },
--       {
--         'diagnostics',
--         source = { 'intelephense', 'quick-lint-js' },
--         sections = { 'warn' },
--         diagnostics_color = { warn = { bg = colors.orange, fg = colors.white } },
--       },
--       {
--         'diagnostics',
--         source = { 'intelephense', 'tsserver' },
--         sections = { 'hint' },
--         diagnostics_color = { warn = { bg = colors.orange, fg = colors.white } },
--       },
--       { modified, color = { fg = colors.transparent, bg = colors.yellow } },
--     },
--     lualine_c = {},
--     lualine_x = {}, -- { git_blame.get_current_blame_text, cond = git_blame.is_blame_text_available  }
--     lualine_y = { search_result, },
--     lualine_z = { 'branch' },
--   },
--   inactive_sections = {
--     lualine_c = { '%f %y %m' },
--     lualine_x = {},
--   },
-- }

-- Eviline config for lualine
-- Author: shadmansaleh
-- Credit: glepnir
local lualine = require('lualine')

-- Color table for highlights
-- stylua: ignore
local colors = {
  bg       = None,
  fg       = '#45657b',
  yellow   = '#ffeb95',
  cyan     = '#21c7a8',
  darkblue = '#081633',
  green    = '#22da6e',
  orange   = '#FF8800',
  violet   = '#a9a1e1',
  magenta  = '#c792ea',
  blue     = '#9ddcfe',
  red      = '#ef5350',
}

local conditions = {
  buffer_not_empty = function()
    return vim.fn.empty(vim.fn.expand('%:t')) ~= 1
  end,
  hide_in_width = function()
    return vim.fn.winwidth(0) > 80
  end,
  check_git_workspace = function()
    local filepath = vim.fn.expand('%:p:h')
    local gitdir = vim.fn.finddir('.git', filepath .. ';')
    return gitdir and #gitdir > 0 and #gitdir < #filepath
  end,
}

-- Config
local config = {
  options = {
    -- Disable sections and component separators
    component_separators = '',
    section_separators = '',
    theme = {
      -- We are going to use lualine_c an lualine_x as left and
      -- right section. Both are highlighted by c theme .  So we
      -- are just setting default looks o statusline
      normal = { c = { fg = colors.fg, bg = colors.bg } },
      inactive = { c = { fg = colors.fg, bg = colors.bg } },
    },
  },
  sections = {
    -- these are to remove the defaults
    lualine_a = {},
    lualine_b = {},
    lualine_y = {},
    lualine_z = {},
    -- These will be filled later
    lualine_c = {},
    lualine_x = {},
  },
  inactive_sections = {
    -- these are to remove the defaults
    lualine_a = {},
    lualine_b = {},
    lualine_y = {},
    lualine_z = {},
    lualine_c = {},
    lualine_x = {},
  },
}

-- Inserts a component in lualine_c at left section
local function ins_left(component)
  table.insert(config.sections.lualine_c, component)
end

-- Inserts a component in lualine_x at right section
local function ins_right(component)
  table.insert(config.sections.lualine_x, component)
end

ins_left {
  function()
    return ' '
  end,
  color = { fg = colors.bg }, -- Sets highlighting of component
  padding = { left = 0, right = 1 }, -- We don't need space before this
}

ins_left {
  -- mode component
  function()
    return ''
  end,
  color = function()
    -- auto change color according to neovims mode
    local mode_color = {
      n = colors.green,
      i = colors.violet,
      v = colors.yellow,
      [''] = colors.blue,
      V = colors.blue,
      c = colors.magenta,
      no = colors.red,
      s = colors.orange,
      S = colors.orange,
      [''] = colors.orange,
      ic = colors.yellow,
      R = colors.violet,
      Rv = colors.violet,
      cv = colors.red,
      ce = colors.red,
      r = colors.cyan,
      rm = colors.cyan,
      ['r?'] = colors.cyan,
      ['!'] = colors.red,
      t = colors.red,
    }
    return { fg = mode_color[vim.fn.mode()] }
  end,
  padding = { right = 1 },
}

-- ins_left {
--   -- filesize component
--   'filesize',
--   cond = conditions.buffer_not_empty,
-- }

ins_left {
  'filename',
  cond = conditions.buffer_not_empty,
  color = { fg = colors.magenta, gui = 'bold' },
}

ins_left { 'location' }

ins_left { 'progress', color = { fg = colors.fg, gui = 'bold' } }

ins_left {
  'diagnostics',
  sources = { 'nvim_diagnostic' },
  symbols = { error = ' ', warn = ' ', info = ' ' },
  diagnostics_color = {
    color_error = { fg = colors.red },
    color_warn = { fg = colors.yellow },
    color_info = { fg = colors.cyan },
  },
}

-- Insert mid section. You can make any number of sections in neovim :)
-- for lualine it's any number greater then 2
ins_left {
  function()
    return '%='
  end,
}

ins_left {
  -- Lsp server name .
  function()
    local msg = 'No Active Lsp'
    local buf_ft = vim.api.nvim_buf_get_option(0, 'filetype')
    local clients = vim.lsp.get_active_clients()
    if next(clients) == nil then
      return msg
    end
    for _, client in ipairs(clients) do
      local filetypes = client.config.filetypes
      if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
        return client.name
      end
    end
    return msg
  end,
  icon = 'LSP:',
  color = { gui = 'bold' },
}

-- Add components to right sections
-- ins_right {
--   'o:encoding', -- option component same as &encoding in viml
--   fmt = string.upper, -- I'm not sure why it's upper case either ;)
--   cond = conditions.hide_in_width,
--   color = { fg = colors.green, gui = 'bold' },
-- }

-- ins_right {
--   'fileformat',
--   fmt = string.upper,
--   icons_enabled = false, -- I think icons are cool but Eviline doesn't have them. sigh
--   color = { fg = colors.green, gui = 'bold' },
-- }

ins_right {
  'branch',
  icon = '',
  color = { fg = colors.violet, gui = 'bold' },
}

ins_right {
  'diff',
  -- Is it me or the symbol for modified us really weird
  symbols = { added = ' ', modified = '󰝤 ', removed = ' ' },
  diff_color = {
    added = { fg = colors.green },
    modified = { fg = colors.orange },
    removed = { fg = colors.red },
  },
  cond = conditions.hide_in_width,
}

-- ins_right {
--   function()
--     return '▊'
--   end,
--   color = { fg = colors.bg },
--   padding = { left = 1 },
-- }

-- Now don't forget to initialize lualine
lualine.setup(config)
