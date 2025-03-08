local on_attach = function(client, bufnr)
  local keymap = function(mode, keys, func, opts)
    opts.buffer = bufnr
    vim.keymap.set(mode, keys, func, opts)
  end

  keymap("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
  keymap("n", "gD", vim.lsp.buf.declaration, { desc = "Go to declaration" })
  keymap("n", "gI", vim.lsp.buf.implementation, { desc = "Go to implementation" })
  keymap("n", "gy", vim.lsp.buf.type_definition, { desc = "Go to type definition" })
  keymap("n", "gr", vim.lsp.buf.references, { desc = "List references" })
  keymap("n", "K", vim.lsp.buf.hover, { desc = "Show documentation" })
  keymap("n", "gK", vim.lsp.buf.signature_help, { desc = "Show signature" })
  keymap("i", "<C-k>", vim.lsp.buf.signature_help, { desc = "Show signature" })
end

return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "williamboman/mason.nvim",
      "j-hui/fidget.nvim",
    },
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      local lspconfig = require("lspconfig")

      lspconfig.harper_ls.setup({
        capabilities = capabilities,
        settings = {
          ["harper-ls"] = {
            isolateEnglish = true,
            codeActions = {
              ForceStable = true,
            },
          },
        },
      })

      lspconfig.nil_ls.setup({
        capabilities = capabilities,
        on_attach = on_attach,
      })

      lspconfig.html.setup({
        capabilities = capabilities,
        on_attach = on_attach,
      })

      lspconfig.cssls.setup({
        capabilities = capabilities,
        on_attach = on_attach,
      })

      lspconfig.jsonls.setup({
        capabilities = capabilities,
        on_attach = on_attach,
      })

      lspconfig.eslint.setup({
        on_attach = function(_, bufnr)
          vim.api.nvim_create_autocmd("BufWritePre", {
            buffer = bufnr,
            command = "EslintFixAll",
          })
        end,
      })

      lspconfig.marksman.setup({
        capabilities = capabilities,
        on_attach = on_attach,
      })

      lspconfig.yamlls.setup({
        capabilities = capabilities,
        on_attach = on_attach,
        settings = {
          yaml = {
            schemas = {
              ["https://json.schemastore.org/github-workflow.json"] = "/.github/workflows/*",
            },
          },
        },
      })

      lspconfig.bashls.setup({
        capabilities = capabilities,
        on_attach = on_attach,
      })

      lspconfig.vtsls.setup({
        capabilities = capabilities,
        on_attach = on_attach,
        settings = {
          complete_function_calls = true,
          vtsls = {
            enableMoveToFileCodeAction = true,
            experimental = {
              completion = {
                enableServerSideFuzzyMatch = true,
              },
            },
          },
          typescript = {
            updateImportsOnFileMove = { enabled = "always" },
            suggest = {
              completeFunctionCalls = true,
            },
            inlayHints = {
              parameterNames = { enabled = "literals" },
              parameterTypes = { enabled = true },
              variableTypes = { enabled = true },
              propertyDeclarationTypes = { enabled = true },
              functionLikeReturnTypes = { enabled = true },
              enumMemberValues = { enabled = true },
            },
          },
          javascript = { -- NOTE: just copy the typescript settings here
            updateImportsOnFileMove = { enabled = "always" },
            suggest = {
              completeFunctionCalls = true,
            },
            inlayHints = {
              parameterNames = { enabled = "literals" },
              parameterTypes = { enabled = true },
              variableTypes = { enabled = true },
              propertyDeclarationTypes = { enabled = true },
              functionLikeReturnTypes = { enabled = true },
              enumMemberValues = { enabled = true },
            },
          },
        },
      })

      lspconfig.lua_ls.setup({
        capabilities = capabilities,
        on_attach = on_attach,
        on_init = function(client)
          local path = client.workspace_folders[1].name
          if vim.loop.fs_stat(path .. "/.luarc.json") or vim.loop.fs_stat(path .. "/.luarc.jsonc") then
            return
          end

          client.config.settings.Lua = vim.tbl_deep_extend("force", client.config.settings.Lua, {
            diagnostics = {
              globals = { "vim", "bufnr" },
            },
            runtime = {
              version = "LuaJIT",
            },
            workspace = {
              checkThirdParty = false,
              library = {
                vim.env.VIMRUNTIME,
                -- "${3rd}/luv/library",
                -- "${3rd}/busted/library",
              },
            },
            telemetry = {
              enable = false,
            },
          })
        end,
        settings = {
          Lua = {},
        },
      })
    end,
  },
}
