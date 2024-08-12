return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local configs = require("nvim-treesitter.configs")
    configs.setup({
      ensure_installed = { "query", "c", "lua", "vim", "vimdoc"},
      auto_install = true,
    })
  end
}
