vim.api.nvim_create_autocmd("colorscheme", {
  callback = vim.schedule_wrap(function()
    vim.api.nvim_set_hl(0, "buffertabpagefill", { ctermbg = "black" })
  end),
})

return {
  {
    "rebelot/kanagawa.nvim",
    opts = {},
    config = function()
      vim.cmd("colorscheme kanagawa-wave")
    end,
  },
  {
    "xiyaowong/transparent.nvim",
    opts = {},
  },
}
