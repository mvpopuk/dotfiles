local actions = require("telescope.actions")
local trouble = require("trouble.providers.telescope")
local telescope = require("telescope")

require('telescope').load_extension('sourcery')

telescope.setup {
  defaults = {
    shorten_path = true,
    preview = false,
    mappings = {
      i = { ["<c-t>"] = trouble.open_with_trouble },
      n = { ["<c-t>"] = trouble.open_with_trouble },
    },
  },
pickers = {
    find_files = {
      theme = "dropdown",
    },
    buffers = {
      theme = "dropdown",
    },
    live_grep = {
      theme = "dropdown",
    },
  oldfiles = {
      theme = "dropdown",
    }
  },
}

