vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.opt.encoding = "utf-8"
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.colorcolumn = "120"
vim.opt.textwidth = 120
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2

vim.opt.termguicolors = true

vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
	pattern = "*.py",
	callback = function()
		vim.opt.tabstop = 4
		vim.opt.softtabstop = 4
		vim.opt.shiftwidth = 4
	end,
})
