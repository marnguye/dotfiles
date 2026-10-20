vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.g.lazyvim_picker = "snacks"
vim.g.lazyvim_cmp = "blink.cmp"

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local opt = vim.opt

opt.number = true
opt.relativenumber = true
opt.cursorline = true
opt.cursorcolumn = false
opt.signcolumn = "yes"

opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = true
opt.smartindent = true
opt.breakindent = true

opt.ignorecase = true
opt.smartcase = true
opt.incsearch = true
opt.hlsearch = true

opt.swapfile = false
opt.backup = false
opt.undofile = true
opt.updatetime = 250
opt.timeoutlen = 400

opt.termguicolors = true
opt.scrolloff = 8
opt.sidescrolloff = 8
opt.wrap = false
opt.smoothscroll = true

opt.laststatus = 3
opt.showmode = false
opt.showcmd = false
opt.cmdheight = 0
opt.pumheight = 12
opt.winborder = "rounded"

opt.splitbelow = true
opt.splitright = true
opt.splitkeep = "screen"

opt.completeopt = { "menu", "menuone", "noselect" }

opt.list = true
opt.listchars = {
  tab = "→ ",
  trail = "·",
  extends = "›",
  precedes = "‹",
  nbsp = "␣",
}

opt.fillchars:append({
  eob = " ",
  fold = " ",
  foldopen = "",
  foldclose = "",
})
