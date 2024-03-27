local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"git@github.com:folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	spec = {
		{ import = "base.ui" },
		{ import = "base.coding" },
		{ import = "base.lsp" },
		{ import = "coding.outline.arials" },
		{ import = "coding.testing.core" },
		{ import = "coding.editor" },
		{ import = "coding.display" },
		{ import = "coding.lang.rust" },
		{ import = "coding.lang.json" },
		{ import = "coding.lang.markdown" },
		{ import = "coding.lang.lua" },
	},
	defaults = {
		lazy = false,
		version = false,
	},
	install = { colorscheme = { "tokyonight", "onedark" } },
	checker = { enabled = true },
	performance = {
		rtp = {
			disabled_plugins = {
				"gzip",
				"tarPlugin",
				"tohtml",
				"tutor",
				"zipPlugin",
			},
		},
	},
})
