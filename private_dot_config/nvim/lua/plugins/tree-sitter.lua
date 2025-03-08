return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      -- Add languages to be installed here that you want installed for treesitter
      ensure_installed = {
        "lua",
        "rust",
        "tsx",
        "typescript",
        "vimdoc",
        "vim",
        "angular",
        "css",
        "html",
        "json",
        "sql",
        "yaml",
        "javascript",
      },
      sync_install = false,
      -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
      auto_install = false,

      highlight = {
        enable = true,
        disable = function(_, bufnr)
          return vim.api.nvim_buf_line_count(bufnr) > 10000
        end,
        additional_vim_regex_highlighting = false,
      },
    })
  end,
}
