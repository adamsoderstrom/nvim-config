require('mason-lspconfig').setup({
  ensure_installed = {
    'sumneko_lua',
    'rust_analyzer',
    'tsserver',
    'bashls',
    'cssls',
    'cssmodules_ls',
    'eslint',
    'graphql',
    'html',
    'jsonls',
    'pyright',
  },
})
-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  local bufopts = { noremap = true, silent = true, buffer = bufnr }
  vim.keymap.set('n', '<leader>lD', vim.lsp.buf.declaration, bufopts)
  vim.keymap.set('n', '<leader>ld', vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', '<leader>h', vim.lsp.buf.hover, bufopts)
  vim.keymap.set('n', '<leader>li', vim.lsp.buf.implementation, bufopts)
  vim.keymap.set('n', '<leader>lsh', vim.lsp.buf.signature_help, bufopts)
  -- vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition, bufopts)
  vim.keymap.set('n', '<space>lrn', vim.lsp.buf.rename, bufopts)
  vim.keymap.set('n', '<space>lca', vim.lsp.buf.code_action, bufopts)
  vim.keymap.set('n', '<leader>lrf', vim.lsp.buf.references, bufopts)
end

require('mason-lspconfig').setup_handlers({
  -- The first entry (without a key) will be the default handler
  -- and will be called for each installed server that doesn't have
  -- a dedicated handler.
  function(server_name) -- default handler (optional)
    require('lspconfig')[server_name].setup({
      on_attach = on_attach,
    })
  end,
  -- Next, you can provide a dedicated handler for specific servers.
  -- For example, a handler override for the `rust_analyzer`:
  -- ['rust_analyzer'] = function ()
  --    require('rust-tools').setup {}
  --  end
})
