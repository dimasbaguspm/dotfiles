local settings = {
  warm_no_results = false,
  open_no_results = true,
  win = {
    type = "split",
    position = "left",
    size = 40,
  },
}

return {
  {
    "folke/trouble.nvim",
    opts = {
      modes = {
        diagnostics = settings,
        quickfix = settings,
        loclist = settings,
        lsp_references = settings,
        symbols = settings,
      },
    },
    cmd = "Trouble",
    keys = {
      {
        "<leader>dx",
        "<cmd>Trouble diagnostics toggle<cr>",
        desc = "Diagnostics",
      },
      {
        "<leader>ds",
        "<cmd>Trouble symbols toggle<cr>",
        desc = "Symbols",
      },
      {
        "<leader>dl",
        "<cmd>Trouble lsp toggle<cr>",
        desc = "LSP",
      },
      {
        "<leader>dq",
        "<cmd>Trouble quickfix toggle<cr>",
        desc = "Quickfix",
      },
      {
        "<leader>dL",
        "<cmd>Trouble loclist toggle<cr>",
        desc = "Loclist",
      },
    },
  },
}
