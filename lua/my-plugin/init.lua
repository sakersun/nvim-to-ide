local M = {}

function M.my_command()
	print("this is my-plugin message")
end

vim.api.nvim_create_user_command("MyCommand", function()
	M.my_command()
end, { nargs = 0 })

return M
