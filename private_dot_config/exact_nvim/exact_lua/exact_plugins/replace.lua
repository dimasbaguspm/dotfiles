return {
  {
    "nvim-pack/nvim-spectre",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "folke/trouble.nvim",
    },
    opts = {},
    keys = {
      {
        "<leader>ss",
        '<cmd>lua require("spectre").toggle()<cr>',
        desc = "Open Spectre",
      },
      {
        "<leader>sw",
        '<cmd>lua require("spectre").open_visual({select_word = true})<cr>',
        mode = "n",
        desc = "Search word",
      },
      {
        "<leader>sw",
        '<cmd>lua require("spectre").open_visual()<cr>',
        mode = "v",
        desc = "Search word",
      },
      {
        "<leader>sf",
        "<cmd>lua require('spectre').open_file_search({select_word=true})<cr>",
        mode = "n",
        desc = "Search On File",
      },
    },
  },
}
