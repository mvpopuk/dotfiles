local g = vim.g
vim.o.termguicolors = true

require 'nvim-tree'.setup {
  diagnostics = {
    enable = false,
    icons = { hint = "", info = "", warning = "", error = "" }
  },
  filters = { dotfiles = false },
  disable_netrw = true,
  hijack_netrw = true,
  -- auto_close = true,
  open_on_tab = false,
  hijack_cursor = true,
  update_cwd = true,
  update_focused_file = { enable = true, update_cwd = false },
  view = {
    -- allow_resize = true,
    side = "right",
    width = 30
  },
  renderer = {
    indent_markers = { enable = true },
    root_folder_modifier = table.concat { ":t:gs?$?/..", string.rep(" ", 1003), "?:gs?^??" },
    highlight_git = true,
    highlight_opened_files = "none",
    add_trailing = false,
    icons = {
      webdev_colors = true,
      git_placement = "before",
      padding = " ",
      symlink_arrow = " ➛ ",
      show = { file = true, folder = true, folder_arrow = true, git = false },
      glyphs = {
        default = "",
        symlink = "",
        folder = {
          arrow_closed = "",
          arrow_open = "",
          default = "",
          open = "",
          empty = "",
          empty_open = "",
          symlink = "",
          symlink_open = ""
        },
        git = {
          unstaged = "✗",
          staged = "✓",
          unmerged = "",
          renamed = "➜",
          untracked = "★",
          deleted = "",
          ignored = "◌"
        }
      }
    }
  },

  git = { enable = true, ignore = true, timeout = 500 }
}
vim.g.nvim_tree_icons = {
  default = "",
  symlink = "",
  git = {
    deleted = "",
    ignored = "◌",
    renamed = "➜",
    staged = "✓",
    unmerged = "",
    unstaged = "✗",
    untracked = "★"
  },
  folder = {
    -- disable indent_markers option to get arrows working or if you want both arrows and indent then just add the arrow icons in front            ofthe default and opened folders below!
    -- arrow_open = "",
    -- arrow_closed = "",
    default = "",
    empty = "",
    empty_open = "",
    open = "",
    symlink = "",
    symlink_open = ""
  }
}

vim.api.nvim_exec([[
function! DisableST()
  return " "
endfunction
au BufEnter NvimTree_1 setlocal statusline=%!DisableST()
]], false)

vim.cmd('hi NvimTreeStatusLineNC guibg=nvim_treebg guifg=nvim_treebg')
