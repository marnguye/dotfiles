return {
  {
    "folke/noice.nvim",
    opts = {
      lsp = {
        progress = { enabled = false },
        hover = { enabled = true },
        signature = { enabled = true },
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
        long_message_to_split = false,
        inc_rename = false,
        lsp_doc_border = true,
      },
      cmdline = {
        enabled = true,
        view = "cmdline_popup",
        format = {
          cmdline = { icon = "❯" },
          search_down = { icon = " " },
          search_up = { icon = " " },
          filter = { icon = "$ " },
          lua = { icon = " " },
          help = { icon = "? " },
        },
      },
      messages = {
        enabled = true,
        view = "mini",
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
            row = "35%",
            col = "50%",
          },
          size = {
            width = 56,
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
