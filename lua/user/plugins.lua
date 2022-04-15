local fn = vim.fn

-- Automatically install pakcer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

local status_ok, packer = pcall(require, "packer")
if not status_ok then
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

  use "vim-airline/vim-airline"
  use "vim-airline/vim-airline-themes"
  -- use "itchyny/lightline.vim"
  use "preservim/nerdtree"
  use "tiagofumo/vim-nerdtree-syntax-highlight"
  use "kyazdani42/nvim-web-devicons"
  use "ryanoasis/vim-devicons"

  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-nvim-lua'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'

  use 'saadparwaiz1/cmp_luasnip'
  use 'L3MON4D3/LuaSnip'
  use 'rafamadriz/friendly-snippets'

  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'

  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-media-files.nvim'
  use "nvim-telescope/telescope-ui-select.nvim"

  use {
	'nvim-treesitter/nvim-treesitter',
	run = ":TSUpdate",
  }

  use 'cxw42/editorconfig-vim'
  use 'morhetz/gruvbox'
  -- use "ellisonleao/gruvbox.nvim"

  use 'rhlobo/vim-super-retab'
  use "ahmedkhalf/project.nvim"

  use 'lewis6991/impatient.nvim'
  use 'karb94/neoscroll.nvim'

  use 'JoosepAlviste/nvim-ts-context-commentstring'
  use "numToStr/Comment.nvim"

  use "moll/vim-bbye"
  use "akinsho/bufferline.nvim"

  use "goolord/alpha-nvim"
  use "Shatur/neovim-session-manager"

  if PACKER_BOOTSTRAP then
	require("packer").sync()
  end
end)
