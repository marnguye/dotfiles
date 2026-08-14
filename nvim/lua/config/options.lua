-- Global Neovim options
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local opt = vim.opt

-- Line numbers
opt.number = true -- Show line numbers
opt.relativenumber = true -- Relative line numbers for easy jumping

-- Tabs & Indentation
opt.tabstop = 2 -- Number of spaces that a <Tab> counts for
opt.shiftwidth = 2 -- Number of spaces to use for each step of indent
opt.expandtab = true -- Convert tabs to spaces
opt.smartindent = true -- Make indenting smart

-- Search behavior
opt.ignorecase = true -- Ignore case when searching
opt.smartcase = true -- Don't ignore case if search has caps

-- Backups and Undo
opt.swapfile = false -- Disable swap files
opt.backup = false -- Disable backups
opt.undofile = true -- Save undo history to a file

-- UI styling
opt.termguicolors = true -- True color support
opt.cursorline = true -- Highlight the current line
opt.scrolloff = 8 -- Keep at least 8 lines above/below cursor
opt.signcolumn = "yes" -- Always show the sign column (prevents UI flashing)

-- Text wrapping
opt.wrap = false -- Disable line wrapping by default

-- UI
vim.opt.laststatus = 3
vim.opt.showmode = false
vim.opt.showcmd = false
vim.opt.cmdheight = 0

-- Splits
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Scrolling
vim.opt.sidescrolloff = 8

-- Whitespace
vim.opt.list = true
vim.opt.listchars = {
  tab = "→ ",
  trail = "·",
  extends = "›",
  precedes = "‹",
}

-- Picker
vim.g.lazyvim_picker = "snacks"

-- Better completion UI
vim.opt.pumheight = 12

-- Don't show completion preview window
vim.opt.completeopt = {
  "menu",
  "menuone",
  "noselect",
}
