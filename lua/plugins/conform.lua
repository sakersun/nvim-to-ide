return {
  "stevearc/conform.nvim",
  config = function()
    require("conform").setup({
      formatters_by_ft = {
        lua = { "stylua" },
        python = { "isort", "black " },
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
      },
      format_on_save = {
        timeout_ms = 1000,
        lsp_fallback = true,
      },
    })
  end,
}
