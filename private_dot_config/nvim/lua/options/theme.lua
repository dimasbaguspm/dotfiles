vim.api.nvim_create_autocmd("ColorScheme", {
  callback = vim.schedule_wrap(function()
    vim.api.nvim_set_hl(0, "BufferTabpageFill", { ctermbg = "black" })
  end),
})
