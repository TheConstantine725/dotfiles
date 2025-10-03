local M = {}

function M.setup()
  vim.api.nvim_create_autocmd("FileType", {
    pattern = { "lua", "python","rust", "go"},
    callback = function()
      vim.opt_local.tabstop = 4
      vim.opt_local.shiftwidth = 4
      vim.opt_local.expandtab = true
    end,
  })

  vim.api.nvim_create_autocmd("FileType", {
    pattern = { "html", "css", "json" },
    callback = function()
      vim.opt_local.tabstop = 2
      vim.opt_local.shiftwidth = 2
      vim.opt_local.expandtab = true
    end,
  })
end

return M

