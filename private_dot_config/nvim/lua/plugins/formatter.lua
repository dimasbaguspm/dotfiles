return {
  {
    "jay-babu/mason-null-ls.nvim",
    dependencies = {
      "williamboman/mason.nvim",
      "nvimtools/none-ls.nvim",
    },
    opts = {
      ensure_installed = { "stylua", "rustfmt", "prettierd", "alejandra" },
    },
  },
  {
    "stevearc/conform.nvim",
    dependencies = { "williamboman/mason.nvim" },
    event = { "BufWritePre" },
    cmd = "ConformInfo",
    keys = {
      {
        "<leader>cf",
        function()
          require("conform").format({ async = true, lsp_fallback = true })
        end,
        mode = "",
        desc = "Format Code",
      },
    },
    init = function()
      vim.o.formatexpr = [[v:lua.require("conform").formatexpr()]]
    end,

    opts = {
      formatters_by_ft = {
        lua = { "stylua" },
        rust = { "rustfmt", lsp_format = "fallback" },
        javascript = { "prettierd", "biome", stop_after_first = true },
        typescript = { "prettierd", "biome", stop_after_first = true },
        typescriptreact = { "prettierd", "biome", stop_after_first = true },
        html = { "prettierd", "biome", stop_after_first = true },
        css = { "prettierd", "biome", stop_after_first = true },
        nix = { "alejandra", stop_after_first = true },
        markdown = { "prettierd", stop_after_first = true },
        json = { "prettierd", stop_after_first = true },
      },
      format_on_save = {
        timeout_ms = 500,
        lsp_fallback = true,
      },
    },
  },
}
