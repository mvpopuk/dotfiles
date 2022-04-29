" ------------------------------------------------------------------------------
" # Mappings
" ------------------------------------------------------------------------------

let mapleader = ' '

if !exists('g:vscode')
" Mappings: telescope
nnoremap <Leader><Leader>v :Telescope sourcery<CR>
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>p <cmd>lua require('telescope.builtin').git_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
nnoremap <leader>e <cmd>lua require('telescope.builtin').oldfiles()<cr>
nnoremap <leader>app <cmd>lua require('telescope.builtin').lsp_code_actions(require('telescope.themes').get_cursor())<cr>
nnoremap <silent> <leader><leader>a <cmd>lua require'telescope.builtin'.lsp_code_actions()<cr>
nnoremap <silent> <leader>gd <cmd>lua require'telescope.builtin'.lsp_definitions{}<cr>
nnoremap <silent> <leader>gv <cmd>lua require'telescope.builtin'.lsp_definitions{jump_type="vsplit"}<cr>
nnoremap <silent> <leader>gi <cmd>lua require'telescope.builtin'.lsp_implementations{}<cr>
nnoremap <silent> <leader>fr <cmd>lua require'telescope.builtin'.lsp_references{}<cr>
nnoremap <silent> <leader>f <cmd>lua require'telescope.builtin'.lsp_document_symbols{}<cr>
nnoremap <silent> <leader>fm <cmd>lua require'telescope.builtin'.lsp_document_symbols{symbols="method"}<cr>
nnoremap <silent> <leader>dg :Telescope diagnostics bufnr=0<cr>
endif

if !exists('g:vscode')
" Mapping: Folding
inoremap <F9> <C-O>za
nnoremap <F9> za
onoremap <F9> <C-C>za
vnoremap <F9> zf
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf
endif

if !exists('g:vscode')
" Mappings: PhpActor
nnoremap <silent><leader>pm :call phpactor#ContextMenu()<cr>
nnoremap <silent><leader>u :call phpactor#ImportClass()<cr>
endif

if !exists('g:vscode')
" Mapping: Testing
nmap <silent> <leader>tn :w<cr>:TestNearest<cr>
nmap <silent> <leader>tf :w<cr>:TestFile<cr>
nmap <silent> <leader>ts :w<cr>:TestSuite<cr>
nmap <silent> <leader>tl :w<cr>:TestLast<cr>
nmap <silent> <leader>tv :w<cr>:TestVisit<cr>
endif 

if !exists('g:vscode')
" Mappings: Tabs
nnoremap <leader>2 <cmd>:tabnew<cr>
nnoremap <leader>w <cmd>:Bdelete<cr>
nnoremap <leader>q <cmd>:bd!<cr>
nnoremap <leader><Right> :bn<CR>
nnoremap <leader><Left> :bp<CR>
endif

if !exists('g:vscode')
" Mappings: neoformat
nmap <Leader><Leader>n :call ToggleNeoformat()<CR>
endif

if !exists('g:vscode')
" Mappings: goyo
nnoremap <leader>1 :Goyo<cr>
nnoremap <leader><leader>1 :Goyo!<cr>
endif

" ngs  Mappings: Git
nnoremap <C-_> <cmd>:noh<cr>
nnoremap <leader>ev :e ~/.dotfiles/nvim/init.vim<cr>
" nnoremap <leader>sv :source $MYVIMRC \| runtime after/plugin/dracula.vim \| syntax on<cr> 

nnoremap <leader>sv :source $MYVIMRC<cr> 
nnoremap <leader>pl :e ~/.dotfiles/nvim/plugins.vim<cr>
nnoremap <leader>mx :e ~/.dotfiles/tmux/.tmux.conf<cr>

if !exists('g:vscode')
" Mappings:floaterm
let g:floaterm_keymap_new    = '<F7>'
let g:floaterm_keymap_prev   = '<F8>'
let g:floaterm_keymap_next   = '<F9>'
let g:floaterm_keymap_toggle = '<F12>'
endif
nnoremap <leader>git <cmd>:FloatermNew lazygit<cr>

if !exists('g:vscode')
" Mappings: tinkeray
nmap <Leader>t <Plug>TinkerayOpen
endif

if !exists('g:vscode')
function! SourceryMappings()
  nmap <buffer> gp <Plug>SourceryGoToRelatedPluginDefinition
  nmap <buffer> gm <Plug>SourceryGoToRelatedMappings
  nmap <buffer> gc <Plug>SourceryGoToRelatedConfig
endfunction
endif

" -------------------------------- LSP Saga Mappings --------------------------- "                                  

if !exists('g:vscode')
" Mappings: lspsaga
nnoremap <silent><leader>ca <cmd>lua require('lspsaga.codeaction').code_action()<CR>
vnoremap <silent><leader>ca :<C-U>lua require('lspsaga.codeaction').range_code_action()<CR>
nnoremap <silent> K <cmd>lua require('lspsaga.hover').render_hover_doc()<CR>
nnoremap <silent> <C-f> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>
nnoremap <silent> <C-b> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>
nnoremap <silent> gs <cmd>lua require('lspsaga.signaturehelp').signature_help()<CR>
nnoremap <silent>gr <cmd>lua require('lspsaga.rename').rename()<CR>
nnoremap <silent> gd <cmd>lua require'lspsaga.provider'.preview_definition()<CR>
nnoremap <silent><leader>cd <cmd>lua require('lspsaga.diagnostic').show_line_diagnostics()<CR>
nnoremap <silent><leader>cc <cmd>lua require('lspsaga.diagnostic').sahow_cursor_diagnostics()<CR>
nnoremap <silent> [e <cmd>lua require('lspsaga.diagnostic').lsp_jump_diagnostic_prev()<CR>
nnoremap <silent> ]e <cmd>lua require('lspsaga.diagnostic').lsp_jump_diagnostic_next()<CR>
endif

" -------------------------------- Trouble Mappings ---------------------------- "                                  

if !exists('g:vscode')
" Mappings: TroubleToggle
nnoremap <leader>xx <cmd>TroubleToggle<cr>
nnoremap <leader>xw <cmd>TroubleToggle workspace_diagnostics<cr>
nnoremap <leader>xd <cmd>TroubleToggle document_diagnostics<cr>
nnoremap <leader>xq <cmd>TroubleToggle quickfix<cr>
nnoremap <leader>xl <cmd>TroubleToggle loclist<cr>
nnoremap gR <cmd>TroubleToggle lsp_references<cr>
endif

" -------------------------------------- NvimTree --------------------------------- "                                  

if !exists('g:vscode')
nnoremap <C-n> :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>n :NvimTreeFindFile<CR>
endif
