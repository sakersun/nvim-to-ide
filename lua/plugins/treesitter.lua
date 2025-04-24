return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")

		configs.setup({
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
