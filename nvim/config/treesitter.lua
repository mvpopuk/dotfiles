 require('nvim-treesitter.configs').setup {
  ensure_installed = {
         "yaml",
         "markdown",
         "comment",
         "css",
         "html",
         "javascript",
         "json",
         "lua",
         "php",
         "phpdoc",
         "regex",
         "scss",
         "vim",
         "vue",
     },
  highlight = {
    enable = false,
    disable = { "html", "bash" },
  },
  indent = {
    enable = true,
  },
}
