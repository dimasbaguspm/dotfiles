return {
  {
    "yioneko/nvim-vtsls",
    lazy = true,
    init = function()
      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(args)
          local bufnr = args.buf
          local client = vim.lsp.get_client_by_id(args.data.client_id)

          if client and client.name == "vtsls" then
            vim.keymap.set(
              "n",
              "<leader>ci",
              "<Cmd>VtsExec add_missing_imports<CR>",
              { buffer = bufnr, desc = "Add missing imports" }
            )
            vim.keymap.set(
              "n",
              "<leader>co",
              "<Cmd>VtsExec organize_imports<CR>",
              { buffer = bufnr, desc = "Organize imports" }
            )
            vim.keymap.set(
              "n",
              "<leader>cr",
              "<Cmd>VtsExec remove_unused<CR>",
              { buffer = bufnr, desc = "Remove unused variables" }
            )
            vim.keymap.set("n", "<leader>F", "<Cmd>VtsExec fix_all<CR>", { buffer = bufnr, desc = "Fix all" })
          end
        end,
      })
    end,
    opts = {},
    config = function(_, opts)
      require("vtsls").config(opts)
    end,
  },
}
