" ------------------------------ Poimandres Theme Overrides --------------------------- "
" function! PoimandresOverrides() abort
"     highlight Normal guibg=None guifg=None
"     highlight NonText guibg=None guifg=None
"     highlight SignColumn guibg=None guifg=None
"     highlight EndOfBuffer guifg=#1a1e29
"     " highlight Cursor guifg=white guibg=#00e8c6
"     " highlight iCursor guifg=white guibg=steelblue
"     " highlight LineNr guibg=None guifg=#33344A
"     " highlight CursorLineNr guibg=None 
"     highlight WinSeparator guibg=None guifg=None
"     highlight VertSplit guibg=None guifg=None
"     " highlight GitGutterAdd guibg=NONE guifg=#b4be82
"     " highlight GitGutterChange guibg=NONE guifg=#89b8c2
"     " highlight GitGutterChangeDelete guibg=NONE guifg=#89b8c2
"     " highlight GitGutterDelete guibg=NONE guifg=#e27878
"     " " highlight DiagnosticSignError guibg=NONE guifg=#e27878
"     " " highlight DiagnosticSignWarn guibg=NONE guifg=#e27878
"     " " highlight DiagnosticSignHint guibg=NONE
"     " " highlight IblIndent guifg=#000000 gui=nocombine 
"     " " " highlight IndentBlanklineContextChar guifg=#585B76 gui=nocombine
"     highlight FloatermBorder guibg=NONE guifg=#33344A
"     " highlight FloatBorder guibg=None guifg=#B5BD89
"     highlight SignifySignAdd guibg=none guifg=#00e8c6
"     highlight SignifySignChange guibg=none guifg=#fffabb
"     highlight SignifySignDelete guibg=none guifg=#fcc5e9
"     " " highlight BufferLineSeparator guibg=None guifg=#161821
"     " highlight DiagnosticError guibg=None
"     " highlight DiagnosticWarning guibg=None
"     " highlight DiagnosticInformation guibg=None
"     " highlight DiagnosticHint guibg=None
"     " highlight TroubleSignOther guibg=None guifg=green
"     " highlight TroubleFoldIcon guifg=None
"     " highlight TroubleCount guibg=None
"     highlight TelescopeBorder guifg=#33344A
"     highlight TelescopePromptBorder guifg=#33344A
"     highlight TelescopeResultsBorder guifg=#33344A
"     " highlight FPerson guifg=#4c5375 guibg=#1E2132
"     " highlight Pmenu guibg=#161821
    
"     " highlight CmpPmenu guifg=#8ab8c2
"     " highlight CmpPmenuBorder guifg=#33344A

"      " gray
"     " highlight! CmpItemAbbrDeprecated guibg=NONE gui=strikethrough guifg=#808080
"     " blue
"     " highlight! CmpItemAbbrMatch guibg=NONE guifg=#569CD6
"     " highlight! CmpItemAbbrMatchFuzzy guibg=NONE guifg=#569CD6
"     " light blue
"     " highlight! CmpItemKindVariable guibg=NONE guifg=#9CDCFE
"     " highlight! CmpItemKindInterface guibg=NONE guifg=#9CDCFE
"     " highlight! CmpItemKindText guibg=NONE guifg=#9CDCFE
"     " pink
"     " highlight! CmpItemKindFunction guibg=NONE guifg=#C586C0
"     " highlight! CmpItemKindMethod guibg=NONE guifg=#C586C0
"     " front
"     " highlight! CmpItemKindKeyword guibg=NONE guifg=#D4D4D4
"     " highlight! CmpItemKindProperty guibg=NONE guifg=#D4D4D4
"     " highlight! CmpItemKindUnit guibg=NONE guifg=#D4D4D4
" endfunction

" augroup Colors
"     autocmd!
"     autocmd ColorScheme poimandres call PoimandresOverrides()
" augroup END

