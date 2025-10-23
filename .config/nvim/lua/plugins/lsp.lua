return {
	"williamboman/mason-lspconfig.nvim", -- Connects mason <-> lspconfig
	dependencies = {
		{
			"williamboman/mason.nvim", -- Installs LSPs, DAPs, etc.
			build = ":MasonUpdate",
			lazy = false,
		},

		{
			"neovim/nvim-lspconfig", -- Core LSP
			lazy = false,
		},
	},
	lazy = false,
	config = function()
		require("mason").setup()
		require("mason-lspconfig").setup({
			ensure_installed = {
				"pyright",
				"rust_analyzer",
				"bashls",
				"jsonls",
				"yamlls",
				"sqlls",
			},
			automatic_installation = false,
		})

	end,
} 
