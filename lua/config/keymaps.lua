vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "LSP: Hover Documentation", silent = true })
vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, { desc = "LSP: Signature Help", silent = true })
vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "LSP: Go to Definition", silent = true })
vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, { desc = "LSP: Find References", silent = true })
vim.keymap.set("n", "<leader>gi", vim.lsp.buf.implementation, { desc = "LSP: Go to Implementation", silent = true })
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "LSP: Code Action", silent = true })
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "LSP: Rename Symbol", silent = true })

-- for outline
vim.keymap.set("n", "<leader>o", ":Outline<CR>", { noremap = true, silent = true })

-- for bufferline
vim.keymap.set("n", "<Tab>", "<Cmd>BufferLineCycleNext<CR>", { desc = "BufferLine: Next Buffer", silent = true })
vim.keymap.set("n", "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", { desc = "BufferLine: Previous Buffer", silent = true })

for i = 1, 9 do
	vim.keymap.set(
		"n",
		"<leader>" .. i,
		"<Cmd>BufferLineGoToBuffer " .. i .. "<CR>",
		{ desc = "BufferLine: Go to Buffer", silent = true }
	)
end

vim.keymap.set("n", "<leader>bd", "<Cmd>BufferLinePickClose<CR>", { desc = "BufferLine: CLose Buffer", silent = true })
vim.keymap.set(
	"n",
	"<leader>bo",
	"<Cmd>BufferLineCloseOthers<CR>",
	{ desc = "BufferLine: CLose Others", silent = true }
)
