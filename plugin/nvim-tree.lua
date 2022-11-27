require('nvim-tree').setup({
  sync_root_with_cwd = true,
  respect_buf_cwd = true,
  view = {
    adaptive_size = true,
    mappings = {
      custom_only = false,
      list = {
        { key = { 'l', '<CR>', 'o' }, cb = require('nvim-tree.lib').edit },
        { key = 'h', cb = require('nvim-tree.lib').close_node },
        { key = 'v', cb = require('nvim-tree.lib').vsplit },
        -- { key = 's', cb = require('nvim-tree.lib').split },
        -- { key = 't', cb = require('nvim-tree.lib').tabnew },
        -- { key = 'i', cb = require('nvim-tree.lib').cd },
        -- { key = 'r', cb = require('nvim-tree.lib').refresh },
        -- { key = 'a', cb = require('nvim-tree.lib').create },
        -- { key = 'd', cb = require('nvim-tree.lib').remove },
        -- { key = 'R', cb = require('nvim-tree.lib').rename },
      },
    },
  },
  actions = {
    open_file = {
      quit_on_open = true,
      window_picker = {
        enable = false,
      },
    },
  },
})

local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<leader>e', ':NvimTreeFindFileToggle<CR>', opts)
