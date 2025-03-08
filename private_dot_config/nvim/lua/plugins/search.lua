return {
  {
    "nvim-telescope/telescope.nvim",
    cmd = "Telescope",
    tag = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim", { "nvim-telescope/telescope-fzf-native.nvim", build = "make" } },
    opts = {
      extensions = {
        fzf = {
          fuzzy = true,
          override_generic_sorter = true,
          override_file_sorter = true,
          case_mode = "smart_case",
        },
      },
    },
    config = function(_, opts)
      local telescope = require("telescope")
      telescope.setup(opts)
      telescope.load_extension("fzf")
    end,
    keys = {
      {
        "<leader>ff",
        "<cmd>Telescope find_files<cr>",
        desc = "Find Files",
      },
      {
        "<leader>fb",
        "<cmd>Telescope buffers<cr>",
        desc = "Find Buffers",
      },
      {
        "<leader>fg",
        "<cmd>Telescope live_grep<cr>",
        desc = "Find Live Grep",
      },
      {
        "<leader>fr",
        function()
          require("telescope.builtin").lsp_references()
        end,
        desc = "Find References",
      },
      {
        "<leader>fi",
        function()
          require("telescope.builtin").lsp_implementations()
        end,
        desc = "Find Implementations",
      },
      {
        "<leader>fd",
        function()
          require("telescope.builtin").lsp_definitions()
        end,
        desc = "Find Definitions",
      },
    },
  },
}
