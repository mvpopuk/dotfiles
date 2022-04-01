let g:neoformat_try_node_exe = 1

" Enable alignment
let g:neoformat_basic_format_align = 1
" Enable tab to spaces conversion
let g:neoformat_basic_format_retab = 1
" Enable trimmming of trailing whitespace
let g:neoformat_basic_format_trim = 1
" Have Neoformat only msg when there is an error
let g:neoformat_only_msg_on_error = 1

let g:neoformat_enabled_php = ['phpcsfixer']
let g:neoformat_enabled_js = ['prettier']
let g:neoformat_enabled_html = ['prettier']
let g:neoformat_enabled_md = ['prettier']

augroup neoformat_on_save
    autocmd!
    autocmd BufWritePre *.php call RunNeoformat()
    autocmd BufWritePre *.js call RunNeoformat()
    autocmd BufWritePre *.html call RunNeoformat()
    autocmd BufWritePre *.md call RunNeoformat()
augroup END

" ------------------------------------------------------------------------------
" # Toggle Neoformat
" ------------------------------------------------------------------------------

let s:neoformat_enabled = 1

function! RunNeoformat()
    if s:neoformat_enabled
        Neoformat
    endif
endfunction

function! ToggleNeoformat()
    if s:neoformat_enabled
        let s:neoformat_enabled = 0
        echo 'Neoformat disabled'
    else
        let s:neoformat_enabled = 1
        echo 'Neoformat enabled'
    endif
endfunction
