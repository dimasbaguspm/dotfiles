return {
  {
    "akinsho/bufferline.nvim",
    version = "*",
    lazy = false,
    dependencies = "nvim-tree/nvim-web-devicons",
    opts = {
      options = {
        separator_style = "slant",
        diagnostics = "nvim_lsp",
        diagnostics_indicator = function(count, level)
          local icon = level:match("error") and " " or " "
          return " " .. icon .. count
        end,
      },
    },
    keys = {
      {
        "<A-<>",
        "<cmd>BufferLineCyclePrev<cr>",
        desc = "Go to Prev Buffer",
        noremap = true,
        silent = true,
      },
      {
        "<A->>",
        "<cmd>BufferLineCycleNext<cr>",
        desc = "Go to Next Buffer",
        noremap = true,
        silent = true,
      },
      {
        "<A-.>",
        "<cmd>BufferLineMoveNext<cr>",
        desc = "Move Buffer to Right",
        noremap = true,
        silent = true,
      },
      {
        "<A-,>",
        "<cmd>BufferLineMovePrev<cr>",
        desc = "Move Buffer to Left",
        noremap = true,
        silent = true,
      },
      {
        "<A-p>",
        "<cmd>BufferLineTogglePin<cr>",
        desc = "Pin Buffer",
        noremap = true,
        silent = true,
      },
      {
        "<A-c>",
        "<cmd>:bd<cr>",
        desc = "Close Current Buffer",
        noremap = true,
        silent = true,
      },
      {
        "<A-w>",
        "<cmd>BufferLineCloseOthers<cr>",
        desc = "Wipe All Except Current",
        noremap = true,
        silent = true,
      },
    },
  },
}
