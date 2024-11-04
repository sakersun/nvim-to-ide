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
		lspconfig.ts_ls.setup({
			init_options = {
				preferences = {
					importModuleSpecifierPreference = "non-relative",
				},
			},
			capabilities = capabilities,
		})
		lspconfig.pyright.setup({
			settings = {
				python = {
					analysis = {
						diagnosticMode = "workspace",
						autoImportCompletions = true,
						useLibraryCodeForTypes = true,
						extraPaths = { "src", "tests" },
						logLevel = "trace",
					},
				},
			},
			on_init = function(client)
				client.config.settings.python.analysis.extraPaths = { "src", "tests" }
			end,
			capabilities = capabilities,
		})
		lspconfig.bashls.setup({
			capabilities = capabilities,
		})
		lspconfig.cssls.setup({
			capabilities = capabilities,
		})
	end,
}
