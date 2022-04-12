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

" ------------------------------ Dracula Theme Overrides --------------------------- "

colorscheme dracula
 augroup DraculaOverrides
        autocmd!
        autocmd ColorScheme dracula highlight! Normal ctermbg=NONE ctermfg=NONE guibg=None guifg=None
        " autocmd ColorScheme dracula highlight! NonText guibg=None guifg=None
        autocmd ColorScheme dracula highlight! SignColumn guibg=None guifg=None
        autocmd ColorScheme dracula highlight! EndOfBuffer guifg=#282a36
        autocmd ColorScheme dracula highlight! LineNr guibg=None guifg=#55596d
        " highlight CursorLineNr guifg=#7d828d
        autocmd ColorScheme dracula highlight! VertSplit gui=NONE guibg=None guifg=#3b3e51
        autocmd ColorScheme dracula highlight! DraculaWinSeparator guibg=None guifg=#3b3e51
        autocmd ColorScheme dracula highlight! IndentBlanklineChar guifg=#3b3e51 gui=nocombine
        autocmd ColorScheme dracula highlight! IndentBlanklineContextChar guifg=#55596d gui=nocombine
        autocmd ColorScheme dracula highlight! FloatermBorder guibg=NONE guifg=#3b3e51
        autocmd ColorScheme dracula highlight! SignifySignAdd guibg=none guifg=green
        autocmd ColorScheme dracula highlight! SignifySignChange guibg=none guifg=yellow
        autocmd ColorScheme dracula highlight! SignifySignDelete guibg=none guifg=red
        autocmd ColorScheme dracula highlight! TroubleSignOther guibg=None guifg=green
        autocmd ColorScheme dracula highlight! TroubleFoldIcon guifg=None
        autocmd ColorScheme dracula highlight! TroubleCount guibg=None
        autocmd ColorScheme dracula highlight! TelescopeBorder guifg=#3b3e51
        autocmd ColorScheme dracula highlight! TelescopePromptBorder guifg=#3b3e51
        autocmd ColorScheme dracula highlight! TelescopeResultsBorder guifg=#3b3e51
        autocmd ColorScheme dracula runtime after/plugin/dracula.vim
    augroup end

" -------------------------------------- Color Scheme --------------------------------- "
syntax on
colorscheme dracula
