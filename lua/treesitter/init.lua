local status_ok, treesitter = pcall(require, "nvim-treesitter.configs")
if not status_ok then
	return
end

treesitter.setup({
	ensure_installed = { "c", "cpp", "html", "javascript", "typescript", "python", "lua", "json", "css", "http" },
	sync_install = false,
	ignore_install = { "ruby", "r", "beancount" },
	autopairs = {
		enable = true,
	},
	highlight = {
		enable = true,
	},
	indent = {
		enable = false,
	},
	rainbow = {
		enable = true,
		extended_mode = true,
		max_file_lines = nil,
	},
	context_commentstring = {
		enable = true,
		enable_autocmd = false,
	},
})

vim.cmd([[
  set foldmethod=expr
  set foldexpr=nvim_treesitter#foldexpr()
  set foldlevelstart=20
]])

local tree_status_ok, treeContext = pcall(require, "treesitter-context")
if not tree_status_ok then
	return
end

treeContext.setup({
	enable = true,
	throttle = true,
	line_numbers = true,
	mode = 'cursor',
	max_line = 0,
	pattern = {
		default = {
			"class",
			"function",
			"method",
			"if",
		},
	},
})
