return {
	"L3MON4D3/LuaSnip",
	version = "v2.*",
	dependencies = { "rafamadriz/friendly-snippets" },
	config = function()
		local ls = require("luasnip")

		require("luasnip.loaders.from_vscode").lazy_load()

		vim.keymap.set({ "i" }, "<C-K>", function()
			ls.expand()
		end, { silent = true })
	end,
}
