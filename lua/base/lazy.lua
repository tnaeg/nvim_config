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
		{ import = "base.plugins" },
		{ import = "base.plugins.extras.lang" },
		{ import = "base.plugins.extras.formatting" },
		{ import = "base.plugins.extras.util.project" },
		{ import = "base.plugins.extras.util.telemedia" },
		{ import = "base.plugins.extras.dap" },
		{ import = "code.outline.symbols" },
		{ import = "code.testing" },
		{ import = "code.display.barbecue" },
		--{ import = "code.completion" },
	},
	defaults = {
		lazy = false,
		version = false,
	},
	install = { colorscheme = { "tokyonight", "habamax", "onedark" } },
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
