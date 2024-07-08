vim.keymap.set("n", "<A-n>", "<cmd>Neotree<CR>", { desc = "Toggle Neotree" })
vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "" })
vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})

-- for dap
vim.keymap.set("n", "<F5>", "<cmd>DapContinue<CR>", { noremap = true, silent = true, desc = "Dap Continue" })
vim.keymap.set("n", "<F10>", "<cmd>DapStepOver<CR>", { noremap = true, silent = true, desc = "Dap Step Over" })
vim.keymap.set("n", "<F11>", "<cmd>DapStepInto<CR>", { noremap = true, silent = true, desc = "Dap Step Into" })
vim.keymap.set("n", "<F12>", "<cmd>DapStepOut<CR>", { noremap = true, silent = true, desc = "Dap Step Out" })
vim.keymap.set(
	"n",
	"<leader>b",
	"<cmd>DapToggleBreakpoint<CR>",
	{ noremap = true, silent = true, desc = "Dap Toggle Breakpoint" }
)

-- toggle outline
vim.keymap.set("n", "<leader>o", "<cmd>Outline<CR>", { noremap = true, silent = true, desc = "Toggle Outline" })
