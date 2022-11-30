local status_ok, luasnip = pcall(require, "luasnip")
if not status_ok then
  return
end

luasnip.config.set_config({
  -- This tells LuaSnip to remember to keep around the last snippet.
  -- You can jump back into it even if you move outside of the selection
	history = true,
	-- Update more often, :h events for more info.
	updateevents = "TextChanged,TextChangedI",
})

-- Load VSCode-like snippets
require("luasnip.loaders.from_vscode").load({ paths = { "~/.config/nvim/vsc-snippets" } })

-- <c-s> is my expansion key
-- This will expand the current item or jump to the next item within the snippet.
vim.keymap.set({ "i", "s" }, "<c-s>", function()
  if ls.expand_or_jumpable() then
    ls.expand_or_jump()
  end
end, { silent = true })

-- Shorcut to source my luasnips file again, which will reload my snippets
-- TODO, NOT WORKING
vim.keymap.set("n", "<leader><leader>s", "<cmd>source ~/.config/nvim/plugin/LuaSnip.lua<CR>")
