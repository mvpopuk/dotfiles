" -------------------------------- Mappings --------------------------- "

let mapleader = ' '

" inoremap <Tab<<Tab> <Esc>
" vnoremap <Tab><Tab> <Esc>
" inoremap <Tab><Tab> <Esc>

xnoremap @ :<C-u>call ExecuteMacroOverVisualRange()<CR>
function! ExecuteMacroOverVisualRange()
    echo '@'.getcmdline()
    execute ":'<,'>normal @".nr2char(getchar())
endfunction

if exists('g:vscode')
nnoremap ? <Cmd>call VSCodeNotify('workbench.action.findInFiles', { 'query': expand('<cword>')})<CR>
" nnoremap <Space>n :call VSCodeNotify('workbench.action.toggleSidebarVisibility')<CR> " \| :call VSCodeNotify('workbench.action.focusSideBar')<CR>
" nnoremap <silent> <Space> :call VSCodeNotify('whichkey.show')<CR>
" xnoremap <silent> <Space> :call VSCodeNotify('whichkey.show')<CR>
else

" Mappings: telescope
nnoremap <Leader><Leader>v :Telescope sourcery<CR>
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>g <cmd>lua require('telescope.builtin').git_files()<cr>
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
nnoremap <leader>fG :execute 'Telescope live_grep default_text=' . expand('<cword>')<cr>
nnoremap <leader>fS :execute 'Telescope grep_string default_text=' . expand('<cword>')<cr>
nnoremap <leader>fF :execute 'Telescope find_files default_text=' . "" . expand('<cword>')<cr>

" Mapping: NvimTreeToggle
nnoremap <leader>b <cmd>:NvimTreeToggle<cr>

" Mapping: Folding
inoremap <F9> <C-O>za
nnoremap <F9> za
onoremap <F9> <C-C>za
vnoremap <F9> zf
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf

" Mappings: PhpActor
nnoremap <silent><leader>pm :call phpactor#ContextMenu()<cr>
nnoremap <silent><leader>u :call phpactor#ImportClass()<cr>

" Mapping: Testing
nmap <silent> <leader>tn :w<cr>:TestNearest<cr>
nmap <silent> <leader>tf :w<cr>:TestFile<cr>
nmap <silent> <leader>ts :w<cr>:TestSuite<cr>
nmap <silent> <leader>tl :w<cr>:TestLast<cr>
nmap <silent> <leader>tv :w<cr>:TestVisit<cr>

" Mappings: Tabs
nnoremap <leader>2 <cmd>:vsplit<cr>
nnoremap <leader>w <cmd>:Bdelete<cr>
nnoremap <leader>q <cmd>:bd!<cr>
nnoremap <leader><right> :bn<CR>
nnoremap <leader><left> :bp<CR>

" Mappings: neoformat
nmap <Leader><Leader>n :call ToggleNeoformat()<CR>

" Mappings: goyo
nnoremap <leader>1 :Goyo<cr>
nnoremap <leader><leader>1 :Goyo!<cr>

" ngs  Mappings: Git
nnoremap <C-_> <cmd>:noh<cr>
nnoremap <leader>ev :e ~/.dotfiles/nvim/init.vim<cr>
" nnoremap <leader>sv :source $MYVIMRC \| runtime after/plugin/dracula.vim \| syntax on<cr>

nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>pl :e ~/.dotfiles/nvim/plugins.vim<cr>
nnoremap <leader>mx :e ~/.dotfiles/tmux/.tmux.conf<cr>

" Mappings:floaterm
let g:floaterm_keymap_new    = '<F7>'
let g:floaterm_keymap_prev   = '<F8>'
let g:floaterm_keymap_next   = '<F9>'
let g:floaterm_keymap_toggle = '<leader>§'

nnoremap <leader>git <cmd>:FloatermNew lazygit<cr>
nnoremap <leader>df <cmd>:Gvdiffsplit<cr>

" Mappings: tinkeray
nmap <Leader>t <Plug>TinkerayOpen

function! SourceryMappings()
  nmap <buffer> gp <Plug>SourceryGoToRelatedPluginDefinition
  nmap <buffer> gm <Plug>SourceryGoToRelatedMappings
  nmap <buffer> gc <Plug>SourceryGoToRelatedConfig
endfunction

" -------------------------------- LSP Saga Mappings --------------------------- "

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

" -------------------------------- Trouble Mappings ---------------------------- "

" Mappings: TroubleToggle
nnoremap <leader>xx <cmd>TroubleToggle<cr>
nnoremap <leader>xw <cmd>TroubleToggle workspace_diagnostics<cr>
nnoremap <leader>xd <cmd>TroubleToggle document_diagnostics<cr>
nnoremap <leader>xq <cmd>TroubleToggle quickfix<cr>
nnoremap <leader>xl <cmd>TroubleToggle loclist<cr>
nnoremap gR <cmd>TroubleToggle lsp_references<cr>

" Moving blocks of code up and down
vmap J :m '>+1<CR>gv=gv
vmap K :m '<-2<CR>gv=gv

xnoremap <leader>p "_dP
nnoremap <leader>d "_d
xnoremap <leader>d "_d

endif
