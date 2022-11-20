local luasnip = require('luasnip')

require('luasnip.loaders.from_snipmate').load()

vim.keymap.set(
  'i',
  '<Tab>',
  'luasnip#expand_or_jumpable() ? "<Plug>luasnip-expand-or-jump" : "<Tab>"',
  { silent = true, expr = true, remap = true }
)

luasnip.env_namespace('FILE', { vars = {
  NAME = function()
    return vim.fn.expand('%:t:r')
  end,
} })
