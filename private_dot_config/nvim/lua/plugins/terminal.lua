return {
  {
    {
      "akinsho/toggleterm.nvim",
      version = "*",
      opts = {
        shade_terminals = true,
        float_opts = {
          border = "curved",
          title_pos = "center",
        },
      },
      keys = {
        {
          "<leader>tf",
          "<cmd>ToggleTerm size=40 dir=git_dir direction=float<cr>",
        },
      },
    },
  },
}
