vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "LSP: Hover Documentation", silent = true })
vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, { desc = "LSP: Signature Help", silent = true })
vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "LSP: Go to Definition", silent = true })
vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, { desc = "LSP: Find References", silent = true })
vim.keymap.set("n", "<leader>gi", vim.lsp.buf.implementation, { desc = "LSP: Go to Implementation", silent = true })
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "LSP: Code Action", silent = true })
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "LSP: Rename Symbol", silent = true })

-- for outline
vim.keymap.set("n", "<leader>o", ":Outline<CR>", { noremap = true, silent = true })
