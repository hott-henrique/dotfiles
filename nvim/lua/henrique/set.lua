-- Set block cursor in all modes.
vim.opt.guicursor = ""

-- Show line numbers and make it relative to current line of cursor.
vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Auto identation.
vim.opt.smartindent = true

-- Dont break lines to render characters that dont appear on the terminal.
vim.opt.wrap = false

-- By default, do not use swapfile.
vim.opt.swapfile = false

-- By default, do not use backupfile.
vim.opt.backup = false

-- By default, do use undofiles and keep it at location.
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Do not highlight search after execution.
vim.opt.hlsearch = false

-- Execute search while typing on keyboard.
vim.opt.incsearch = true

-- Enable 24-bit gui colors.
vim.opt.termguicolors = true

-- Always have 8 lines up/down cursor when possible.
vim.opt.scrolloff = 8

-- Render column on the left that gives information about the file.
-- Works well with some plugins like git, lsp and etc.
vim.opt.signcolumn = "yes"

-- Characters do include in file and path names:
-- First @: characters that returns true on isalpha(),
-- Second @: include the @ character.
vim.opt.isfname:append("@-@")

-- When using swapfile, it will be written to disk if nothing is typed in N miliseconds.
vim.opt.updatetime = 50

-- Leader equals to space.
vim.g.mapleader = " "

-- Render white spaces in a certain way.
vim.opt.listchars = {
	tab = "> ",
	trail = "·",
	space = "·",
}
vim.opt.list = true

-- Background color
-- vim.cmd [[ hi Normal guibg=#191724 ]]

-- NetRW Configuration

vim.g.netrw_liststyle = 3 -- Tree mode
vim.g.netrw_sort_by = "exten"
vim.g.netrw_alto = 1 -- Press o to open file/dir below.
vim.g.netrw_altv = 1 -- Press v to open file/dir right.
vim.g.netrw_banner = 0 -- Hide message on top.
vim.g.netrw_winsize = 75 -- When opening new window occupy 75% of window.

