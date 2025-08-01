local map = vim.keymap.set

-- Manipulate how to create new tabs
map("n","<leader>tn", ":tabnew<CR>", {desc = "Created New Tab"})
map("n","<leader>tc", ":tabclose<CR>", {desc = "Closed Open Tab"})
map("n","<leader>tl", "gt",{desc = "Next Tab"})
map("n","<leader>th", "gT",{desc = "Previous Tab"})
