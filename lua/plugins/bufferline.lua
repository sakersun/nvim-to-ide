return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = { "nvim-tree/nvim-web-devicons", "nvim-neo-tree/neo-tree.nvim" },
	config = function()
		require("bufferline").setup({
			options = {
				numbers = "ordinal",
				separator_style = "padded_slant",
				indicator = {
					style = "underline",
				},
				offsets = {
					{
						filetype = "neo-tree",
						text = "File Explorer",
						highlight = "Directory",
						text_align = "left",
						separator = true,
					},
				},
				diagnostics = "nvim_lsp",
				always_show_bufferline = false,
			},
		})
	end,
}
