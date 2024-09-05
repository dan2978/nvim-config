-- Set leader key
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Disabling netrw. Required for nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Main settings
vim.opt.clipboard = "unnamedplus"
vim.opt.cursorline = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.colorcolumn = "80,100"
vim.opt.undofile = true

-- Theme options
vim.cmd[[colorscheme habamax]]
-- Enable 24-bit colour
vim.opt.termguicolors = true

-- Tab options
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.smarttab = true
