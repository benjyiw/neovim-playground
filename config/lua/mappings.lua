local opts = { remap = false }

-- copy to global clipboard with Y
vim.keymap.set("v", "Y", "\"+y")

-- search replace current highlighted word
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- move highlighted text up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- center search
vim.keymap.set("n", "n", "nzzzv", opts)
