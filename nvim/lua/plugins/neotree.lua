return {
  {
    "nvim-neo-tree/neo-tree.nvim",

    opts = {
      close_if_last_window = true,

      filesystem = {
        hijack_netrw_behavior = "open_default",

        follow_current_file = {
          enabled = true,
          leave_dirs_open = false,
        },

        filtered_items = {
          visible = true,
          hide_dotfiles = false,
          hide_gitignored = false,
          hide_hidden = false,
        },
      },

      window = {
        width = 30,

        mappings = {
          ["<space>"] = "none",
          ["l"] = "open",
          ["h"] = "close_node",
        },
      },

      default_component_configs = {
        indent = {
          with_expanders = true,
          expander_collapsed = "",
          expander_expanded = "",
        },

        icon = {
          folder_closed = "",
          folder_open = "",
          folder_empty = "",
        },

        modified = {
          symbol = "●",
        },

        git_status = {
          symbols = {
            added = "A",
            modified = "M",
            deleted = "D",
            renamed = "R",
            untracked = "U",
            ignored = "I",
            unstaged = "M",
            staged = "S",
            conflict = "!",
          },
        },
      },
    },
  },
}
