require('nvim-tree').setup({
  sync_root_with_cwd = true,
  respect_buf_cwd = true,
  view = {
    adaptive_size = true,
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
