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

-- vim.cmd([[colorscheme catppuccin-macchiato]])
--vim.cmd([[colorscheme tokyonight-storm]])
vim.cmd([[colorscheme gruvbox]])

vim.api.nvim_create_autocmd("FileType", {
	pattern = "Python",
	callback = function()
		vim.opt.tabstop = 4
		vim.opt.softtabstop = 4
		vim.opt.shiftwidth = 4
	end,
})

vim.diagnostic.config({
	virtual_text = true,
	signs = {
		text = {
			[vim.diagnostic.severity.ERROR] = " ",
			[vim.diagnostic.severity.WARN] = " ",
			[vim.diagnostic.severity.INFO] = " ",
			[vim.diagnostic.severity.HINT] = "󰌵",
		},
	},
})

vim.api.nvim_set_hl(0, "GitSignsCurrentLineBlame", { fg = "#BEBEBE", italic = true })

vim.g.rustaceanvim = {
	server = {
		cmd = { "rust-analyzer" },
	},
}
