" Source plugins
call plug#begin()
  source ~/.dotfiles/nvim/plugins.vim
call plug#end()

" Initialize sourcery
call sourcery#init()

" -------------------------------- General Settings ----------------------------- "                                  

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

" ------------------------------------- Color Scheme ------------------------------ "                                  

colorscheme carbon

" ------------------------------ Iceberg Theme Overrides --------------------------- "                                  

" function! IcebergOverrides() abort
" highlight Normal guibg=None guifg=None
" highlight NonText guibg=None guifg=None
" highlight SignColumn guibg=None guifg=None
" highlight EndOfBuffer guifg=#111219
" highlight LineNr guibg=None guifg=#33344A
" highlight CursorLineNr guibg=#1E2132 guifg=#BABBC7
" highlight VertSplit gui=NONE guibg=None guifg=#9EAA6B
" highlight GitGutterAdd guibg=NONE guifg=#b4be82
" highlight GitGutterChange guibg=NONE guifg=#89b8c2
" highlight GitGutterChangeDelete guibg=NONE guifg=#89b8c2
" highlight GitGutterDelete guibg=NONE guifg=#e27878
" highlight DiagnosticSignError guibg=NONE guifg=#e27878
" highlight DiagnosticSignWarn guibg=NONE guifg=#e27878
" highlight IndentBlanklineChar guifg=#1C1F2D gui=nocombine
" highlight IndentBlanklineContextChar guifg=#25293C gui=nocombine
" highlight FloatermBorder guibg=NONE guifg=#9EAA6B
" highlight SignifySignAdd guibg=none guifg=green
" highlight SignifySignChange guibg=none guifg=yellow
" highlight SignifySignDelete guibg=none guifg=red
" endfunction

" augroup Colors
" autocmd!
" autocmd ColorScheme iceberg call IcebergOverrides()
" augroup END

