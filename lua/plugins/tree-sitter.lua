return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")
		configs.setup({
			ensure_installed = { "query", "c", "lua", "vim", "vimdoc", "regex" },
			ignore_install = {},
			sync_install = false,
			modules = {},
			auto_install = true,
			highlight = {
				enabled = true,
			},
			indent = {
				enabled = true,
			},
			fold = {
				enabled = true,
			},
		})
	end,
}
