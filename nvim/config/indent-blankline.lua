require("ibl").setup { 
    -- scope = { enabled = false },
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
            '',
        },
    },
}

