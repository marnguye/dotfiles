return {
  {
    "folke/snacks.nvim",

    opts = {
      picker = {
        enabled = true,

        prompt = "❯ ",

        matcher = {
          fuzzy = true,
          smartcase = true,
          ignorecase = true,
          filename_bonus = true,
          file_pos = true,
          cwd_bonus = true,
          frecency = true,
          history_bonus = true,
        },

        layout = {
          preset = "default",
          cycle = true,
        },

        win = {
          input = {
            border = "rounded",

            keys = {
              ["<C-j>"] = "list_down",
              ["<C-k>"] = "list_up",
              ["<C-u>"] = "preview_scroll_up",
              ["<C-d>"] = "preview_scroll_down",
              ["<C-c>"] = "close",
            },
          },

          list = {
            border = "rounded",
          },

          preview = {
            border = "rounded",
          },
        },

        ui_select = true,

        sources = {
          files = {
            hidden = false,
            ignored = false,
          },

          grep = {
            hidden = false,
            ignored = false,
          },
        },
      },
    },

    keys = {
      {
        "<leader><space>",
        function()
          Snacks.picker.smart()
        end,
        desc = "Smart Find Files",
      },

      {
        "<leader>/",
        function()
          Snacks.picker.grep()
        end,
        desc = "Grep",
      },

      {
        "<leader>,",
        function()
          Snacks.picker.buffers()
        end,
        desc = "Buffers",
      },

      {
        "<leader>fr",
        function()
          Snacks.picker.recent()
        end,
        desc = "Recent Files",
      },

      {
        "<leader>fg",
        function()
          Snacks.picker.git_files()
        end,
        desc = "Git Files",
      },

      {
        "<leader>sg",
        function()
          Snacks.picker.grep()
        end,
        desc = "Grep",
      },

      {
        "<leader>sw",
        function()
          Snacks.picker.grep_word()
        end,
        desc = "Grep Word",
      },

      {
        "<leader>ss",
        function()
          Snacks.picker.lsp_symbols()
        end,
        desc = "LSP Symbols",
      },

      {
        "<leader>sS",
        function()
          Snacks.picker.lsp_workspace_symbols()
        end,
        desc = "LSP Workspace Symbols",
      },

      {
        "<leader>sd",
        function()
          Snacks.picker.diagnostics()
        end,
        desc = "Diagnostics",
      },

      {
        "<leader>sD",
        function()
          Snacks.picker.diagnostics_buffer()
        end,
        desc = "Buffer Diagnostics",
      },
    },
  },
}
