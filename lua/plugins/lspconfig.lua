return {
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			local util = require("lspconfig.util")
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			lspconfig.lua_ls.setup({
				settings = {
					Lua = {
						runtime = {
							version = "LuaJIT",
							path = vim.split(package.path, ";"),
						},
						diagnostics = {
							globals = { "vim" },
						},
						workspace = {
							library = vim.api.nvim_get_runtime_file("", true),
							checkThirdParty = false,
						},
						telemetry = {
							enable = false,
						},
					},
				},
				capabilities = capabilities,
			})

			lspconfig.ts_ls.setup({
				init_options = {
					singleInferredProject = true,
					maxTsServerMemory = 4096,
					preferences = {
						importModuleSpecifierPreference = "non-relative",
					},
					flags = {
						allow_incremental_sync = true,
					},
				},
				root_dir = util.root_pattern("tsconfig.json", "package.json", ".git"),
				capabilities = capabilities,
			})
			lspconfig.pyright.setup({
				capabilities = capabilities,
			})

			lspconfig.cssls.setup({
				capabilities = capabilities,
			})
			lspconfig.bashls.setup({
				capabilities = capabilities,
			})
		end,
	},
}
