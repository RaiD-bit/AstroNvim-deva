return {
    lsp = {
      skip_setup = { "dartls" }, -- skip lsp setup because flutter-tools will do it itself
      ["server-settings"] = {
        dartls = {
          -- any changes you want to make to the LSP setup, for example
          color = {
            enabled = true,
          },
          settings = {
            showTodos = true,
            completeFunctionCalls = true,
          },
        },
      },
    },
    plugins = {
      init = {
        {
          "akinsho/flutter-tools.nvim",
          requires = "nvim-lua/plenary.nvim",
          after = "mason-lspconfig.nvim", -- make sure to load after mason-lspconfig
          config = function()
            require("flutter-tools").setup {
              lsp = astronvim.lsp.server_settings "dartls", -- get the server settings and built in capabilities/on_attach
            }
          end,
        },
      },
      ["mason-lspconfig"] = {
        ensure_installed = { "dartls" }, -- install dartls
      },
    },
  }