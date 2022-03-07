local fn = vim.fn

local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"http://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

local status_ok, packer = pcall(require, "packer")
if not status_ok then
	vim.notify("Packer is not installed")
	return
end

packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

return packer.startup(function(use)
	use("wbthomason/packer.nvim")
	use("nvim-lua/popup.nvim")
	use("nvim-lua/plenary.nvim")
	use("windwp/nvim-autopairs")
	use("nvim-tree/nvim-web-devicons")
	use({ "goolord/alpha-nvim", requires = { "nvim-tree/nvim-web-devicons" } })
	--use "antoinemadec/FixCursorHold.nvim"

	use("mfussenegger/nvim-lint")
	use("mfussenegger/nvim-dap")
	use("mhartington/formatter.nvim")

	use({ "nvim-lualine/lualine.nvim", requires = { "nvim-tree/nvim-web-devicons" } })

	-- LSP settings
	use("neovim/nvim-lspconfig")
	use("williamboman/mason.nvim")
	use("tamago324/nlsp-settings.nvim") -- language server settings defined in json for
	use({ "glepnir/lspsaga.nvim" })
	use({ "jose-elias-alvarez/null-ls.nvim" })
	use({ "folke/trouble.nvim", requires = { "nvim-tree/nvim-web-devicons" } })
	use({ "ray-x/lsp_signature.nvim" })

	use({ "folke/todo-comments.nvim", requires = { "nvim-lua/plenary.nvim" } })
	use("folke/which-key.nvim")

	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
	use("nvim-treesitter/playground")
	use("p00f/nvim-ts-rainbow")
	use("numToStr/Comment.nvim")
	use("JoosepAlviste/nvim-ts-context-commentstring")
	use("nvim-treesitter/nvim-treesitter-context")
	-- Compare and Complete
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-cmdline")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-nvim-lua")
	use("delphinus/cmp-ctags")
	use("saadparwaiz1/cmp_luasnip")

	--Code Snippets (For, While)
	use("L3MON4D3/LuaSnip")
	use("rafamadriz/friendly-snippets")
	--  use 'lunarvim/colorschemes'
	use("navarasu/onedark.nvim")

	use({ "nvim-telescope/telescope.nvim", requires = { { "nvim-lua/plenary.nvim" } } })
	use("nvim-telescope/telescope-project.nvim")

	use("lewis6991/gitsigns.nvim")

	use("kyazdani42/nvim-tree.lua")

	use({ "akinsho/bufferline.nvim", tag = "v2.*", requires = "nvim-tree/nvim-web-devicons" })
	use("moll/vim-bbye")

	use({ "akinsho/toggleterm.nvim", tag = "*" })
	use("ahmedkhalf/project.nvim")

	use("norcalli/nvim-colorizer.lua")

	use("liuchengxu/vista.vim")
	use("lukas-reineke/indent-blankline.nvim")
	use("rcarriga/nvim-notify")

	use("simrat39/symbols-outline.nvim")

	use({ "ellisonleao/glow.nvim" })

	use({ "SmiteshP/nvim-navic", requires = "neovim/nvim-lspconfig" })
	use({ "utilyre/barbecue.nvim", requires = "SmiteshP/nvim-navic" })
	use({ "rest-nvim/rest.nvim", requires = "nvim-lua/plenary.nvim" })

	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
