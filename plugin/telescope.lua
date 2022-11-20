require('telescope').setup({
  pickers = {
    buffers = {
      sort_lastused = true,
      mappings = {
        i = {
          ['<c-d>'] = require('telescope.actions').delete_buffer,
        },
        n = {
          ['<c-d>'] = require('telescope.actions').delete_buffer,
        },
      },
    },
  },
})

require('telescope').load_extension('file_browser')
vim.keymap.set('n', '<leader>t', ':Telescope<CR>', opts)
vim.keymap.set('n', '<leader>bf', ':Telescope buffers<CR>', opts)
vim.keymap.set('n', '<leader>ff', ':Telescope find_files<CR>', opts)
