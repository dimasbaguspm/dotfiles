return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      preset = "helix",
      spec = {
        { "<leader>f", group = "Find" },
        { "<leader>p", group = "Packages" },
        { "<leader>e", group = "Explorer" },
        { "<leader>c", group = "Code" },
        { "<leader>g", group = "Git" },
        { "<leader>s", group = "Search" },
        { "<leader>d", group = "Diagnostics" },
        { "<leader>t", group = "Terminal" },
        { "<leader>R", group = "Rest Client" },
      },
    },
    keys = {
      {
        "<leader>pp",
        "<cmd>Lazy<cr>",
        desc = "Plugin Manager",
      },
    },
  },
}
