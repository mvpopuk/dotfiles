" ------------------------------------------------------------------------------
" # Plugin Definitions
" ------------------------------------------------------------------------------

    " Git Messenger
    Plug 'rhysd/git-messenger.vim'

    " Aerial Symbols
    Plug 'stevearc/aerial.nvim'

    " Inline git blame
    Plug 'f-person/git-blame.nvim'

    " Close buffer without closing window or split
    Plug 'moll/vim-bbye'

    " NERDTree 
    Plug 'preservim/nerdtree' 
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

    " Neoformat
    Plug 'sbdchd/neoformat'
    
    " LSP Signature
    Plug 'ray-x/lsp_signature.nvim'
    
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    Plug 'tpope/vim-unimpaired'
    
    " Vinegar
    Plug 'tpope/vim-vinegar'

    " Vim Surround
    Plug 'tpope/vim-surround'

    " Git Integrations
    Plug 'tpope/vim-fugitive'

    " Testing
    Plug 'vim-test/vim-test'

    "Vimux
    Plug 'preservim/vimux'

    " Vim Commentary
    Plug 'tpope/vim-commentary'

    " Tinkeray
    Plug 'jesseleite/vim-tinkeray'

    " Vim Sourcery
    Plug 'jesseleite/vim-sourcery'
    
    " Surround
    Plug 'tpope/vim-surround'

    " Emmet
    Plug 'mattn/emmet-vim'
 
    " Telescope
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'

    " Terminal
    Plug 'voldikss/vim-floaterm'

    " Git Diff
    Plug 'sindrets/diffview.nvim'
    Plug 'ThePrimeagen/git-worktree.nvim'

    " Refactoring Tools
    Plug 'phpactor/phpactor', {'for': 'php', 'do': 'composer install'}

    " Git Signify
    if has('nvim') || has('patch-8.0.902')
        Plug 'mhinz/vim-signify'
    else
        Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
    endif
    
    " Treesitter
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

    " Web Dev Icons
    Plug 'kyazdani42/nvim-web-devicons'

    " File Icons
    Plug 'ryanoasis/vim-devicons'

    " Lualine
    Plug 'nvim-lualine/lualine.nvim'

    " LSP
    Plug 'neovim/nvim-lspconfig'
    Plug 'williamboman/nvim-lsp-installer'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'
    Plug 'hrsh7th/cmp-cmdline'
    Plug 'hrsh7th/nvim-cmp'
    Plug 'nvim-lua/lsp-status.nvim'
    Plug 'L3MON4D3/LuaSnip'
    Plug 'saadparwaiz1/cmp_luasnip'
    Plug 'folke/trouble.nvim'
    Plug 'onsails/lspkind-nvim'
    Plug 'tami5/lspsaga.nvim', { 'branch':'nvim6.0' }
 
    " Inspired Github Theme
    Plug 'mvpopuk/inspired-github.vim'

    " Iceberg Theme
    Plug 'cocopon/iceberg.vim'
    
    " Indent Guides
    Plug 'lukas-reineke/indent-blankline.nvim'
    
    " Buffer Line
    " Plug 'akinsho/bufferline.nvim'
 
    " Smooth Scroll
    Plug 'karb94/neoscroll.nvim'

" ------------------------------------------------------------------------------
" # Plugins Config
" ------------------------------------------------------------------------------

" Config: vim-test
let test#strategy = 'floaterm'
let test#php#phpunit#executable = 'php artisan test'
let test#project_root = getcwd()

" Config: floaterm
let g:floaterm_width=0.9
let g:floaterm_height=0.9
let floaterm_title='($1/$2)'

" Config: indent-blankline
let g:indent_blankline_filetype_exclude = ['dashboard',  'startify', 'floaterm', 'nerdtree', 'lspinfo', 'lsp-installer' ]
let g:indent_blankline_use_treesitter = v:true
let g:NERDTreeWinPos = "right"

" Config: vim-signify
let g:signify_priority = 1
let g:signify_sign_add = '▍'
let g:signify_sign_change = '▍'
let g:signify_sign_delete_first_line = '▔'
let g:signify_sign_delete = '▁'

" Config: netrw
nnoremap <leader>b :Explore<CR>
let g:netrw_winsize = -28
let g:netrw_preview = 1
let g:netrw_keepdir = 0
let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+'
let g:netrw_localrmdir='rm -r'

" Config: nerdtree
" autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif
" autocmd VimEnter * NERDTree
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''
let g:NERDTreeWinPos = "right"
:let g:NERDTreeWinSize=40
let g:NERDTreeGitStatusUseNerdFonts = 1
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'~',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }

let g:NERDTreeStatusline = '%#NonText#'

" Config:startify
" autocmd VimEnter *
"             \   if !argc()
"             \ |   Startify
"             \ |   NERDTree
"             \ |   wincmd w
"             \ | endif

let g:startify_lists = [
    \ { 'type': 'files',     'header': ['   Recently opened files']                    },
    \ { 'type': 'dir',       'header': ['   Recently opened project files '. getcwd()] },
    \ { 'type': 'sessions', 'header': ['   Sessions']                                 },
    \ { 'type': 'bookmarks', 'header': ['   Bookmarks']                                },
    \ { 'type': 'commands',  'header': ['   Commands']                                 },
    \ ]

let g:startify_bookmarks = [
  \ '~/.dotfiles/tmux/.tmux.conf',
  \ '~/.dotfiles/install.conf.yaml',
\ ]

let g:startify_custom_header = [
    \       '      Project Explorer     ',
    \ ]

" Config: f-person
let g:gitblame_enabled = 1
let g:gitblame_highlight_group = "FPerson"
let g:gitblame_date_format = '%r'

" Config: git-messenger
let g:git_messenger_include_diff = 'none'
let g:git_messenger_floating_win_opts = { 'border': 'single' }
let g:git_messenger_popup_content_margins = v:false
let g:git_messenger_always_into_popup = v:true
