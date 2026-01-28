return {
	"nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
    lazy = false,
    config = function () 
      require("nvim-treesitter.configs").setup {
          ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "python", "rust", "go" },
          sync_install = false,
          highlight = { enable = true ,
			},
          indent = { enable = true },  
	incremental_selection = {
        enable = true, 
        keymaps = {
          init_selection = "<Enter>",
          node_incremental = "<Enter>",
          scope_incremental = false,
          node_decremental = "<Backspace>",
        },
}
}
    end

}
