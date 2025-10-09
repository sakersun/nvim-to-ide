vim.opt.termguicolors = true
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.smartindent = true

vim.opt.number = true
vim.opt.relativenumber = true

require("config.lazy")
require("config.config")

vim.cmd.colorscheme("gruvbox")

require("notify").setup({
  background_colour = "#000000",
})
