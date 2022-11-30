local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
  return
end

lualine.setup({
  options = {
    globalstatus = true,
  },
  sections = {
    lualine_c = {
      {
        "filename",
        file_status = true,
        path = 3,
      },
    },
  },
})