" ------------------------------ Iceberg Theme Overrides --------------------------- "
" function! IcebergOverrides() abort
"     highlight Normal guibg=None guifg=None
"     highlight NonText guibg=None guifg=None
"     highlight SignColumn guibg=None guifg=None
"     highlight EndOfBuffer guifg=#161821
"     highlight LineNr guibg=None guifg=#33344A
"     highlight CursorLineNr guibg=None guifg=#BABBC7
"     highlight VertSplit gui=NONE guibg=None guifg=#262639
"     highlight GitGutterAdd guibg=NONE guifg=#b4be82
"     highlight GitGutterChange guibg=NONE guifg=#89b8c2
"     highlight GitGutterChangeDelete guibg=NONE guifg=#e27878
"     highlight GitGutterDelete guibg=NONE guifg=#e27878
"     highlight DiagnosticSignError guibg=NONE guifg=#e27878
"     highlight DiagnosticSignWarn guibg=NONE guifg=#e27878
"     highlight DiagnosticSignHint guibg=NONE
"     highlight IblIndent guifg=#000000 gui=nocombine 
"     " highlight IndentBlanklineContextChar guifg=#585B76 gui=nocombine
"     highlight FloatermBorder guibg=NONE guifg=#33344A
"     " highlight FloatBorder guibg=None guifg=#B5BD89
"     highlight SignifySignAdd guibg=none guifg=#b4be82
"     highlight SignifySignChange guibg=none guifg=#f2b589
"     highlight SignifySignDelete guibg=none guifg=red
"     highlight BufferLineSeparator guibg=None guifg=#161821
"     highlight TroubleSignOther guibg=None guifg=green
"     highlight TroubleFoldIcon guifg=None
"     highlight TroubleCount guibg=None
"     highlight TelescopeBorder guifg=#33344A
"     highlight TelescopePromptBorder guifg=#33344A
"     highlight TelescopeResultsBorder guifg=#33344A
"     highlight FPerson guifg=#4c5375 guibg=#1E2132
"     highlight Pmenu guibg=#161821
    
"     highlight CmpPmenu guifg=#8ab8c2
"     highlight CmpPmenuBorder guifg=#33344A

"      " gray
"     " highlight! CmpItemAbbrDeprecated guibg=NONE gui=strikethrough guifg=#808080
"     " blue
"     " highlight! CmpItemAbbrMatch guibg=NONE guifg=#569CD6
"     " highlight! CmpItemAbbrMatchFuzzy guibg=NONE guifg=#569CD6
"     " light blue
"     " highlight! CmpItemKindVariable guibg=NONE guifg=#9CDCFE
"     " highlight! CmpItemKindInterface guibg=NONE guifg=#9CDCFE
"     " highlight! CmpItemKindText guibg=NONE guifg=#9CDCFE
"     " pink
"     " highlight! CmpItemKindFunction guibg=NONE guifg=#C586C0
"     " highlight! CmpItemKindMethod guibg=NONE guifg=#C586C0
"     " front
"     highlight! CmpItemKindKeyword guibg=NONE guifg=#D4D4D4
"     highlight! CmpItemKindProperty guibg=NONE guifg=#D4D4D4
"     highlight! CmpItemKindUnit guibg=NONE guifg=#D4D4D4
" endfunction

" augroup Colors
"     autocmd!
"     autocmd ColorScheme iceberg call IcebergOverrides()
" augroup END

" ------------------------------ Dracula Theme Overrides --------------------------- "
" augroup DraculaOverrides
"     autocmd!
"     autocmd ColorScheme dracula highlight! Normal ctermbg=NONE ctermfg=NONE guibg=None guifg=None
"     autocmd ColorScheme dracula highlight! NonText guibg=None guifg=None
"     autocmd ColorScheme dracula highlight! SignColumn guibg=None guifg=None
"     autocmd ColorScheme dracula highlight! EndOfBuffer guifg=#282a36
"     autocmd ColorScheme dracula highlight! LineNr guibg=None guifg=#55596d
"     autocmd ColorScheme dracula highlight! VertSplit gui=NONE guibg=None guifg=#3b3e51
"     autocmd ColorScheme dracula highlight! DraculaWinSeparator guibg=None guifg=#3b3e51
"     autocmd ColorScheme dracula highlight! IndentBlanklineChar guifg=#3b3e51 gui=nocombine
"     autocmd ColorScheme dracula highlight! IndentBlanklineContextChar guifg=#55596d gui=nocombine
"     autocmd ColorScheme dracula highlight! FloatermBorder guibg=NONE guifg=#3b3e51
"     autocmd ColorScheme dracula highlight! SignifySignAdd guibg=none guifg=green
"     autocmd ColorScheme dracula highlight! SignifySignChange guibg=none guifg=yellow
"     autocmd ColorScheme dracula highlight! SignifySignDelete guibg=none guifg=red
"     autocmd ColorScheme dracula highlight! TroubleSignOther guibg=None guifg=green
"     autocmd ColorScheme dracula highlight! TroubleFoldIcon guifg=None
"     autocmd ColorScheme dracula highlight! TroubleCount guibg=None
"     autocmd ColorScheme dracula highlight! TelescopeBorder guifg=#3b3e51
"     autocmd ColorScheme dracula highlight! TelescopePromptBorder guifg=#3b3e51
"     autocmd ColorScheme dracula highlight! TelescopeResultsBorder guifg=#3b3e51
"     autocmd ColorScheme dracula highlight! CmpPmenu guibg=#000
"     autocmd ColorScheme dracula highlight! CmpPmenuBorder guibg=#000
"     autocmd ColorScheme dracula runtime after/plugin/dracula.vim
"     autocmd ColorScheme dracula syntax enable
" augroup end

