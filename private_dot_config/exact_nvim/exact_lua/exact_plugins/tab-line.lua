return {
  {
    "romgrk/barbar.nvim",
    dependencies = {
      "lewis6991/gitsigns.nvim", -- OPTIONAL: for git status
      "nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
    },
    lazy = false,
    opts = {
      animation = true,
      insert_at_start = true,
      icons = {
        pinned = { button = "", filename = true },
        diagnostics = {
          [vim.diagnostic.severity.ERROR] = { enabled = true, icon = "ﬀ" },
          [vim.diagnostic.severity.WARN] = { enabled = true },
          [vim.diagnostic.severity.INFO] = { enabled = true },
          [vim.diagnostic.severity.HINT] = { enabled = true },
        },
        gitsigns = {
          added = { enabled = true, icon = "+" },
          changed = { enabled = true, icon = "~" },
          deleted = { enabled = true, icon = "-" },
        },
      },
    },
    keys = {
      {
        "<A-<>",
        "<cmd>BufferPrevious<cr>",
        desc = "Go to Prev Buffer",
        noremap = true,
        silent = true,
      },
      {
        "<A->>",
        "<cmd>BufferNext<cr>",
        desc = "Go to Next Buffer",
        noremap = true,
        silent = true,
      },
      {
        "<A-.>",
        "<cmd>BufferMoveNext<cr>",
        desc = "Move Buffer to Right",
        noremap = true,
        silent = true,
      },
      {
        "<A-,>",
        "<cmd>BufferMovePrevious<cr>",
        desc = "Move Buffer to Left",
        noremap = true,
        silent = true,
      },
      {
        "<A-p>",
        "<cmd>BufferPin<cr>",
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
        "<cmd>BufferCloseAllButCurrentOrPinned<cr>",
        desc = "Wipe All Except Current",
        noremap = true,
        silent = true,
      },
    },
  },
}
