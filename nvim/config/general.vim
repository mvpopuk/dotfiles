" -------------------------------- General Settings ----------------------------- "                                  
set listchars="tab"
set mouse=a
set autowriteall
set completeopt=menu,menuone,noselect
" set colorcolumn=120
set expandtab
set ignorecase
set matchpairs+=<:>
set nobackup
set noshowmode
set noswapfile
set nowrap
set number
set relativenumber
set shiftround
set showmatch
set smartcase
set smartindent
set splitbelow
set splitright
set termguicolors
set signcolumn=yes:1
set timeoutlen=300
set updatetime=300
set lazyredraw
set cursorline
set scrolloff=8
set encoding=utf8
set tabstop=4
set shiftwidth=4
set expandtab
set modifiable
set clipboard=unnamed
autocmd VimResized * :wincmd =

" " Dim inactive windows using 'colorcolumn' setting
" " This tends to slow down redrawing, but is very useful.
" " Based on https://groups.google.com/d/msg/vim_use/IJU-Vk-QLJE/xz4hjPjCRBUJ
" " XXX: this will only work with lines containing text (i.e. not '~')
" function! s:DimInactiveWindows()
"   for i in range(1, tabpagewinnr(tabpagenr(), '$'))
"     let l:range = ""
"     if i != winnr()
"       if &wrap
"         " HACK: when wrapping lines is enabled, we use the maximum number
"         " of columns getting highlighted. This might get calculated by
"         " looking for the longest visible line and using a multiple of
"         " winwidth().
"         let l:width=256 " max
"       else
"         let l:width=winwidth(i)
"       endif
"       let l:range = join(range(1, l:width), ',')
"     endif
"     call setwinvar(i, '&colorcolumn', l:range)
"   endfor
" endfunction
" augroup DimInactiveWindows
"   au!
"   au WinEnter * call s:DimInactiveWindows()
"   au WinEnter * set cursorline
"   au WinLeave * set nocursorline
" augroup END
