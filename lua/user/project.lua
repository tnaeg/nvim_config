local status_ok, project = pcall(require, "project_nvim")
if not status_ok then
	return
end

project.setup({
	on_config_done = nil,
	manual_mode = false,
	detection_methods = { "pattern" },

	patterns = { ".git", "_darcs", ".hg", ".bzr", ".svn", "Makefile", "package.json", "compile_commands.json", "CMakeLists.txt" },

	show_hidden = false,

	silent_chdir = true,
  datapath = vim.fn.stdpath("data"),
})
