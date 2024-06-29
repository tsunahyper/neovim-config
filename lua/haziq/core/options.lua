vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

opt.relativenumber = true
opt.number = true

-- Tabs & Indentation
opt.tabstop = 2 -- 2 spaces for tabs (Use prettier by default)
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- Expand tab to spaces
opt.autoindent = true -- Copy indent from current line when starting new one

-- Turn off text-wrapping
opt.wrap = false -- turn off wrapping of lines in nvim otherwise it'll take more lines and cause confusion

-- Search Settings
opt.ignorecase = true -- ignore any capital case, camel case and etc. during searching
opt.smartcase = true -- During search, if include any capital case in the search, it will assumes in case-sensitive and search it accurately

-- Highlight cursor lines
opt.cursorline = true -- to higihlight the current cursor of line with a higlighted lines

-- Use termguicolors for tokyonight colorscheme to work
-- * Will need to use iterm2 or any other true color terminal
opt.termguicolors = true
opt.background = "dark" -- Colorschemes can be either in light or dark color. Set default colorscheme to dark
opt.signcolumn = "yes" -- Show sign column so that text does not shift

-- Backspaces
opt.backspace = "indent,eol,start" -- Allow backspaces on indentations, end of line or insert mode start position

-- Clipboard
opt.clipboard:append("unnamedplus") -- Use system clipboard as default register

-- Split Windows Settings
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom
