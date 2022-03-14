" ------------------------------ Iceberg Theme Overrides --------------------------- "                                  

" function! IcebergOverrides() abort
" highlight Normal guibg=None guifg=None
" highlight NonText guibg=None guifg=None
" highlight SignColumn guibg=None guifg=None
" highlight EndOfBuffer guifg=#161821
" highlight LineNr guibg=None guifg=#33344A
" highlight CursorLineNr guibg=#1E2132 guifg=#BABBC7
" highlight VertSplit gui=NONE guibg=None guifg=#262639
" highlight GitGutterAdd guibg=NONE guifg=#b4be82
" highlight GitGutterChange guibg=NONE guifg=#89b8c2
" highlight GitGutterChangeDelete guibg=NONE guifg=#89b8c2
" highlight GitGutterDelete guibg=NONE guifg=#e27878
" highlight DiagnosticSignError guibg=NONE guifg=#e27878
" highlight DiagnosticSignWarn guibg=NONE guifg=#e27878
" highlight DiagnosticSignHint guibg=NONE
" highlight IndentBlanklineChar guifg=#1C1F2D gui=nocombine
" highlight IndentBlanklineContextChar guifg=#25293C gui=nocombine
" highlight FloatermBorder guibg=NONE guifg=#9EAA6B
" highlight SignifySignAdd guibg=none guifg=green
" highlight SignifySignChange guibg=none guifg=yellow
" highlight SignifySignDelete guibg=none guifg=red
" highlight BufferLineSeparator guifg=#161821
" highlight TroubleSignOther guibg=None guifg=green
" highlight TroubleFoldIcon guifg=None
" highlight TroubleCount guibg=None
" endfunction

" augroup Colors
" autocmd!
" autocmd ColorScheme iceberg call IcebergOverrides()
" augroup END

" --------------------------------- Carbon Theme Overrides ---------------------------- "                                  

function! CarbonOverrides() abort
    highlight Normal guibg=None guifg=None
    highlight EndOfBuffer guifg=#1B253B
    highlight CursorLine guibg=#1B253B
    highlight CursorLineNr guibg=#1B253B guifg=#73a7a7
    highlight VertSplit gui=NONE guibg=None guifg=#243354
    highlight IndentBlanklineChar guifg=#1B253B gui=nocombine
    highlight IndentBlanklineContextChar guifg=#243353 gui=nocombine
    highlight FloatermBorder guibg=None guifg=#10737B
    highlight BufferLineSeparator guifg=#172030
endfunction

augroup Colors
    autocmd!
    autocmd ColorScheme carbon call CarbonOverrides()
augroup END

" -------------------------------------- Color Scheme --------------------------------- "                                  

colorscheme inspired-github

