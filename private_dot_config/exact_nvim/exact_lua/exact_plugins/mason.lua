return {
  {
    "williamboman/mason.nvim",
    cmd = "Mason",
    opts = {},
    keys = {
      "<leader>pm",
      "<cmd>Mason<cr>",
      desc = "Mason ",
    },
  },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "lua_ls",
        "cssls",
        "html",
        "eslint",
        "harper_ls",
        "vtsls",
        "jsonls",
        "marksman",
        "yamlls",
        "bashls",
        "biome",
        "nil_ls",
      },
    },
  },
}
