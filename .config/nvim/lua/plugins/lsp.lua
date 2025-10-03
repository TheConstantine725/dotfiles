return {
  {
    "neovim/nvim-lspconfig", -- Core LSP
  },
  {
    "williamboman/mason.nvim", -- Installs LSPs, DAPs, etc.
    build = ":MasonUpdate",
  },
  {
    "williamboman/mason-lspconfig.nvim", -- Connects mason <-> lspconfig
    dependencies = {
      "williamboman/mason.nvim",
      "neovim/nvim-lspconfig",
    },
    config = function()
      require("mason").setup()

      require("mason-lspconfig").setup({
        ensure_installed = {
          -- "ruff",
          "rust_analyzer",
          "bashls",
          "jsonls",
          "yamlls",
          "sqlls",
        },
        automatic_installation = false,
      })

      -- Comments for older features.

      -- local lspconfig = require("lspconfig")

      -- local servers = {
      --   -- pyright = {},
      --   rust_analyzer = {},
      --   bashls = {},
      --   jsonls = {},
      --   yamlls = {},
      --   sqlls = {},
      -- }
      --
      -- for server, config in pairs(servers) do
      --   lspconfig[server].setup(config)
      -- end
    end,
  },
}
