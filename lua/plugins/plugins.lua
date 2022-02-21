local fn = vim.fn

local install_path = fn.stdpath "data" .. "site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "http://github.com/wbthomason/packer.nvim",
    install_path
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd[[packadd packer.nvim]]
end

vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

local status_ok, packer = pcall(require, "packer")
if not status_ok then
  vim.notify("Packer is not installed")
  return
end

packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

return packer.startup(function(use)

  use "wbthomason/packer.nvim"
  use "nvim-lua/popup.nvim"
  use "nvim-lua/plenary.nvim"

  use 'mhinz/vim-startify'


  use 'vim-airline/vim-airline'

  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'
  use {'jackguo380/vim-lsp-cxx-highlight', opt=true, ft = {'c', 'cpp'}}

  use 'vim-syntastic/syntastic'

  use {'rhysd/vim-clang-format', opt=true, ft = {'c', 'cpp'}}

  use {'iamcco/markdown-preview.nvim', opt=true,  run = 'cd app && npm install', cmd = 'MarkdownPreview'}


--  use 'folke/which-key.nvim'

  --use('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})

  --use 'glepnir/lspsaga.nvim'

  -- Compare and Complete
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'saadparwaiz1/cmp_luasnip'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-nvim-lua'

  --Code Snippets (For, While)
  use 'L3MON4D3/LuaSnip'
  use 'rafamadriz/friendly-snippets'
  use 'lunarvim/colorschemes'

  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
