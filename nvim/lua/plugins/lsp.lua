return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "mason-org/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  },
  opts = {
    servers = {
      gopls = {
        settings = {
          gopls = {
            gofumpt = true,
            analyses = {
              unusedparams = true,
              shadow = true,
            },
            staticcheck = true,
            hints = {
              assignVariableTypes = true,
              compositeLiteralFields = true,
              compositeLiteralTypes = true,
              constantValues = true,
              functionTypeParameters = true,
              parameterNames = true,
              rangeVariableTypes = true,
            },
          },
        },
      },

      ts_ls = {
        settings = {
          typescript = {
            inlayHints = {
              includeInlayParameterNameHints = "all",
              includeInlayVariableTypeHints = true,
              includeInlayFunctionLikeReturnTypeHints = true,
              includeInlayPropertyDeclarationTypeHints = true,
            },
          },
          javascript = {
            inlayHints = {
              includeInlayParameterNameHints = "all",
              includeInlayVariableTypeHints = true,
              includeInlayFunctionLikeReturnTypeHints = true,
            },
          },
        },
        filetypes = {
          "javascript",
          "javascriptreact",
          "typescript",
          "typescriptreact",
        },
      },

      eslint = {
        settings = {
          workingDirectories = { mode = "auto" },
        },
      },

      html = {},
      cssls = {},

      jsonls = {
        settings = {
          json = {
            validate = { enable = true },
          },
        },
      },

      tailwindcss = {
        filetypes = {
          "javascript",
          "javascriptreact",
          "typescript",
          "typescriptreact",
        },
        settings = {
          tailwindCSS = {
            experimental = {
              classRegex = {
                -- NativeWind
                { "className\\s*=\\s*[\"'`]([^\"'`]*)[\"'`]" },
                { "tw\\`([^`]*)\\`" },
                { "tw\\.\\w+\\`([^`]*)\\`" },
              },
            },
          },
        },
      },

      emmet_ls = {
        filetypes = {
          "html",
          "javascriptreact",
          "typescriptreact",
        },
      },
    },
  },
}
