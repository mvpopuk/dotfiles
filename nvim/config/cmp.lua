local lspconfig = require('lspconfig')
local cmp_autopairs = require('nvim-autopairs.completion.cmp')
local cmp = require'cmp'

require('mason').setup {}

require('mason-lspconfig').setup {
  automatic_installation = true,
}

cmp.event:on( 'confirm_done', cmp_autopairs.on_confirm_done({  map_char = { tex = '' } }))

  local on_attach = function(_, bufnr)
    require('cmp').on_attach()
    --- In lsp attach function
   
    if client.server_capabilities.documentSymbolProvider then
        navic.attach(client, bufnr)
    end

    local map = nvim_buf_set_keymap,
    map(0, "n", "gr", "<cmd>Lspsaga rename<cr>", {silent = true, noremap = true})
    map(0, "n", "gx", "<cmd>Lspsaga code_action<cr>", {silent = true, noremap = true})
    map(0, "x", "gx", ":<c-u>Lspsaga range_code_action<cr>", {silent = true, noremap = true})
    map(0, "n", "K",  "<cmd>Lspsaga hover_doc<cr>", {silent = true, noremap = true})
    map(0, "n", "go", "<cmd>Lspsaga show_line_diagnostics<cr>", {silent = true, noremap = true})
    map(0, "n", "gj", "<cmd>Lspsaga diagnostic_jump_next<cr>", {silent = true, noremap = true})
    map(0, "n", "gk", "<cmd>Lspsaga diagnostic_jump_prev<cr>", {silent = true, noremap = true})
    map(0, "n", "<C-u>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<cr>")
    map(0, "n", "<C-d>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<cr>")
  end
  
  local navic = require("nvim-navic")
  local servers = {'intelephense', 'tailwindcss', 'html' }
  for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup {
      on_attach = on_attach
    }
  end

local lsp_symbols = {
    Text = "   (Text) ",
    Method = "   (Method)",
    Function = "   (Function)",
    Constructor = "   (Constructor)",
    Field = " ﴲ  (Field)",
    Variable = "[] (Variable)",
    Class = "   (Class)",
    Interface = " ﰮ  (Interface)",
    Module = "   (Module)",
    Property = " 襁 (Property)",
    Unit = "   (Unit)",
    Value = "   (Value)",
    Enum = " 練 (Enum)",
    Keyword = "   (Keyword)",
    Snippet = "   (Snippet)",
    Color = "   (Color)",
    File = "   (File)",
    Reference = "   (Reference)",
    Folder = "   (Folder)",
    EnumMember = "   (EnumMember)",
    Constant = " ﲀ  (Constant)",
    Struct = " ﳤ  (Struct)",
    Event = "   (Event)",
    Operator = "   (Operator)",
    TypeParameter = "   (TypeParameter)",
},

require('lspconfig').intelephense.setup{}

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require('lspconfig').html.setup{
    capabilities = capabilities,
    filetypes = { 'html', 'blade', 'antlers' },
}

require('lspconfig').tailwindcss.setup{}
require('lspconfig').tsserver.setup{}
require('lspconfig').prismals.setup{}
require('lspconfig').tsserver.setup{}
require('lspconfig').volar.setup{}
require('lspconfig').stylelint.setup{}

cmp.setup({
    experimental = {
        ghost_text = true,
    },
    snippet = {
        expand = function(args)
        require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
    end,
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-d>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.close(),
        ['<CR>'] = cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Insert,
            select = true,
        }),
    }),
    formatting = {
        format = function(entry, item)
            item.kind = lsp_symbols[item.kind]
            item.menu = ({
                buffer = "[Buffer]",
                nvim_lsp = "[LSP]",
                luasnip = "[Snippet]",
                neorg = "[Neorg]",
            })["intelephens"]
            return item
        end,
    },
    window = {
        completion = {
            border = {'┌', '─', '┐', '│', '┘', '─', '└', '│'},
            winhighlight = 'Normal:CmpPmenu,FloatBorder:CmpPmenuBorder,CursorLine:PmenuSel,Search:None',
        },
        documentation = {
            border = {'┌', '─', '┐', '│', '┘', '─', '└', '│'},
            winhighlight = 'FloatBorder:CmpPmenuBorder',
        },
    },

    min_length = 1;
    preselect = true;
    
    sources = cmp.config.sources({
        { name = 'nvim_lsp', priority = 1000 },
        { name = 'intelephense', priority = 1000 },
        { name = 'path', priority = 750 },
        { name = 'buffer', priority = 500 }, 
    })
})

  -- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline('/', {
    mapping = cmp.mapping.preset.cmdline({
        ["<Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            elseif luasnip.expand_or_jumpable() then
                luasnip.expand_or_jump()
            elseif has_words_before() then
                cmp.complete()
            else
                fallback()
            end
        end, { "i", "s" }),
    }),
    
    sources = {
      { name = 'buffer' }
    }

})

  -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline({
        ["<Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            elseif luasnip.expand_or_jumpable() then
                luasnip.expand_or_jump()
            elseif has_words_before() then
                cmp.complete()
            else
                fallback()
            end
        end, { "i", "s" }),
    }),
    
    sources = cmp.config.sources({
        { name = 'path' },
        { name = 'cmdline' },
    })
})
  -- Setup lspconfig.
  local capabilities = require('cmp_nvim_lsp').default_capabilities() -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
    require('lspconfig')['intelephense'].setup {
    capabilities = capabilities
  }

-- update diagnostics icons
    local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
    for type, icon in pairs(signs) do
        local hl = "DiagnosticSign" .. type
        vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
      end                                  

