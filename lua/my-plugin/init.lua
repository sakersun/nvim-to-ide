local M = {}

function M.my_command()
	print("this is my-plugin message")
end

function M.uis()
	local uis = vim.api.nvim_list_uis()
	for _, ui in ipairs(uis) do
		if type(ui) == "table" then
			for k, v in pairs(ui) do
				print(tostring(k) .. " : " .. tostring(v))
			end
		end
		print(ui)
	end
end

vim.api.nvim_create_user_command("MyCommand", function()
	M.my_command()
end, { nargs = 0 })

vim.api.nvim_create_user_command("MyUIS", function()
	M.uis()
end, { nargs = 0 })

return M
