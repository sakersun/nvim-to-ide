return {
	{
		"zbirenbaum/copilot.lua",
		config = function()
			-- require("copilot").setup({})
		end,
	},
	{
		"zbirenbaum/copilot-cmp",
		config = function()
			-- require("copilot_cmp").setup()
		end,
		dependencies = {
			"zbirenbaum/copilot.lua",
		},
	},
}
