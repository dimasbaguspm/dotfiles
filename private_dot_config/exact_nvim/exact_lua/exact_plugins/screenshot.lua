return {
  {
    "mistricky/codesnap.nvim",
    build = "make",
    config = function()
      require("codesnap").setup({
        has_breadcrumbs = true,
        has_line_number = true,
        watermark = "",
        bg_theme = "summer",
      })
    end,
    keys = { { "<leader>cs", "<cmd>CodeSnap<cr>", desc = "Screenshot highlighted code", mode = "x" } },
  },
}
