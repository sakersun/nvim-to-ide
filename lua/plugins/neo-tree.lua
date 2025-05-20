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
				filtered_items = {
					visible = false,
					hide_dotfiles = false,
					hide_gitignored = false,
					hide_hidden = true,
					hide_by_name = {
						"__pycache__",
						".git",
						".vscode",
						".venv",
						".pytest_cache",
						".nx",
						"node_modules",
					},
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
