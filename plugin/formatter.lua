local status_ok, formatter = pcall(require, "formatter")
if not status_ok then
  return
end

formatter.setup({
  filetype = {
    lua = {
      require("formatter.filetypes.lua").stylua,
    },
    typescriptreact = {
      require("formatter.filetypes.typescriptreact").prettier,
    },
    typescript = {
      require("formatter.filetypes.typescriptreact").prettier,
    },
    javascript = {
      require("formatter.filetypes.javascript").prettier,
    },
    rust = function()
      return {
        exe = "rustfmt --edition 2021",
        stdin = true,
      }
    end,
  },
})

vim.api.nvim_create_autocmd({ "BufWritePost" }, { command = "FormatWrite" })
