local Plug = vim.fn['plug#']
vim.call('plug#begin', '~/.config/nvim/autoload/plugged/')

  Plug 'vim-airline/vim-airline'

  Plug 'neovim/nvim-lspconfig'

  Plug 'williamboman/nvim-lsp-installer'

  Plug 'jackguo380/vim-lsp-cxx-highlight'
  Plug 'vim-syntastic/syntastic'

  Plug 'rhysd/vim-clang-format'

  Plug 'mhinz/vim-startify'

--  Plug 'folke/which-key.nvim'

  Plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})

  Plug 'glepnir/lspsaga.nvim'

  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'

  Plug 'hrsh7th/nvim-cmp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/cmp-path'
  Plug 'hrsh7th/cmp-cmdline'
  Plug 'saadparwaiz1/cmp_luasnip'
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-nvim-lua'

  Plug 'L3MON4D3/LuaSnip'
  Plug 'rafamadriz/friendly-snippets'
  Plug 'lunarvim/darkplus.nvim'
  Plug 'lunarvim/colorschemes'

vim.call('plug#end')
