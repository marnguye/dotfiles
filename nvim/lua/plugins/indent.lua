return {
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    event = { "BufReadPost", "BufNewFile" },
    opts = {
      indent = {
        char = "│",
        tab_char = "│",
        highlight = "IblIndent",
      },
      scope = {
        enabled = true,
        char = "│",
        highlight = "IblScope",
        show_start = false,
        show_end = false,
      },
      whitespace = {
        remove_blankline_trail = true,
      },
      exclude = {
        filetypes = {
          "dashboard",
          "snacks_dashboard",
          "snacks_picker_list",
          "snacks_picker_input",
          "snacks_picker_preview",
          "lazy",
          "mason",
          "help",
          "terminal",
        },
        buftypes = { "terminal", "nofile", "prompt", "quickfix" },
      },
    },
  },
}
