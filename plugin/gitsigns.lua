local status_ok, gitsigns = pcall(require, "gitsigns")
if not status_ok then
  return
end

gitsigns.setup({
  on_attach = function(bufnr)
    local function map(mode, lhs, rhs, opts)
        opts = vim.tbl_extend('force', {noremap = true, silent = true}, opts or {})
        vim.api.nvim_buf_set_keymap(bufnr, mode, lhs, rhs, opts)
    end

    -- hunks

    -- -- stage_hunk
    map('n', '<leader>ghs', ':Gitsigns stage_hunk<CR>')
    map('v', '<leader>ghs', ':Gitsigns stage_hunk<CR>')


    -- -- undo_stage_hunk
    map('n', '<leader>ghu', ':Gitsigns undo_stage_hunk<CR>')
    map('v', '<leader>ghu', ':Gitsigns undo_stage_hunk<CR>')

    -- -- reset_hunk
    vim.keymap.set(
      "n",
     "<leader>ghr",
      ":Gitsigns reset_hunk<CR>",
      { noremap = true, silent = true, buffer = bufnr }
    )

    -- blame

    -- -- blame_line
    vim.keymap.set("n", "<leader>gb", ":Gitsigns blame_line<CR>", {
      noremap = true,
      silent = true,
      buffer = bufnr,
    })
  end,
})
