return {
  {
    "folke/snacks.nvim",
    opts = {
      explorer = {
        enabled = false,
      },
    },
    keys = {
      {
        "<leader>e",
        false,
      },
    },
  },

  {
    "nvim-neo-tree/neo-tree.nvim",
    keys = {
      {
        "<leader>e",
        "<cmd>Neotree toggle left<cr>",
        desc = "Toggle Neo-tree",
      },
    },
    opts = {
      -- Auto open neo-tree when nvim opens with a directory
      event_handlers = {
        {
          event = "vim_buffer_enter",
          handler = function(_)
            if vim.bo.filetype == "netrw" then
              vim.schedule(function()
                vim.cmd("Neotree current")
              end)
            end
          end,
        },
      },

      filesystem = {
        -- Use cwd as root, not the directory of current file
        bind_to_cwd = true,
        cwd_target = {
          sidebar = "tab",
          current = "window",
        },
        -- Auto reveal current file in tree
        follow_current_file = {
          enabled = true,
          leave_dirs_open = true,
        },
      },
    },
  },
}
