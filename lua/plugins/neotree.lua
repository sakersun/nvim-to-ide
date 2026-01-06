return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "nvim-tree/nvim-web-devicons",
  },
  lazy = false,
  config = function()
    require("neo-tree").setup({
      buffers = {
        follow_current_file = {
          enabled = true,
        },
      },
      filesystem = {
        filtered_items = {
          hide_dotfiles = false,
          hide_by_name = {
            ".git",
            ".vscode",
          },
        },
      },
    })

    vim.keymap.set(
      "n",
      "<leader>nt",
      ":Neotree toggle<CR>",
      { desc = "Neotree: Toggle File Explorer", silent = true }
    )
  end,
}
