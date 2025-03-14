return {
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    -- enabled = false,
    opts = {
      indent = { enabled = true },
      statuscolumn = { enabled = true },
      words = { enabled = true },
    },
    keys = {
      {
        "<leader>fc",
        function()
          Snacks.picker.command_history()
        end,
        desc = "Find Command History",
      },
    },
  },
}
