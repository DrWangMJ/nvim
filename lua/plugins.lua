-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
  -- Packer can manage itself
  use("wbthomason/packer.nvim")
  use("sainnhe/everforest")

  -- lsp
  use("williamboman/mason.nvim")
  use("williamboman/mason-lspconfig.nvim")
  use("neovim/nvim-lspconfig")

  -- telescope
  use("nvim-lua/plenary.nvim")
  use("nvim-telescope/telescope.nvim")
  use("nvim-telescope/telescope-file-browser.nvim")
  use("kyazdani42/nvim-web-devicons")

  -- completion
  use("hrsh7th/cmp-nvim-lsp")
  use("hrsh7th/cmp-buffer")
  use("hrsh7th/cmp-path")
  use("hrsh7th/cmp-cmdline")
  use("hrsh7th/cmp-nvim-lua")
  use("hrsh7th/nvim-cmp")
  use("L3MON4D3/LuaSnip")
  use("saadparwaiz1/cmp_luasnip")
  use("onsails/lspkind-nvim")

  -- formation
  use("jose-elias-alvarez/null-ls.nvim")
  use("jayp0521/mason-null-ls.nvim")

  use({
    "nvim-treesitter/nvim-treesitter",
  })
  use("akinsho/toggleterm.nvim")

  use("max397574/better-escape.nvim")
  use("goolord/alpha-nvim")
  use("ahmedkhalf/project.nvim")

  -- easy motion
  use({
    "phaazon/hop.nvim",
    branch = "v2",
  })

  use({
    "kylechui/nvim-surround",
    tag = "*",
    config = function()
      require("nvim-surround").setup({})
    end,
  })
  use("ethanholz/nvim-lastplace")

  use({ "akinsho/bufferline.nvim", tag = "v3.*", requires = "kyazdani42/nvim-web-devicons" })

  -- use({
  --   "lewis6991/gitsigns.nvim",
  --   -- tag = 'release' -- To use the latest release (do not use this if you run Neovim nightly or dev builds!)
  -- })

  use("windwp/nvim-autopairs")
  use("windwp/nvim-ts-autotag")
  use("numToStr/Comment.nvim")

  -- key mapping
  use("folke/which-key.nvim")
end)
