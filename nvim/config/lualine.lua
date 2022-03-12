-- Inspired Github Colors
-- local colors = {
--   red = '#ca1243',
--   grey = '#f5f5f5',
--   light_grey = '#979BAC',
--   black = '#383a42',
--   white = '#ffffff',
--   light_green = '#83a598',
--   orange = '#fe8019',
--   green = '#8ec07c',
--   yellow = '#f8eec7',
--   cyan = '#489FC1',
-- }

-- Carbon Colors
local colors = {
  red = '#db6e89',
  grey = '#f5f5f5',
  light_grey = '#979BAC',
  black = '#243354',
  transparent = '#172030',
  white = '#ffffff',
  light_green = '#83a598',
  orange = '#ffae8f',
  green = '#73a7a7',
  yellow = '#ffae8f',
  cyan = '#03858e',
}

local inspired_github = {
  normal = {
    a = { fg = colors.white, bg = colors.red },
    b = { fg = colors.light_grey,  bg = colors.grey },
    c = { fg = colors.black, bg = colors.white },
    z = { fg = colors.white, bg = colors.black },
  },
  insert = { a = { fg = colors.black, bg = colors.green } },
  visual = { a = { fg = colors.white, bg = colors.cyan } },
  replace = { a = { fg = colors.black, bg = colors.green } },
}

local carbon = {
  normal = {
    a = { fg = colors.transparent, bg = colors.green, gui = 'bold' },
    b = { fg = colors.white,  bg = colors.black, },
    c = { fg = colors.black, bg = colors.transparent, },
    z = { fg = colors.white, bg = colors.black, },
  },
  insert = { a = { fg = colors.transparent, bg = colors.orange, gui = 'bold' } },
  visual = { a = { fg = colors.transparent, bg = colors.red, gui = 'bold' } },
  replace = { a = { fg = colors.black, bg = colors.green, gui = 'bold' } },
}

local empty = require('lualine.component'):extend()
function empty:draw(default_highlight)
  self.status = ''
  self.applied_separator = ''
  self:apply_highlights(default_highlight)
  self:apply_section_separators()
  return self.status
end

-- Put proper separators and gaps between components in sections
local function process_sections(sections)
  for name, section in pairs(sections) do
    local left = name:sub(9, 10) < 'x'
    for pos = 1, name ~= 'lualine_z' and #section or #section - 1 do
      table.insert(section, pos * 2, { empty, color = { fg = colors.white, bg = colors.transparent } })
    end
    for id, comp in ipairs(section) do
      if type(comp) ~= 'table' then
        comp = { comp }
        section[id] = comp
      end
      comp.separator = left and { right = '' } or { left = '' }
    end
  end
  return sections
end

local function search_result()
  if vim.v.hlsearch == 0 then
    return ''
  end
  local last_search = vim.fn.getreg('/')
  if not last_search or last_search == '' then
    return ''
  end
  local searchcount = vim.fn.searchcount { maxcount = 9999 }
  return last_search .. '(' .. searchcount.current .. '/' .. searchcount.total .. ')'
end

local function modified()
  if vim.bo.modified then
    return '+'
  elseif vim.bo.modifiable == false or vim.bo.readonly == true then
    return '-'
  end
  return ''
end

require('lualine').setup {
  options = {
    theme = carbon,
    component_separators = '',
    section_separators = { left = '', right = ''},
  },
  -- process_sections
  sections = process_sections {
    lualine_a = { 'mode' },
    lualine_b = {
      'branch',  
      { 'filename', file_status = false, path = 3 },
      {
        'diagnostics',
        source = { 'intelephense' },
        sections = { 'error' },
        diagnostics_color = { error = { bg = colors.red, fg = colors.white } },
      },
      {
        'diagnostics',
        source = { 'intelephense' },
        sections = { 'warn' },
        diagnostics_color = { warn = { bg = colors.orange, fg = colors.white } },
      },
      {
        'diagnostics',
        source = { 'intelephense' },
        sections = { 'hint' },
        diagnostics_color = { warn = { bg = colors.orange, fg = colors.white } },
      },
      { modified, color = { bg = colors.yellow } },
    },
    lualine_c = {},
    lualine_x = {},
    lualine_y = { search_result, 'filetype' },
    lualine_z = { '%l:%c', '%p%%/%L' },
  },
  inactive_sections = {
    lualine_c = { '%f %y %m' },
    lualine_x = {},
  },
}
