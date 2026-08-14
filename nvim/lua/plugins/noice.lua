return {
  {
    "folke/noice.nvim",

    opts = {
      lsp = {
        progress = {
          enabled = true,
        },

        hover = {
          enabled = true,
        },

        signature = {
          enabled = true,
        },

        documentation = {
          opts = {
            win_options = {
              wrap = true,
              linebreak = true,
            },
          },
        },
      },

      presets = {
        bottom_search = false,
        command_palette = true,
        long_message_to_split = true,
        inc_rename = true,
        lsp_doc_border = true,
      },

      cmdline = {
        enabled = true,

        view = "cmdline_popup",

        opts = {
          position = {
            row = "40%",
            col = "50%",
          },

          size = {
            width = 60,
            height = "auto",
          },
        },

        format = {
          cmdline = {
            icon = "❯",
          },

          search_down = {
            kind = "search",
            icon = " ",
          },

          search_up = {
            kind = "search",
            icon = " ",
          },

          filter = {
            icon = "$ ",
          },

          lua = {
            icon = " ",
          },

          help = {
            icon = "? ",
          },
        },
      },

      messages = {
        enabled = true,
        view = "notify",
        view_error = "notify",
        view_warn = "notify",
      },

      notify = {
        enabled = true,
        view = "notify",
      },

      popupmenu = {
        enabled = true,

        backend = "nui",
      },

      views = {
        cmdline_popup = {
          position = {
            row = "40%",
            col = "50%",
          },

          size = {
            width = 60,
            height = "auto",
          },

          border = {
            style = "rounded",
            padding = { 0, 1 },
          },
        },
      },
    },
  },
}
