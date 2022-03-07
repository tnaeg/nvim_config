local status, dap = pcall(require, "dap")
if not status then
	print("DAP error")
	return
end

dap.adapters.lldb = {
	type = "executable",
	command = "/usr/bin/lldb-vscode-15",
	name = "lldb",
}

dap.configurations.cpp = {
	{
		name = "Launch",
		type = "lldb",
		requires = "launch",
		program = function()
			return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
		end,
		cwd = "${workspaceFolder}",
		stopOnEntry = false,
		args = {},
	},
}

dap.configurations.c = dap.configurations.cpp
