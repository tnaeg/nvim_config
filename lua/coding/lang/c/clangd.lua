local clangd_flags = {
	"clangd",
	"--all-scope-completion",
	"--suggest-missing-includes",
	"--background-index",
	"--poch-storage=disk",
	"--cross-file-rename",
	"--log=info",
	"--completion-style=detailed",
	"--enable-confing",
	"--clang-tidy",
	"--offset-encoding=utf-8",
	"--fallback-style=Google",
}

return {
	{
		"nvim-treesitter/nvim-treesitter",
		opts = function(_, opts)
			if type(opts.ensure_installed) == "table" then
				vim.list_extend(opts.ensure_installed, { "c", "cpp" })
			end
		end,
	},

	{
		"neovim/nvim-lspconfig",
		opts = {
			servers = {
				clangd = {
					settings = {
						cmd = clangd_flags,
						filetypes = { "c", "cpp", "h", "hpp", "objc", "objcpp" },
						flags = {
							debounce_text_changes = 150,
						},
					},
				},
			},
		},
	},
}
