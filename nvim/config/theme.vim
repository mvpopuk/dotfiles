" ------------------------------ Iceberg Theme Overrides --------------------------- "

" function! IcebergOverrides() abort
"     highlight Normal guibg=None guifg=None
"     highlight NonText guibg=None guifg=None
"     highlight SignColumn guibg=None guifg=None
"     highlight EndOfBuffer guifg=#161821
"     highlight LineNr guibg=None guifg=#33344A
"     highlight CursorLineNr guibg=#1E2132 guifg=#BABBC7
"     highlight VertSplit gui=NONE guibg=None guifg=#262639
"     highlight GitGutterAdd guibg=NONE guifg=#b4be82
"     highlight GitGutterChange guibg=NONE guifg=#89b8c2
"     highlight GitGutterChangeDelete guibg=NONE guifg=#89b8c2
"     highlight GitGutterDelete guibg=NONE guifg=#e27878
"     highlight DiagnosticSignError guibg=NONE guifg=#e27878
"     highlight DiagnosticSignWarn guibg=NONE guifg=#e27878
"     highlight DiagnosticSignHint guibg=NONE
"     highlight IndentBlanklineChar guifg=#1C1F2D gui=nocombine
"     highlight IndentBlanklineContextChar guifg=#25293C gui=nocombine
"     highlight FloatermBorder guibg=NONE guifg=#9EAA6B
"     highlight SignifySignAdd guibg=none guifg=green
"     highlight SignifySignChange guibg=none guifg=yellow
"     highlight SignifySignDelete guibg=none guifg=red
"     highlight BufferLineSeparator guibg=None guifg=red
"     highlight TroubleSignOther guibg=None guifg=green
"     highlight TroubleFoldIcon guifg=None
"     highlight TroubleCount guibg=None
"     highlight TelescopeBorder guifg=#33344A
"     highlight TelescopePromptBorder guifg=#33344A
"     highlight TelescopeResultsBorder guifg=#33344A
"     highlight FPerson guifg=#4c5375 guibg=#1E2132
" endfunction

" augroup Colors
"     autocmd!
"     autocmd ColorScheme iceberg call IcebergOverrides()
" augroup END

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
"  endfunction

"  augroup Colors
"      autocmd!
"      autocmd ColorScheme onedarkpro call OneDarkProOverrides()
"  augroup END

" ------------------------------ Dracula Theme Overrides --------------------------- "

function! DraculaOverrides() abort
     highlight Normal guibg=None guifg=None
     highlight NonText guibg=None guifg=None
     highlight SignColumn guibg=None guifg=None
     highlight EndOfBuffer guifg=#282a36
     highlight LineNr guibg=None guifg=#55596d
     " highlight CursorLineNr guifg=#7d828d
     highlight VertSplit gui=NONE guibg=None guifg=#3b3e51
     highlight IndentBlanklineChar guifg=#3b3e51 gui=nocombine
     highlight IndentBlanklineContextChar guifg=#55596d gui=nocombine
     highlight FloatermBorder guibg=NONE guifg=#3b3e51
     highlight SignifySignAdd guibg=none guifg=green
     highlight SignifySignChange guibg=none guifg=yellow
     highlight SignifySignDelete guibg=none guifg=red
     highlight TroubleSignOther guibg=None guifg=green
     highlight TroubleFoldIcon guifg=None
     highlight TroubleCount guibg=None
     highlight TelescopeBorder guifg=#3b3e51
     highlight TelescopePromptBorder guifg=#3b3e51
     highlight TelescopeResultsBorder guifg=#3b3e51
 endfunction

 augroup Colors
     autocmd!
     autocmd ColorScheme dracula call DraculaOverrides()
 augroup END

 " -------------------------------------- One Dark Pro --------------------------------- "

" lua << EOF
" require("onedarkpro").setup({
"   plugins = { -- Override which plugins highlight groups are loaded
"       native_lsp = true,
"       polygot = true,
"       treesitter = false,
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
"       undercurl = false, -- Use the themes opinionated undercurl styles?
"       cursorline = true, -- Use cursorline highlighting?
"       transparency = false, -- Use a transparent background?
"       terminal_colors = false, -- Use the theme's colors for Neovim's :terminal?
"       window_unfocussed_color = false, -- When the window is out of focus, change the normal background?
"   }
" })
" EOF

" -------------------------------------- Color Scheme --------------------------------- "

syntax on
colorscheme dracula
