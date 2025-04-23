return {
	"stevearc/conform.nvim",
	opts = {},
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				python = {
					"black",
					"isort",
				},
				javascript = { "prettierd" },
				typescript = { "prettierd" },
				javascriptreact = { "prettierd" },
				typescriptreact = { "prettierd" },
				css = { "prettierd" },
				sass = { "prettierd" },
				html = { "prettierd" },
				json = { "prettierd" },
				markdown = { "prettierd" },
			},
			format_on_save = {
				timeout_ms = 10000,
				lsp_format = "fallback",
			},
			formatters = {
				black = {
					command = "black",
					args = { "--fast", "-" },
					stdin = true,
					timeout = 10000,
				},
				isort = {
					command = "isort",
					args = { "--stdout", "--profile", "black", "-" },
					stdin = true,
					timeout = 10000,
				},
			},
		})
	end,
}
