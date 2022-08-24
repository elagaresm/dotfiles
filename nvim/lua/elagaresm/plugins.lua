local status, packer = pcall(require, "packer")
if not status then
	print("Packer is not installed")
	return
end

vim.cmd([[packadd packer.nvim]])

packer.startup({
	function(use)
		use("wbthomason/packer.nvim")

		use("nvim-lualine/lualine.nvim") -- Statusline

		use("olimorris/onedarkpro.nvim") -- Colortheme

		-- LSP
		use("williamboman/mason.nvim") -- Lsp Installer
		use("williamboman/mason-lspconfig.nvim") -- closes some gaps that exist between mason.nvim and lspconfig.
		use("neovim/nvim-lspconfig") -- Collection of configurations for built-in LSP client
		use("hrsh7th/nvim-cmp") -- Autocompletion plugin
		use("hrsh7th/cmp-buffer") -- cmp for buffer words
		use("hrsh7th/cmp-nvim-lsp") -- LSP source for nvim-cmp
		use("hrsh7th/cmp-nvim-lsp-signature-help")
		use("L3MON4D3/LuaSnip") -- Snippets plugin
		use("saadparwaiz1/cmp_luasnip") -- Snippets source for nvim-cmp
		use("rafamadriz/friendly-snippets")
		use("onsails/lspkind.nvim") -- vscode-like pictograms

		use({
			"nvim-treesitter/nvim-treesitter",
			run = ":TSUpdate",
		})

		-- Utilities
		use({
			"kylechui/nvim-surround",
			tag = "*", -- Use for stability; omit to use `main` branch for the latest features
		})
		use("windwp/nvim-autopairs") -- Autopairs
		use("glepnir/lspsaga.nvim") -- LSP UIs
		use("windwp/nvim-ts-autotag") -- Autotag
		use("tpope/vim-commentary")

		-- Telescope
		use("nvim-lua/plenary.nvim")
		use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })
		use({ "nvim-telescope/telescope.nvim", tag = "0.1.0", requires = { { "nvim-lua/plenary.nvim" } } })
		use({ "nvim-telescope/telescope-file-browser.nvim" })
		use("kyazdani42/nvim-web-devicons") -- File icons

		use("akinsho/nvim-bufferline.lua") -- Nvim tabs

		use("jose-elias-alvarez/null-ls.nvim")
	end,
	config = {
		display = {
			open_fn = function()
				return require("packer.util").float({ border = "rounded" })
			end,
		},
	},
})
