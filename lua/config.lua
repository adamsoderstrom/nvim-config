vim.wo.relativenumber = true
vim.o.guifont = "Hack"
vim.opt.colorcolumn = "80,100"

-- highlight on yank
vim.api.nvim_command("au TextYankPost * silent! lua vim.highlight.on_yank()")

-- enter terminal mode when opening a terminal
vim.api.nvim_create_autocmd({ "BufEnter", "TermOpen" }, { pattern = { "term://*" }, command = "startinsert" })

-- Requires node version 16 or 17
-- https://github.com/community/community/discussions/16800#discussioncomment-2848953
vim.g.copilot_node_command = "~/.nvm/versions/node/v16.13.2/bin/node"
