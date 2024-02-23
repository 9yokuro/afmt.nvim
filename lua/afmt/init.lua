local M = {}

function M.create_augroup(group_name)
	vim.api.nvim_create_augroup(group_name, {})
end

function M.create_autocmd(event, group_name, pattern, command)
	vim.api.nvim_create_autocmd(event, {
		group = group_name,
		pattern = pattern,
		command = ":silent !" .. command .. " %",
	})
end

function M.setup(languages)
	if languages == nil then
		return nil
	end

	local group_name = "formatter"

	M.create_augroup(group_name)

	for _, language in pairs(languages) do
		local pattern = language.pattern

		local command = language.command

		if pattern == nil or command == nil then
			goto continue
		end

		local event = {
			"VimLeave",
			"BufWritePost",
		}

		M.create_autocmd(event, group_name, pattern, command)

		::continue::
	end
end

return M
