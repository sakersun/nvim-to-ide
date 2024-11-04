return {
	{
		"mfussenegger/nvim-dap",
		config = function()
			local dap = require("dap")
			local dapui = require("dapui")

			dap.adapters.python = {
				type = "executable",
				command = "python",
				args = { "-m", "debugpy.adapter" },
			}
			dap.configurations.python = {
				{
					name = "Launch Aspen Server",
					type = "python",
					request = "launch",
					module = "uvicorn",
					args = { "app:app", "--host", "127.0.0.1", "--port", "8000", "--reload", "--app-dir", "aspen/src" },
					console = "integratedTerminal",
					justMyCode = false,
				},
				{
					name = "Launch Python File",
					type = "python",
					request = "launch",
					program = "${file}",
					pythonPath = function()
						return "python"
					end,
				},
			}

			dap.listeners.before.attach.dapui_config = function()
				dapui.open()
			end
			dap.listeners.before.launch.dapui_config = function()
				dapui.open()
			end
			dap.listeners.before.event_terminated.dapui_config = function()
				dapui.close()
			end
			dap.listeners.before.event_exited.dapui_config = function()
				dapui.close()
			end
			vim.fn.sign_define(
				"DapBreakpoint",
				{ text = "●", texthl = "DapBreakpointSymbol", linehl = "DapBreakpoint", numhl = "DapBreakpoint" }
			)
		end,
	},
	{
		"rcarriga/nvim-dap-ui",
		dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
		config = function()
			require("dapui").setup()
		end,
	},
	{
		"mfussenegger/nvim-dap-python",
		config = function()
			require("dap-python").setup("python")
		end,
	},
	{
		"theHamsta/nvim-dap-virtual-text",
		config = function()
			require("nvim-dap-virtual-text").setup({})
		end,
	},
}
