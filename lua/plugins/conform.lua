return {
  "stevearc/conform.nvim",
  config = function()
    require("conform").setup({
      formatters_by_ft = {
        lua = { "stylua" },
        python = { "ruff" },
        swift = { "swift_format" },
        scss = { "prettier" },
        css = { "prettier" },
        javascript = { "prettier" },
        typescript = { "prettier" },
        javascriptreact = { "prettier" },
        typescriptreact = { "prettier" },
        html = { "prettier" },
        json = { "prettier" },
        markdown = { "prettier" },
        toml = { "taplo" },
      },
      formatters = {
        swift_format = {
          command = "swift-format",
          args = {
            "format",
            "--in-place",
            "$FILENAME",
          },
          stdin = false,
        },
        ruff_format = {
          command = "ruff",
          prepend_args = { "format" },
        },
        ruff_organize_imports = {
          command = "ruff",
          prepend_args = { "check", "--select", "I", "--fix" },
        },
      },
      format_on_save = {
        timeout_ms = 2000,
        lsp_format = "fallback",
      },
    })
  end,
}
