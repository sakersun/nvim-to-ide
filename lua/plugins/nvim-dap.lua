local function get_launch_configurations(launch_file_name)
	local path = require("plenary.path")

	local current_directory = path:new(vim.fn.getcwd())
	local launch_file_path = current_directory:joinpath(launch_file_name)
	if launch_file_path:is_file() then
		local content = launch_file_path:read()

		local success, decoded_data = pcall(vim.json.decode, content)

		if success then
			local configurations = decoded_data.configurations
			if configurations and type(configurations) == "table" then
				return configurations
			end
		else
			print("Failed to decode json content: " .. decoded_data)
		end
	end
end

return {
	{
		"mfussenegger/nvim-dap",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local dap = require("dap")
			local dapui = require("dapui")

			dap.adapters.python = {
				type = "executable",
				command = "python",
				args = { "-m", "debugpy.adapter" },
			}

			local configurations = get_launch_configurations("launch.json")
			dap.configurations.python = dap.configurations.python or {}
			for _, config in ipairs(configurations) do
				table.insert(dap.configurations.python, config)
			end

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
