local opts = { noremap = true, silent = true }

vim.g.mapleader = ' '
vim.keymap.set('n', 'J', '10j', opts)
vim.keymap.set('n', 'K', '10k', opts)
vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', opts)
vim.keymap.set(
  'n',
  '<leader>di',
  vim.diagnostic.open_float,
  { noremap = true, silent = true, desc = 'Show diagnostic' }
)
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', opts)
vim.keymap.set('t', '<C-W>', '<C-\\><C-u><C-W>', opts)
