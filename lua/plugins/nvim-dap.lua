return {
	{
		"mfussenegger/nvim-dap",
		config = function()
			require("dap-python").setup("python")

			local dap = require("dap")
		end,
	},
	{
		"mfussenegger/nvim-dap-python",
		config = function()
			local path = "/home/saker/.local/share/nvim/mason/packages/debugpy/venv/bin/python"
			require("dap-python").setup(path)
		end,
	},
	{
		"rcarriga/nvim-dap-ui",
		dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
		config = function()
			require("dapui").setup()
		end,
	},
}
