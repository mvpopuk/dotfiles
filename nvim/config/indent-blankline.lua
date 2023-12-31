local highlight = {
    "Highlight",
}

local hooks = require "ibl.hooks"
-- create the highlight groups in the highlight setup hook, so they are reset
-- every time the colorscheme changes
hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
    vim.api.nvim_set_hl(0, "Highlight", { fg = "#263248" })
end)

require("ibl").setup { 
    scope = { 
       enabled = true,
       show_start = true,
       show_end = false,
       injected_languages = false,
       highlight = { "Function", "Label" },
       priority = 500,
    },
    indent = { highlight = highlight, char = "│" },
    exclude = {
        filetypes = {
            'lspinfo',
            'packer',
            'checkhealth',
            'help',
            'man',
            'gitcommit',
            'TelescopePrompt',
            'TelescopeResults',
            'lua',
            'vim',
            'startify',
            'goyo'
        },
    },
}
