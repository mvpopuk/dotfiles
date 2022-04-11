local telescope = require("telescope")
local actions = require("telescope.actions")
local trouble = require("trouble.providers.telescope")
telescope.setup {
  defaults = {
    shorten_path = true,
    preview= false,
    file_ignore_patterns = { 'node_modules', 'vendor' },
    mappings = {
      i = { ["<c-t>"] = trouble.open_with_trouble },
      n = { ["<c-t>"] = trouble.open_with_trouble },
    },
  },
pickers = {
    find_files = {
      prompt_title = 'All Files',
      find_command = {'rg', '--files', '--no-ignore', '--hidden'},
      theme = 'dropdown',
    },
    git_files = {
      prompt_title = 'Git Files',
      theme = 'dropdown',
    },
    current_buffer_fuzzy_find = {
      prompt_title = 'Current buffer',
      sorting_strategy = 'descending'
    },
    oldfiles = {
        sort_lastused = true,
        prompt_title = "Recently Opened",
        theme = 'dropdown',
    },
    buffers = {
      sort_lastused = true,
      theme = 'dropdown',
      mappings = {
        i = {
          ["<c-d>"] = "delete_buffer",
        }
      }
    } 
},
}

require('telescope').load_extension('sourcery')
