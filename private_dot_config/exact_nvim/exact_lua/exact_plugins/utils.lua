return {
  {
    "tris203/precognition.nvim",
    enabled = false,
    opts = {
      showBlankVirtLine = false,
      gutterHints = {
        G = { text = "G", prio = 0 },
        gg = { text = "gg", prio = 0 },
        PrevParagraph = { text = "{", prio = 0 },
        NextParagraph = { text = "}", prio = 0 },
      },
    },
  },
  {
    "sphamba/smear-cursor.nvim",
    enabled = false,
    opts = {},
  },
  {
    "catgoose/nvim-colorizer.lua",
    event = "BufReadPre",
    opts = {},
  },
  {
    "echasnovski/mini.move",
    version = "*",
    opts = {},
  },
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    opts = {},
  },
  {
    "windwp/nvim-ts-autotag",
    event = "InsertEnter",
    opts = {},
  },
  {
    "kylechui/nvim-surround",
    version = "*",
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({})
    end,
  },
  {
    "folke/todo-comments.nvim",
    lazy = false,
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
    keys = {
      {
        "<leader>ft",
        "<cmd>TodoTelescope<cr>",
        desc = "Find TODO comments",
      },
    },
  },
  {
    "numToStr/Comment.nvim",
    opts = {},
  },
  {
    "lewis6991/gitsigns.nvim",
    opts = {
      current_line_blame = true,
      current_line_blame_opts = {
        virt_text = true,
        virt_text_pos = "eol",
        delay = 500,
        ignore_whitespace = false,
        virt_text_priority = 100,
        use_focus = true,
      },
    },
  },
  {
    "nvimdev/lspsaga.nvim",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("lspsaga").setup({
        code_action = {
          show_server_name = true,
          extend_gitsigns = true,
        },
        symbol_in_winbar = {
          enable = true,
          separator = " › ",
          hide_keyword = false,
          ignore_patterns = nil,
          show_file = true,
          folder_level = 1,
          color_mode = true,
          delay = 300,
        },
        lightbulb = {
          enable = true,
          sign = false,
          debounce = 10,
          sign_priority = 40,
          virtual_text = true,
          enable_in_insert = true,
          ignore = {
            clients = {},
            ft = {},
          },
        },
      })
    end,
  },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    },
    opts = {
      render = "minimal",
    },
    keys = {
      {
        "<leader>nn",
        "<cmd>Noice telescope<cr>",
        desc = "Find Notifications",
      },
      {
        "<leader>nd",
        "<cmd>Noice dismiss<cr>",
        desc = "Dismiss Notifications",
      },
    },
  },
  {
    "karb94/neoscroll.nvim",
    opts = {},
  },
}
