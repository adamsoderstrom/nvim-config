local fn = vim.fn

-- Automatically install packer
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

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Install your plugins here
return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")

	-- Language server protocol related
	use({
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	})

	-- Fuzzy searching
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.0",
		requires = { "nvim-lua/plenary.nvim" },
	})
	use("nvim-lua/plenary.nvim")
	use("nvim-telescope/telescope-file-browser.nvim")

	-- File explorer tree
	-- Also install Ripgrep on your system, Telescope will automatically pick it up.
	-- Ripgrep will respect gitignore rules and automatically skip hidden files/directories and binary files.
	-- https://github.com/nvim-telescope/telescope.nvim/issues/522#issuecomment-777384452
	-- https://github.com/BurntSushi/ripgrep#installation
	use({
		"nvim-tree/nvim-tree.lua",
		requires = { "nvim-tree/nvim-web-devicons" },
	})
	use("nvim-tree/nvim-web-devicons")

	-- Theme and colors
	use("EdenEast/nightfox.nvim")
	use("nvim-lualine/lualine.nvim")

	-- Nicer tabs
	use("nanozuki/tabby.nvim")

	-- Keybindings suggestions
	use("folke/which-key.nvim")

	-- Github Copilot
	use("github/copilot.vim")

	-- Better commenting
	use("JoosepAlviste/nvim-ts-context-commentstring")
	use("tpope/vim-commentary")

	-- Smooth scrolling
	use("karb94/neoscroll.nvim")

	-- Snippet engine
	use("L3MON4D3/LuaSnip")

	-- Show git change (change, delete, add) signs in vim sign column
	use("lewis6991/gitsigns.nvim")

	-- Format runner
	use("mhartington/formatter.nvim")

	-- Git commands inside vim
	use("tpope/vim-fugitive")
	use("tpope/vim-rhubarb")

	-- EditorConfig and such
	use("tpope/vim-sleuth")

	-- Delete/change/add parentheses/quotes/XML-tags/much more with ease
	use("tpope/vim-surround")

	-- Additional powerful text objects
	use("wellle/targets.vim")

	-- ???
	use("windwp/nvim-autopairs")

	-- Use treesitter to auto close and auto rename html tag
	use("windwp/nvim-ts-autotag")

	-- Treesitter configurations and abstraction layer
	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
