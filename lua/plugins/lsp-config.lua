return {
  "neovim/nvim-lspconfig",
  config = function()
    local on_attach = function(client, bufnr)
      if client.name == "ruff" then
        -- 让 pyright 处理 hover
        client.server_capabilities.hoverProvider = false
        -- 让 conform 处理 format，禁用 ruff LSP 的 format
        client.server_capabilities.documentFormattingProvider = false
        client.server_capabilities.documentRangeFormattingProvider = false
      end
      local map = function(keys, func, desc)
        vim.keymap.set("n", keys, func, { buffer = bufnr, desc = "LSP: " .. desc, silent = true })
      end

      local lspbuf = vim.lsp.buf

      map("K", lspbuf.hover, "Hover Documentation")
      map("<leader>gd", lspbuf.definition, "Go to Definition")
      map("<leader>gr", lspbuf.references, "Go to References")
      map("<leader>ca", lspbuf.code_action, "Code Action")
    end

    local lspconfig = vim.lsp
    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    local servers = {
      lua_ls = {
        settings = {
          Lua = {
            runtime = { version = "LuaJIT" },
            diagnostics = { globals = { "vim" } },
            workspace = {
              checkThirdParty = false,
              library = vim.api.nvim_get_runtime_file("", true),
            },
          },
        },
      },
      pyright = {
        settings = {
          python = {
            analysis = {
              typeCheckingMode = "standard",
              autoSearchPaths = true,
              useLibraryCodeForTypes = true,
              diagnosticMode = "workspace",
            },
            pythonPath = ".venv/bin/python",
          },
        },
      },
      ruff = {
        settings = {
          organizeImports = true,
          lint = {
            run = "onSave",
          },
        },
      },
      sourcekit = {
        settings = {},
      },
      ts_ls = {
        settings = {},
      },
      rust_analyzer = {
        settings = {},
      },
      cssls = {
        settings = {},
      },
    }

    for name, opts in pairs(servers) do
      opts =
        vim.tbl_deep_extend("force", { on_attach = on_attach, capabilities = capabilities }, opts)
      lspconfig.config(name, opts)
      lspconfig.enable(name)
    end
  end,
}
