return 
  {'akinsho/bufferline.nvim', 
    version = "*", 
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
      require("bufferline").setup({  options = {
    mode = "tabs",
    diagnostics = "nvim_lsp",
    show_buffer_close_icons = false,
    show_close_icon = true,
    separator_style = "slant",
  },})
    end,
  }
