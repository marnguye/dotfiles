return {
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      options = {
        theme = "tokyonight",
        globalstatus = true,
        component_separators = "",
        section_separators = "",
      },

      sections = {
        lualine_a = {
          {
            "mode",
            fmt = function(str)
              return str:sub(1, 1)
            end,
          },
        },

        lualine_b = {
          "branch",
          {
            "diff",
            symbols = {
              added = " ",
              modified = " ",
              removed = " ",
            },
          },
        },

        lualine_c = {
          {
            "filename",
            path = 1,
            symbols = {
              modified = " ●",
              readonly = " 󰌾",
              unnamed = "[No Name]",
            },
          },
        },

        lualine_x = {
          "diagnostics",
          "encoding",
          "fileformat",
          "filetype",
        },

        lualine_y = {
          "progress",
        },

        lualine_z = {
          "location",
        },
      },
    },
  },
}
