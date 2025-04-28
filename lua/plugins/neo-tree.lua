return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
		"nvim-tree/nvim-web-devicons",
	},
	lazy = false,
	opts = {},
	keys = {
		{
			"<leader>e",
			function()
				local cwd = vim.fn.getcwd()
				require("neo-tree.command").execute({ toggle = true, dir = cwd })
			end,
			desc = "Toggle Neo-tree (cmd)",
		},
	},
	config = function()
		require("neo-tree").setup({
			filesystem = {
				follow_current_file = {
					enabled = true,
					leave_dirs_open = false,
				},
			},
			buffers = {
				follow_current_file = {
					enabled = true,
					leave_dirs_open = false,
				},
			},
		})
	end,
}
