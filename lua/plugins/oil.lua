return {
  'stevearc/oil.nvim',
  opts = {
    default_file_explorer = true,
    columns = {
      "icon",
      "permissions",
      "size",
      "mtime",
    },
    view_options = {
      show_hide = true,
    }},
  dependencies = { { "nvim-tree/nvim-web-devicons", opts = {} } },
  lazy = false, 
  keys = {
    {
      "<leader>-",
      function()
        require("oil").open_float()
      end,
      desc = "Open Oil in floating window"
    }
  }
}
