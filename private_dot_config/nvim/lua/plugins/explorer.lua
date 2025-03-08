return {
  {
    "mikavilpas/yazi.nvim",
    event = "VeryLazy",
    dependencies = { "folke/snacks.nvim", lazy = true },
    keys = {
      {
        "<leader>ee",
        mode = { "n", "v" },
        "<cmd>Yazi<cr>",
        desc = "Open Explorer",
      },
      {
        "<leader>ew",
        "<cmd>Yazi cwd<cr>",
        desc = "Open Explorer (Working Dir)",
      },
    },
    opts = {
      open_for_directories = false,
      keymaps = {
        show_help = "<f1>",
      },
    },
  },
}
