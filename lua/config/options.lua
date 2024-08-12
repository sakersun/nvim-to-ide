vim.opt.encoding = "utf-8"
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.colorcolumn = "120"
vim.opt.cursorline = true
vim.opt.textwidth = 120
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.termguicolors = true

vim.cmd([[
  augroup OpenNeotreeOnStart
    autocmd!
    autocmd VimEnter * Neotree
  augroup END
]])

vim.cmd([[colorscheme catppuccin-mocha]])