" ------------------------------ One Dark Theme Overrides --------------------------- "
" function! OneDarkProOverrides() abort
"      highlight Normal guibg=None guifg=None
"      highlight NonText guibg=None guifg=None
"      highlight SignColumn guibg=None guifg=None
"      highlight EndOfBuffer guifg=#282c34
"      highlight LineNr guibg=None guifg=#3f4648
"      highlight CursorLineNr guifg=#7d828d
"      highlight VertSplit gui=NONE guibg=None guifg=#3f4648
"      highlight IndentBlanklineChar guifg=#313640 gui=nocombine
"      highlight IndentBlanklineContextChar guifg=#3f4648 gui=nocombine
"      highlight FloatermBorder guibg=NONE guifg=#3f4648
"      highlight SignifySignAdd guibg=none guifg=green
"      highlight SignifySignChange guibg=none guifg=yellow
"      highlight SignifySignDelete guibg=none guifg=red
"      highlight TroubleSignOther guibg=None guifg=green
"      highlight TroubleFoldIcon guifg=None
"      highlight TroubleCount guibg=None
"      highlight TelescopeBorder guifg=#3f4648
"      highlight TelescopePromptBorder guifg=#3f4648
"      highlight TelescopeResultsBorder guifg=#3f4648
"      highlight FPerson guifg=#4b5456 guibg=#2e323a

"      highlight CmpPmenu guifg=#3f4648
"      highlight CmpPmenuBorder guifg=#3f4648
" endfunction

"  augroup Colors
"      autocmd!
"      autocmd ColorScheme onedark call OneDarkProOverrides()
"  augroup END

" ------------------------------ Nigh-Owl Theme Overrides --------------------------- "
function! NightOwlOverrides() abort
    highlight Normal guibg=None guifg=None
    highlight NonText guibg=None guifg=None
    highlight SignColumn guibg=None guifg=None
    highlight EndOfBuffer guifg=#001728
    " highlight LineNr guibg=None guifg=#33344A
    " highlight CursorLineNr guibg=None guifg=#BABBC7
    set fillchars=vert:\ 
    highlight VertSplit ctermbg=NONE ctermfg=15 " Any value for ctermfg other than NONE works
    " highlight WinSeparator guibg=None guifg=guifg=#141414
    highlight GitGutterAdd guibg=NONE guifg=#22da6e
    highlight GitGutterChange guibg=NONE guifg=#21c7a8
    highlight GitGutterChangeDelete guibg=NONE guifg=#ef5350
    highlight GitGutterDelete guibg=NONE guifg=#ef5350
    highlight DiagnosticSignError guibg=NONE guifg=#e27878
    highlight DiagnosticSignWarn guibg=NONE guifg=#e27878
    highlight DiagnosticSignHint guibg=NONE
    highlight IblIndent guifg=#000000 gui=nocombine 
    " highlight IndentBlanklineContextChar guifg=#585B76 gui=nocombine
    highlight FloatermBorder guibg=NONE guifg=#44657b
    highlight FloatBorder guibg=None guifg=#44657b
    highlight SignifySignAdd guibg=none guifg=#22da6e
    highlight SignifySignChange guibg=none guifg=#ffeb95
    highlight SignifySignDelete guibg=none guifg=#ef5350
    highlight BufferLineSeparator guibg=None guifg=#161821
    highlight TroubleSignOther guibg=None guifg=green
    highlight TroubleFoldIcon guifg=None
    highlight TroubleCount guibg=None
    highlight TelescopeBorder guifg=#44657b
    highlight TelescopePromptBorder guifg=#44657b
    highlight TelescopeResultsBorder guifg=#44657b
    highlight FPerson guifg=#4c5375 guibg=#1E2132
    highlight Pmenu guibg=#161821
    
    highlight CmpPmenu guifg=#8ab8c2
    highlight CmpPmenuBorder guifg=#44657b

    highlight statusline  guifg=#001625 guibg=#001625
    highlight statuslinenc guifg=#001625 guibg=#001625 

    highlight NvimTreeIndentMarker guifg=#4b6479
    highlight NvimTreeEndOfBuffer guifg=#011627
    highlight NvimTreeFolderArrowOpen guifg=#4b6479
    highlight NvimTreeFolderArrowClosed guifg=#4b6479
    highlight NvimTreeNormal guifg=#5f7e97
    highlight NvimTreeCursorLine guibg=None

     " gray
    " highlight! CmpItemAbbrDeprecated guibg=NONE gui=strikethrough guifg=#808080
    " blue
    " highlight! CmpItemAbbrMatch guibg=NONE guifg=#569CD6
    " highlight! CmpItemAbbrMatchFuzzy guibg=NONE guifg=#569CD6
    " light blue
    " highlight! CmpItemKindVariable guibg=NONE guifg=#9CDCFE
    " highlight! CmpItemKindInterface guibg=NONE guifg=#9CDCFE
    " highlight! CmpItemKindText guibg=NONE guifg=#9CDCFE
    " pink
    " highlight! CmpItemKindFunction guibg=NONE guifg=#C586C0
    " highlight! CmpItemKindMethod guibg=NONE guifg=#C586C0
    " front
    highlight! CmpItemKindKeyword guibg=NONE guifg=#D4D4D4
    highlight! CmpItemKindProperty guibg=NONE guifg=#D4D4D4
    highlight! CmpItemKindUnit guibg=NONE guifg=#D4D4D4
