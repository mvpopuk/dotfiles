" -------------------------------- General Settings ----------------------------- "                                  
set laststatus=3
set mouse=a
set autowriteall
set completeopt=menu,menuone,noselect
set colorcolumn=120
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
set autoindent
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
packadd! matchit
"" Highlight on yank
augroup highlight_on_yank
  autocmd!
  autocmd TextYankPost * lua vim.highlight.on_yank {
    \ higroup = "IncSearch",
    \ timeout = 150,
    \ on_macro = true
    \ }
augroup END Remember last cursor position
augroup neovim_last_position
  autocmd!
  autocmd BufReadPost *
    \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
    \ |   exe "normal! g`\""
    \ | endif
augroup END" Automatically resize vim's windows when resizing vim
augroup equalize_windows_on_resize
  autocmd!
  autocmd VimResized * exec "normal \<c-w>="
augroup END
" Persistent undo
let &undodir=sourcery#system_vimfiles_path('undo')
set undofile
