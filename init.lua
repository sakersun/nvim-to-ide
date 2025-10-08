vim.g.mapleader = " "
vim.g.localmapleader = " "

vim.opt.termguicolors = true
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.smartindent = true

require("config.lazy")
require("config.config")

vim.cmd.colorscheme("gruvbox")
