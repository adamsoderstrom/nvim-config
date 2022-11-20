vim.wo.relativenumber = true
-- highlight on yank
vim.api.nvim_command('au TextYankPost * silent! lua vim.highlight.on_yank()')
vim.o.guifont = 'Hack'
-- enter terminal mode when opening a terminal
vim.api.nvim_create_autocmd({ 'BufEnter', 'TermOpen' }, { pattern = { 'term://*' }, command = 'startinsert' })
