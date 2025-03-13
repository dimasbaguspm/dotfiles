return {
  {
    "nvimdev/dashboard-nvim",
    dependencies = { { "nvim-tree/nvim-web-devicons" } },
    event = "VimEnter",
    opts = {
      theme = "hyper",
      buffer_name = "BAR",
      config = {
        header = {
          "",
          " __    ____   __ __  __ __  ___ ",
          " ||    ||    (( \\ ||  || || // \\\\",
          "||    ||== \\\\  ||==|| || ||=||",
          " ||__| ||___ \\\\_))||  || || || ||",
          "",
          "",
        },
        project = {
          enable = false,
        },
        shortcut = {
          { desc = "󰊳 Update", group = "@property", action = "Lazy update", key = "u" },
        },
      },
      hide = {
        statusline = true,
        tabline = true,
        winbar = true,
      },
    },
  },
}
