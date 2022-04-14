filetype plugin on
let g:pencil#wrapModeDefault = 'soft'   
let g:pencil#autoformat = 1
let g:pencil#textwidth = 74

augroup pencil
  autocmd!
  autocmd FileType markdown,mkd,md call pencil#init({'wrap': 'hard'})
                            \ | call lexical#init()
                            \ | call litecorrect#init()
                            \ | call textobj#quote#init()
                            \ | call textobj#sentence#init()
augroup END
