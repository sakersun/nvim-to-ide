return {
	{
		"neovim/nvim-lspconfig",
		config = function()
			-- local lspconfig = require("lspconfig")
			local util = require("lspconfig.util")
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			vim.lsp.config.lua_ls = {
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
			}

			vim.lsp.config.ts_ls = {
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
			}
			vim.lsp.config.pyright = {
				capabilities = capabilities,
			}

			vim.lsp.config.cssls = {
				capabilities = capabilities,
			}
			vim.lsp.config.bashls = {
				capabilities = capabilities,
			}
		end,
	},
}
