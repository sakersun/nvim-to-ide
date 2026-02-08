return {
  "saghen/blink.cmp",
  dependencies = { "rafamadriz/friendly-snippets" },
  version = "1.*",
  init = function()
    pcall(vim.keymap.del, "i", "<Tab>")
    pcall(vim.keymap.del, "s", "<Tab>")
    pcall(vim.keymap.del, "i", "<S-Tab>")
    pcall(vim.keymap.del, "s", "<S-Tab>")
  end,
  opts = {
    keymap = { preset = "super-tab" },
    appearance = {
      nerd_font_variant = "mono",
    },
    completion = { documentation = { auto_show = true } },
    snippets = { preset = "luasnip" },
    sources = {
      default = { "lsp", "path", "snippets", "buffer" },
    },
    fuzzy = { implementation = "prefer_rust_with_warning" },
  },
  opts_extend = { "sources.default" },
}
