require'nvim-tree'.setup {
    hide_root_folder = true,
      view = {
        width = 35,
        side = "right",
        signcolumn = "yes",
    }, 
    diagnostics = {
    enable = true,
    show_on_dirs = true,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    },
  }
}


