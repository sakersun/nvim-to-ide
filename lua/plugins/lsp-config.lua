return {
  "neovim/nvim-lspconfig",
  dependencies = { "saghen/blink.cmp" },
  config = function()
    local on_attach = function(_, bufnr)
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
    local capabilities = require("blink.cmp").get_lsp_capabilities()

    local servers = {
      lua_ls = {
        settings = {
          Lua = {
            runtime = { version = "LuaJIT" },
            diagnostics = { globals = { "vim" } },
            workspace = {
              checkThirdParty = false,
              library = {
                vim.env.VIMRUNTIME,
                "${3rd}/luv/library",
                "${3rd}/busted/library",
              },
            },
          },
        },
      },
      pyright = {
        settings = {
          python = {},
        },
      },
      sourcekit = {
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
