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

vim.cmd([[colorscheme catppuccin-mocha]])

vim.api.nvim_create_autocmd("FileType", {
	pattern = "Python",
	callback = function()
		vim.opt.tabstop = 4
		vim.opt.softtabstop = 4
		vim.opt.shiftwidth = 4
	end,
})

vim.fn.sign_define("DiagnosticSignError", { text = " ", texthl = "DiagnosticSignError" })
vim.fn.sign_define("DiagnosticSignWarn", { text = " ", texthl = "DiagnosticSignWarn" })
vim.fn.sign_define("DiagnosticSignInfo", { text = " ", texthl = "DiagnosticSignInfo" })
vim.fn.sign_define("DiagnosticSignHint", { text = "󰌵", texthl = "DiagnosticSignHint" })
