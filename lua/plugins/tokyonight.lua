return {
  "folke/tokyonight.nvim",
  lazy = true,
  priority = 1000,
  config = function()
    require("tokyonight").setup({
      transparent = true,
    })
  end,
}
