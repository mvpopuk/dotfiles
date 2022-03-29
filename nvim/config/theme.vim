" ------------------------------ Iceberg Theme Overrides --------------------------- "

function! IcebergOverrides() abort
    highlight Normal guibg=None guifg=None
    highlight NonText guibg=None guifg=None
    highlight SignColumn guibg=None guifg=None
    highlight EndOfBuffer guifg=#161821
    highlight LineNr guibg=None guifg=#33344A
    highlight CursorLineNr guibg=#1E2132 guifg=#BABBC7
    highlight VertSplit gui=NONE guibg=None guifg=#262639
    highlight GitGutterAdd guibg=NONE guifg=#b4be82
    highlight GitGutterChange guibg=NONE guifg=#89b8c2
    highlight GitGutterChangeDelete guibg=NONE guifg=#89b8c2
    highlight GitGutterDelete guibg=NONE guifg=#e27878
    highlight DiagnosticSignError guibg=NONE guifg=#e27878
    highlight DiagnosticSignWarn guibg=NONE guifg=#e27878
    highlight DiagnosticSignHint guibg=NONE
    highlight IndentBlanklineChar guifg=#1C1F2D gui=nocombine
    highlight IndentBlanklineContextChar guifg=#25293C gui=nocombine
    highlight FloatermBorder guibg=NONE guifg=#9EAA6B
    highlight SignifySignAdd guibg=none guifg=green
    highlight SignifySignChange guibg=none guifg=yellow
    highlight SignifySignDelete guibg=none guifg=red
    highlight BufferLineSeparator guifg=#161821
    highlight TroubleSignOther guibg=None guifg=green
    highlight TroubleFoldIcon guifg=None
    highlight TroubleCount guibg=None
    highlight TelescopeBorder guifg=#33344A
    highlight TelescopePromptBorder guifg=#33344A
    highlight TelescopeResultsBorder guifg=#33344A
    highlight FPerson guifg=#4c5375 guibg=#1E2132
endfunction

augroup Colors
    autocmd!
    autocmd ColorScheme iceberg call IcebergOverrides()
augroup END

" -------------------------------------- Color Scheme --------------------------------- "

colorscheme iceberg

