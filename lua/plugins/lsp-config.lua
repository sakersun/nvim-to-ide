return {
	"neovim/nvim-lspconfig",
	config = function()
		local lspconfig = require("lspconfig")
		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		lspconfig.lua_ls.setup({
			settings = {
				Lua = {
					diagnostics = {
						globals = { "vim" },
					},
					workspace = {
						library = vim.api.nvim_get_runtime_file("", true),
					},
				},
			},
			capabilities = capabilities,
		})
		lspconfig.tsserver.setup({
			capabilities = capabilities,
		})
		lspconfig.pyright.setup({
			settings = {
				python = {
					analysis = {
						diagnosticMode = "openFilesOnly",
						autoImportCompletions = true,
						exclude = { "**/__cache__/*", "**/__pycache__/*", "tests", "build", "docs", ".venv", ".git" },
					},
				},
			},
			capabilities = capabilities,
		})
	end,
}
