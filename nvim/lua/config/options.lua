vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local options = {
	-- incsearch = true, -- make search act like search in modern browsers
	backup = false, -- creates a backup file
	clipboard = "unnamedplus", -- allows neovim to access the system clipboard
	cmdheight = 1, -- more space in the neovim command line for displaying messages
	completeopt = { "menu", "menuone", "noselect" }, -- mostly just for cmp
	conceallevel = 0, -- so that `` is visible in markdown files
	fileencoding = "utf-8", -- the encoding written to a file
	softtabstop = 2, -- edit as if tabs were 2 characters wide
	hlsearch = true, -- highlight all matches on previous search pattern
	ignorecase = true, -- ignore case in search patterns
	mouse = "a", -- allow the mouse to be used in neovim
	autowriteall = true, -- automatically :write before running commands
	pumheight = 10, -- pop up menu height
	showmode = false, -- we don't need to see things like -- INSERT -- anymore
	showtabline = 0, -- always show tabs
	smartcase = true, -- smart case
	smartindent = true, -- make indenting smarter again
	autoindent = true, -- copy indent from current line
	splitbelow = true, -- force all horizontal splits to go below current window
	splitright = true, -- force all vertical splits to go to the right of current window
	swapfile = false, -- creates a swapfile
	termguicolors = true, -- set term gui colors (most terminals support this)
	timeoutlen = 1000, -- time to wait for a mapped sequence to complete (in milliseconds)
	updatetime = 100, -- faster completion (4000ms default)
	writebackup = false, -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
	expandtab = true, -- convert tabs to spaces
	modifiable = true, -- allow buffer modification
	foldmethod = "manual", -- folding
	shiftwidth = 2, -- the number of spaces inserted for each indentation
	tabstop = 2, -- insert 2 spaces for a tab
	cursorline = true, -- highlight the current line
	number = true, -- set numbered lines
	breakindent = true, -- wrap lines with indent
	relativenumber = true, -- set relative numbered lines
	shiftround = true, -- round indent
	showmatch = true, -- show matching brackets when text indicator is over them

	numberwidth = 4, -- set number column width to 2 {default 4}
	signcolumn = "yes", -- always show the sign column, otherwise it would shift the text each time
	wrap = false, -- display lines as one long line
	scrolloff = 8, -- Makes sure there are always eight lines of context
	sidescrolloff = 8, -- Makes sure there are always eight lines of context
	laststatus = 3, -- Always display the status line
	showcmd = false, -- Don't show the command in the last line
	ruler = false, -- Don't show the ruler
	guifont = "monospace:h17", -- the font used in graphical neovim applications
	title = true, -- set the title of window to the value of the titlestring
	confirm = true, -- confirm to save changes before exiting modified buffer
	fillchars = { eob = " " }, -- change the character at the end of buffer
	cursorlineopt = "number", -- set the cursorline
	undofile = true, -- enable persistent undo
}

-- Create an augroup for remembering fold states
local remember_folds_group = vim.api.nvim_create_augroup("remember_folds", { clear = true })

-- Autocommand to save the view (including folds) when leaving a buffer
vim.api.nvim_create_autocmd("BufWinLeave", {
	group = remember_folds_group,
	pattern = "?*",
	command = "mkview 1",
})

-- Autocommand to load the view (including folds) when entering a buffer
vim.api.nvim_create_autocmd("BufWinEnter", {
	group = remember_folds_group,
	pattern = "?*",
	command = "silent! loadview 1",
})

-- Create an augroup for highlight_on_yank
local highlight_on_yank_group = vim.api.nvim_create_augroup("highlight_on_yank", { clear = true })

-- Autocommand for highlighting yanked text
vim.api.nvim_create_autocmd("TextYankPost", {
	group = highlight_on_yank_group,
	pattern = "*",
	callback = function()
		vim.highlight.on_yank({
			higroup = "IncSearch",
			timeout = 150,
			on_macro = true,
		})
	end,
})

-- Create an augroup for remembering the last cursor position
local neovim_last_position_group = vim.api.nvim_create_augroup("neovim_last_position", { clear = true })

-- Autocommand to remember the last cursor position when opening a file
vim.api.nvim_create_autocmd("BufReadPost", {
	group = neovim_last_position_group,
	pattern = "*",
	callback = function()
		if
			vim.fn.line("'\"") >= 1
			and vim.fn.line("'\"") <= vim.fn.line("$")
			and not vim.bo.filetype:match("commit")
		then
			vim.cmd('normal! g`"')
		end
	end,
})

-- Create an augroup for equalizing windows on Vim resize
local equalize_windows_on_resize_group = vim.api.nvim_create_augroup("equalize_windows_on_resize", { clear = true })

-- Autocommand to equalize window sizes when Vim is resized
vim.api.nvim_create_autocmd("VimResized", {
	group = equalize_windows_on_resize_group,
	pattern = "*",
	command = 'exec "normal \\<c-w>="',
})

vim.g.floaterm_width = 0.9
vim.g.floaterm_height = 0.9
vim.g.floaterm_title = "($1/$2)"

local api = vim.api

-- show cursor line only in active window
local cursorGrp = api.nvim_create_augroup("CursorLine", { clear = true })
api.nvim_create_autocmd({ "InsertLeave", "WinEnter" }, {
	pattern = "*",
	command = "set cursorline",
	group = cursorGrp,
})
api.nvim_create_autocmd(
	{ "InsertEnter", "WinLeave" },
	{ pattern = "*", command = "set nocursorline", group = cursorGrp }
)

vim.api.nvim_create_autocmd("FileType", {
	pattern = "apache",
	callback = function()
		vim.opt_local.commentstring = "#\\ %s"
	end,
})

for k, v in pairs(options) do
	vim.opt[k] = v
end
