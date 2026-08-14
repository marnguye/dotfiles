return {
  {
    "akinsho/bufferline.nvim",
    opts = {
      options = {
        mode = "buffers",
        diagnostics = "nvim_lsp",

        separator_style = "thin",

        always_show_bufferline = true,
        show_close_icon = false,
        show_buffer_close_icons = false,

        color_icons = true,

        offsets = {
          {
            filetype = "neo-tree",
            text = "EXPLORER",
            text_align = "left",
            separator = true,
          },
        },

        hover = {
          enabled = true,
          delay = 100,
          reveal = { "close" },
        },

        modified_icon = "●",
        close_icon = "",
        left_trunc_marker = "",
        right_trunc_marker = "",
      },

      highlights = {
        fill = {
          bg = "#16161e",
        },

        background = {
          fg = "#565f89",
          bg = "#16161e",
        },

        buffer_selected = {
          fg = "#c0caf5",
          bg = "#1f2335",
          bold = true,
        },

        separator = {
          fg = "#16161e",
          bg = "#16161e",
        },

        separator_selected = {
          fg = "#16161e",
          bg = "#1f2335",
        },

        indicator_selected = {
          fg = "#7aa2f7",
          bg = "#1f2335",
        },

        modified = {
          fg = "#e0af68",
          bg = "#16161e",
        },

        modified_selected = {
          fg = "#e0af68",
          bg = "#1f2335",
        },
      },
    },
  },
}
