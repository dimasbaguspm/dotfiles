return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "archibate/lualine-time", "nvim-tree/nvim-web-devicons" },
    opts = {
      options = {
        theme = "iceberg_dark",
        globalstatus = true,
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch", "diff", "diagnostics" },
        lualine_c = { "filename" },
        lualine_x = { "encoding", "fileformat", "filetype", "ctime" },
        lualine_y = { "progress" },
        lualine_z = { "location" },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { "filename" },
        lualine_x = { "ctime" },
        lualine_y = {},
        lualine_z = { "location" },
      },
    },
  },
}
