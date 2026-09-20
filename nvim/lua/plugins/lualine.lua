return {
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      options = {
        theme = "tokyonight",
        globalstatus = true,
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" },
        disabled_filetypes = {
          statusline = { "dashboard", "alpha", "neo-tree", "NvimTree" },
        },
      },

      sections = {
        -- Mode — full word, colored background
        lualine_a = {
          {
            "mode",
            icon = "",
            fmt = function(str)
              local alias = {
                NORMAL = "NORMAL",
                INSERT = "INSERT",
                VISUAL = "VISUAL",
                ["V-LINE"] = "V-LINE",
                ["V-BLOCK"] = "V-BLOCK",
                COMMAND = "COMMAND",
                REPLACE = "REPLACE",
                TERMINAL = "TERMINAL",
              }
              return alias[str] or str:sub(1, 1)
            end,
          },
        },

        -- Git branch + diff stats
        lualine_b = {
          {
            "branch",
            icon = "",
            color = { fg = "#7aa2f7", gui = "bold" },
          },
          {
            "diff",
            symbols = {
              added = " ",
              modified = " ",
              removed = " ",
            },
            diff_color = {
              added = { fg = "#73daca" },
              modified = { fg = "#e0af68" },
              removed = { fg = "#f7768e" },
            },
          },
        },

        -- File path
        lualine_c = {
          {
            "filename",
            path = 1, -- relative path
            symbols = {
              modified = " ●",
              readonly = " 󰌾",
              unnamed = "󰡯 [No Name]",
              newfile = " [New]",
            },
            color = function()
              if vim.bo.modified then
                return { fg = "#e0af68", gui = "bold" }
              end
              return { fg = "#c0caf5" }
            end,
          },
          -- LSP server name
          {
            function()
              local clients = vim.lsp.get_clients({ bufnr = 0 })
              if #clients == 0 then
                return ""
              end
              local names = {}
              for _, c in ipairs(clients) do
                if c.name ~= "null-ls" and c.name ~= "copilot" then
                  table.insert(names, c.name)
                end
              end
              return #names > 0 and "󰒋 " .. table.concat(names, ", ") or ""
            end,
            color = { fg = "#565f89" },
          },
        },

        -- Diagnostics + extras
        lualine_x = {
          {
            "diagnostics",
            sources = { "nvim_lsp" },
            symbols = {
              error = " ",
              warn = " ",
              info = " ",
              hint = " ",
            },
            diagnostics_color = {
              error = { fg = "#f7768e" },
              warn = { fg = "#e0af68" },
              info = { fg = "#7dcfff" },
              hint = { fg = "#73daca" },
            },
          },
          -- Filetype with icon
          {
            "filetype",
            icon_only = false,
            colored = true,
            color = { fg = "#565f89" },
          },
        },

        -- Progress
        lualine_y = {
          {
            "progress",
            color = { fg = "#a9b1d6" },
          },
        },

        -- Location
        lualine_z = {
          {
            "location",
            fmt = function(str)
              return " " .. str
            end,
          },
        },
      },

      -- Inactive windows — minimal
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {
          {
            "filename",
            path = 1,
            color = { fg = "#565f89" },
          },
        },
        lualine_x = { "location" },
        lualine_y = {},
        lualine_z = {},
      },
    },
  },
}
