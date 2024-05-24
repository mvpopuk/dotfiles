local opts = { noremap = true, silent = true }
local map = vim.keymap.set

vim.api.nvim_set_var("mapleader", " ")

-- Keep cursor centered when scrolling
map("n", "<C-d>", "<C-d>zz", opts)
map("n", "<C-u>", "<C-u>zz", opts)

-- Move selected line / block of text in visual mode
map("v", "J", ":m '>+1<CR>gv=gv", opts)
map("v", "K", ":m '<-2<CR>gv=gv", opts)

-- Remap for dealing with visual line wraps
map("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true })
map("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true })

-- better indenting
map("v", "<", "<gv")
map("v", ">", ">gv")

-- paste over currently selected text without yanking it
map("v", "p", '"_dp')
map("v", "P", '"_dP')

-- copy everything between { and } including the brackets
-- p puts text after the cursor,
-- P puts text before the cursor.
map("n", "YY", "va{Vy", opts)

-- Move line on the screen rather than by line in the file
map("n", "j", "gj", opts)
map("n", "k", "gk", opts)

-- Exit on jj and jk
map("i", "jj", "<ESC>", opts)
map("i", "jk", "<ESC>", opts)

-- Move to start/end of line
map({ "n", "x", "o" }, "H", "^", opts)
map({ "n", "x", "o" }, "L", "g_", opts)

-- Panes resizing
map("n", "+", ":vertical resize +5<CR>")
map("n", "_", ":vertical resize -5<CR>")
map("n", "=", ":resize +5<CR>")
map("n", "-", ":resize -5<CR>")

-- Map enter to ciw in normal mode
map("n", "<CR>", "ciw", opts)
map("n", "<BS>", "ci", opts)

map("n", "n", "nzzv", opts)
map("n", "N", "Nzzv", opts)
map("n", "*", "*zzv", opts)
map("n", "#", "#zzv", opts)
map("n", "g*", "g*zz", opts)
map("n", "g#", "g#zz", opts)

-- map ; to resume last search
-- map("n", ";", "<cmd>Telescope resume<cr>", opts)

map("n", "<leader>ff", '<cmd>lua require("telescope.builtin").find_files()<cr>', opts)
map("n", "<leader>g", '<cmd>lua require("telescope.builtin").git_files()<cr>', opts)
map("n", "<leader>fg", '<cmd>lua require("telescope.builtin").live_grep()<cr>', opts)
map("n", "<leader>fb", '<cmd>lua require("telescope.builtin").buffers()<cr>', opts)
map("n", "<leader>fh", '<cmd>lua require("telescope.builtin").help_tags()<cr>', opts)
map("n", "<leader>k", '<cmd>lua require("telescope.builtin").oldfiles()<cr>', opts)
map(
	"n",
	"<leader>ca",
	'<cmd>lua require("telescope.builtin").lsp_code_actions(require("telescope.themes").get_cursor())<cr>',
	opts
)

map("n", "<leader><leader>a", '<cmd>lua require("telescope.builtin").lsp_code_actions()<cr>', opts)
map("n", "<leader>gd", '<cmd>lua require("telescope.builtin").lsp_definitions{}<cr>', opts)
map("n", "<leader>gv", '<cmd>lua require("telescope.builtin").lsp_definitions{jump_type="vsplit"}<cr>', opts)
map("n", "<leader>gi", '<cmd>lua require("telescope.builtin").lsp_implementations{}<cr>', opts)
map("n", "<leader>fr", '<cmd>lua require("telescope.builtin").lsp_references{}<cr>', opts)
map("n", "<leader>f", '<cmd>lua require("telescope.builtin").lsp_document_symbols{}<cr>', opts)
map("n", "<leader>fm", '<cmd>lua require("telescope.builtin").lsp_document_symbols{symbols="method"}<cr>', opts)
map("n", "<leader>dg", ":Telescope diagnostics bufnr=0<cr>", opts)
map("n", "<leader>fG", ':execute "Telescope live_grep default_text=" . expand("<cword>")<cr>', opts)
map("n", "<leader>fS", ':execute "Telescope grep_string default_text=" . expand("<cword>")<cr>', opts)
map("n", "<leader>fF", ':execute "Telescope find_files default_text=" . "" . expand("<cword>")<cr>', opts)

map({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})

--  map <leader>sv to source vimrc
map("n", "<Leader>sv", ":so %<CR>", opts)

-- Vertical split
map("n", "<Leader>2", ":vsplit<CR>", opts)

-- Close current buffer
map("n", "<Leader>w", ":Bdelete<CR>", opts)

-- Close current buffer without saving changes
map("n", "<Leader>q", ":bd!<CR>", opts)

-- Switch to the next buffer
map("n", "<Leader><right>", ":bn<CR>", opts)

-- Switch to the previous buffer
map("n", "<Leader><left>", ":bp<CR>", opts)

-- search current buffer
map("n", "<C-s>", ":Telescope current_buffer_fuzzy_find<CR>", opts)

-- search modified files
map("n", "<Leader>m", ":Telescope git_status<CR>", opts)

-- Split line with X
map("n", "X", ":keeppatterns substitute/\\s*\\%#\\s*/\\r/e <bar> normal! ==^<cr>", { silent = true })

-- Select all
map("n", "<C-a>", "ggVG", opts)

-- write file in current directory
-- :w %:h/<new-file-name>
-- map('n', '<C-n>', ':w %:h/', opts)

-- delete forward
-- w{number}dw
-- delete backward
-- w{number}db

vim.api.nvim_set_keymap("x", "@", ":lua ExecuteMacroOverVisualRange()<CR>", { noremap = true })

function ExecuteMacroOverVisualRange()
	local char = vim.fn.nr2char(vim.fn.getchar())
	print("@" .. char)
	vim.api.nvim_exec(":'<,'>normal @" .. char, false)
end

function vim.getVisualSelection()
	vim.cmd('noau normal! "vy"')
	local text = vim.fn.getreg("v")
	vim.fn.setreg("v", {})

	text = string.gsub(text, "\n", "")
	if #text > 0 then
		return text
	else
		return ""
	end
end

-- Insert mode: Press F9 to toggle fold under the cursor
vim.api.nvim_set_keymap("i", "<F9>", "<C-O>za", { noremap = true })

-- Normal mode: Press F9 to toggle fold under the cursor
vim.api.nvim_set_keymap("n", "<F9>", "za", { noremap = true })

-- Operator-pending mode: Press F9 to cancel and toggle fold under the cursor
vim.api.nvim_set_keymap("o", "<F9>", "<C-C>za", { noremap = true })

-- Visual mode: Press F9 to create a fold from the selection
vim.api.nvim_set_keymap("v", "<F9>", "zf", { noremap = true })

-- Normal mode: Press Space to toggle fold under the cursor if fold is present, otherwise insert a space
vim.api.nvim_set_keymap("n", "<Space>", "v:lua.toggle_fold()", { noremap = true, expr = true })

-- Visual mode: Press Space to create a fold from the selection
vim.api.nvim_set_keymap("v", "<Space>", "zf", { noremap = true })

-- Lua function for toggling folds with space in normal mode
function _G.toggle_fold()
	if vim.fn.foldlevel(".") ~= 0 then
		return "za"
	else
		return "<Space>"
	end
end

-- Set keymap for creating a new floaterm
vim.g.floaterm_keymap_new = "<F7>"

-- Set keymap for switching to the previous floaterm
vim.g.floaterm_keymap_prev = "<F8>"

-- Set keymap for switching to the next floaterm
vim.g.floaterm_keymap_next = "<F9>"

-- Set keymap for toggling the floaterm
vim.g.floaterm_keymap_toggle = "<leader>§"

-- Normal mode: Map <leader>git to open lazygit in a new floaterm
vim.api.nvim_set_keymap("n", "<leader>git", "<cmd>:FloatermNew lazygit<CR>", { noremap = true, silent = true })

-- Normal mode: Map <leader>df to execute the Gvdiffsplit command
vim.api.nvim_set_keymap("n", "<leader>df", "<cmd>:Gvdiffsplit<CR>", { noremap = true, silent = true })

-- Normal mode: Map <leader>xx to toggle Trouble
vim.api.nvim_set_keymap("n", "<leader>xx", "<cmd>TroubleToggle<CR>", { noremap = true, silent = true })

-- Normal mode: Map <leader>xw to toggle workspace diagnostics in Trouble
vim.api.nvim_set_keymap(
	"n",
	"<leader>xw",
	"<cmd>TroubleToggle workspace_diagnostics<CR>",
	{ noremap = true, silent = true }
)

-- Normal mode: Map <leader>xd to toggle document diagnostics in Trouble
vim.api.nvim_set_keymap(
	"n",
	"<leader>xd",
	"<cmd>TroubleToggle document_diagnostics<CR>",
	{ noremap = true, silent = true }
)

-- Normal mode: Map <leader>xq to toggle quickfix in Trouble
vim.api.nvim_set_keymap("n", "<leader>xq", "<cmd>TroubleToggle quickfix<CR>", { noremap = true, silent = true })

-- Normal mode: Map <leader>xl to toggle loclist in Trouble
vim.api.nvim_set_keymap("n", "<leader>xl", "<cmd>TroubleToggle loclist<CR>", { noremap = true, silent = true })

-- Normal mode: Map gR to toggle lsp_references in Trouble
vim.api.nvim_set_keymap("n", "gR", "<cmd>TroubleToggle lsp_references<CR>", { noremap = true, silent = true })

-- Visual mode: Map J to move the selected block of text down
vim.api.nvim_set_keymap("v", "J", ":m '>+1<CR>gv=gv", { noremap = true, silent = true })

-- Visual mode: Map K to move the selected block of text up
vim.api.nvim_set_keymap("v", "K", ":m '<-2<CR>gv=gv", { noremap = true, silent = true })

-- Visual mode: Map <leader>p to paste from the unnamed register without yanking the replaced text
vim.api.nvim_set_keymap("x", "<leader>p", '"_dP', { noremap = true, silent = true })

-- Normal mode: Map <leader>d to delete into the black hole register
vim.api.nvim_set_keymap("n", "<leader>d", '"_d', { noremap = true, silent = true })

-- Visual mode: Map <leader>d to delete into the black hole register
vim.api.nvim_set_keymap("x", "<leader>d", '"_d', { noremap = true, silent = true })
