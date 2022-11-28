local opts = { noremap = true, silent = true }

vim.g.mapleader = " "

vim.keymap.set("i", "jk", "<Esc>", opts)

vim.keymap.set("n", "<leader>bd", ":%bd|e#<CR>", opts)
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", opts)
vim.keymap.set("n", "gh", vim.diagnostic.open_float, { noremap = true, silent = true, desc = "Show diagnostic" })

vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", opts)
vim.keymap.set("t", "<C-W>", "<C-\\><C-u><C-W>", opts)