endfunction

augroup Colors
    autocmd!
    autocmd ColorScheme night-owl call NightOwlOverrides()
augroup END
" -------------------------------------- Color Scheme --------------------------------- "

" lua << EOF 

" -- Lua:
" -- For dark theme (neovim's default)
" vim.o.background = 'dark'

" local c = require('vscode.colors').get_colors()
" require('vscode').setup({
"     -- Alternatively set style in setup
"     -- style = 'light'

"     -- Enable transparent background
"     transparent = true,

"     -- Enable italic comment
"     italic_comments = true,

"     -- Disable nvim-tree background color
"     disable_nvimtree_bg = true,

"     -- Override colors (see ./lua/vscode/colors.lua)
"     color_overrides = {
"         vscLineNumber = '#FFFFFF',
"     },

"     -- Override highlight groups (see ./lua/vscode/theme.lua)
"     group_overrides = {
"         -- this supports the same val table as vim.api.nvim_set_hl
"         -- use colors from this colorscheme by requiring vscode.colors!
"         Cursor = { fg=c.vscDarkBlue, bg=c.vscLightGreen, bold=true },
"         LineNr = { fg="#46647b" },
"         SignifySignAdd = { fg=c.vscGreen },
"         SignifySignChange = { fg=c.vscYellow }, 
"         SignifySignDelete = { fg=c.vscRed }, 
"         EndOfBuffer = { fg="#1f2839" },
"         TelescopeBorder = { fg="#46647b" },
"         TelescopePromptBorder = { fg="#46647b" },
"         TelescopeResultsBorder = { fg="#46647b" }, 
"         FloatBorder = { fg="#46647b" },
"         WinSeparator = { bg=None, fg="#1f2839" },
"         statusline = { bg=None },
"         NvimTreeIndentMarker = { fg="#46647b" },
"         NvimTreeEndOfBuffer = { fg="#1f2839" },
"         NvimTreeFolderArrowOpen = { fg="#46647b" },
"         NvimTreeFolderArrowClosed = { fg="#46647b" },
"         NvimTreeCursorLine = { bg="#2a344c" },
"     }
" })
" require('vscode').load()

" EOF 

" lua << EOF
" require('poimandres').setup {
"   bold_vert_split = false, 
"   dim_nc_background = false,
"   disable_background = true,
"   disable_float_background = true,
"   disable_italics = false, 
" }
" EOF

" lua << EOF
" require("onedarkpro").setup({
"   plugins = { -- Override which plugins highlight groups are loaded
"       polygot = true,
"       treesitter = true,
"       -- NOTE: Other plugins have been omitted for brevity
"   },
"   styles = {
"       strings = "italic", -- Style that is applied to strings
"       comments = "italic", -- Style that is applied to comments
"       keywords = "italic", -- Style that is applied to keywords
"       functions = "italic", -- Style that is applied to functions
"       variables = "italic" -- Style that is applied to variables
"   },
"   options = {
"       bold = false, -- Use the themes opinionated bold styles?
"       italic = true, -- Use the themes opinionated italic styles?
"       underline = true, -- Use the themes opinionated underline styles?
"       undercurl = true, -- Use the themes opinionated undercurl styles?
"       cursorline = true, -- Use cursorline highlighting?
"       transparency = true, -- Use a transparent background?
"       terminal_colors = false, -- Use the theme's colors for Neovim's :terminal?
"       window_unfocussed_color = false, -- When the window is out of focus, change the normal background?
"   }
" })
" EOF

colorscheme night-owl

