local opts = { noremap = true, silent = true }
vim.keymap.set({ "n", "v" }, "<leader>/", ":Commentary<CR>", opts)
