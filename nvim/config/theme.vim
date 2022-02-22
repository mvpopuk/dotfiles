function! CarbonOverrides() abort
    highlight Normal guibg=None guifg=None
    highlight EndOfBuffer guifg=#1B253B
    highlight CursorLine guibg=#1B253B
    highlight CursorLineNr guibg=#1B253B guifg=#73a7a7
    highlight VertSplit gui=NONE guibg=None guifg=#10737B
    highlight IndentBlanklineChar guifg=#1B253B gui=nocombine
    highlight IndentBlanklineContextChar guifg=#243353 gui=nocombine
    highlight FloatermBorder guibg=None guifg=#10737B
    highlight BufferLineSeparator guifg=#172030
endfunction

augroup Colors
    autocmd!
    autocmd ColorScheme carbon call CarbonOverrides()
augroup END

colorscheme carbon
