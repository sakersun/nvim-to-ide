vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "" })
vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})

-- for bufferline
vim.keymap.set("n", "<leader>bn", ":BufferLineCycleNext<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>bp", ":BufferLineCyclePrev<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>bc", ":bdelete<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>bo", ":BufferLineCloseOthers<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>bl", ":BufferLineMovePrev<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>br", ":BufferLineMoveNext<CR>", { noremap = true, silent = true })
for i = 1, 9 do
	vim.keymap.set("n", "<leader>" .. i, ":BufferLineGoToBuffer " .. i .. "<CR>", { noremap = true, silent = true })
end
