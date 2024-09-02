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
			init_options = {
				preferences = {
					importModuleSpecifierPreference = "non-relative",
				},
			},
			capabilities = capabilities,
		})
		lspconfig.pyright.setup({
			capabilities = capabilities,
		})
	end,
}
