return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
  config = function()
    require("tokyonight").setup({
      style = "storm",
      transparent = false,
      terminal_colors = true,
      styles = {
        comments = {italic = false},
        keywords = {bold = true},
        functions = {},
        variables = {},
        sidebars = "dark",
        floats = "dark"
      },
      dim_inactives = true,
    })


    vim.cmd("colorscheme tokyonight")
  end
}
