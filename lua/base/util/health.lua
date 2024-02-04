local M = {}
local start = vim.health.report_start
local ok = vim.health.report_ok
local warn = vim.health.report_warn
local error = vim.health.report_error

function M.check()
	start("Config")

	if vim.fn.has("nvim-0.9.0") == 1 then
		ok("Using Neovim >= 0.9.0")
	else
		error("Neovim >= 0.9.0 is required")
	end

	for _, cmd in ipairs({ "git", "rg", { "fd", "fdfind" }, "lazygit" }) do
		local name = type(cmd) == "string" and cmd or vim.inspect(cmd)
		local commands = type(cmd) == "string" and { cmd } or cmd
		---@cast commands string[]
		local found = false

		for _, c in ipairs(commands) do
			if vim.fn.executable(c) == 1 then
				name = c
				found = true
			end
		end

		if found then
			ok(("`%s` is installed"):format(name))
		else
			warn(("`%s` is not installed"):format(name))
		end
	end
end

function M.setup()
	vim.api.nvim_create_user_command("ConfigHealth", function()
		M.check()
	end, { desc = "Check config health" })
end

return M
