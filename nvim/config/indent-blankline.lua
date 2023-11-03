local highlight = { Number },
require("ibl").setup { 
    scope = { enabled = false },
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

