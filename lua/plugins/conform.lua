return {
	"stevearc/conform.nvim",
	opts = {},
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "black", "isort" },
				javascript = { "prettierd" },
				javascriptreact = { "prettierd" },
				typescript = { "prettierd" },
				typescriptreact = { "prettierd" },
				css = { "prettierd" },
				sass = { "prettierd" },
				json = { "prettierd" },
				html = { "prettierd" },
				markdown = { "prettierd" },
			},
			format_on_save = {
				timeout_ms = 500,
				lsp_format = "fallback",
			},
			formatters = {
				prettierd = {
					condition = function()
						return vim.loop.fs_realpath(".prettierrc") ~= nil
					end,
				},
			},
		})
	end,
}
