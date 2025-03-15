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
          "|  \\                       |  \\     |  \\         ",
          "| ▓▓       ______   _______| ▓▓____  \\▓▓ ______  ",
          "| ▓▓      /      \\ /       \\ ▓▓    \\|  \\|      \\ ",
          "| ▓▓     |  ▓▓▓▓▓▓\\  ▓▓▓▓▓▓▓ ▓▓▓▓▓▓▓\\ ▓▓ \\▓▓▓▓▓▓\\",
          "| ▓▓     | ▓▓    ▓▓\\▓▓    \\| ▓▓  | ▓▓ ▓▓/      ▓▓",
          "| ▓▓_____| ▓▓▓▓▓▓▓▓_\\▓▓▓▓▓▓\\ ▓▓  | ▓▓ ▓▓  ▓▓▓▓▓▓▓",
          "| ▓▓     \\\\▓▓     \\       ▓▓ ▓▓  | ▓▓ ▓▓\\▓▓    ▓▓",
          " \\▓▓▓▓▓▓▓▓ \\▓▓▓▓▓▓▓\\▓▓▓▓▓▓▓ \\▓▓   \\▓▓\\▓▓ \\▓▓▓▓▓▓▓",
          "",
        },
        project = {
          enable = false,
        },
        mru = {
          enable = false,
        },
        shortcut = {},
        footer = {
          "",
          "@dimasbaguspm 🚀 ",
          "",
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
