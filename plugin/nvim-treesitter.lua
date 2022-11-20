require('nvim-treesitter.configs').setup({
  ensure_installed = {
    'css',
    'dockerfile',
    'fish',
    'git_rebase',
    'gitattributes',
    'gitignore',
    'glsl',
    'go',
    'graphql',
    'html',
    'http',
    'javascript',
    'json',
    'lua',
    'php',
    'python',
    'rust',
    'scss',
    'sql',
    'tsx',
    'typescript',
    'yaml',
  },
  highlight = {
    enable = true,
  },
  autotag = {
    enable = true,
  },
  indent = {
    enable = false,
  },
  context_commentstring = {
    enable = true,
  },
})
