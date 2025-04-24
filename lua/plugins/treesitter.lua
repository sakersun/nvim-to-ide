return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")

		configs.setup({
			sync_install = true,
			ensure_installed = {},
			ignore_install = {},
			auto_install = true,
			modules = {},
			highlight = {
				enabled = true,
			},
			indent = {
				enabled = true,
			},
			fold = {
				enabled = true,
			},
			autotag = {
				enabled = true,
			},
		})
	end,
}
