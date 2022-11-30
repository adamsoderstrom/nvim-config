local status_ok, gitsigns = pcall(require, "gitsigns")
if not status_ok then
  return
end

gitsigns.setup({
  on_attach = function(bufnr)
    vim.keymap.set(
      "n",
      "<leader>ghr",
      ":Gitsigns reset_hunk<CR>",
      { noremap = true, silent = true, buffer = bufnr }
    )

    vim.keymap.set("n", "<leader>gb", ":Gitsigns blame_line<CR>", {
      noremap = true,
      silent = true,
      buffer = bufnr,
    })
  end,
})
