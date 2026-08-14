return {
  {
    "sindrets/diffview.nvim",

    cmd = {
      "DiffviewOpen",
      "DiffviewClose",
      "DiffviewToggleFiles",
      "DiffviewFocusFiles",
    },

    opts = {
      enhanced_diff_hl = true,

      view = {
        default = {
          layout = "diff2_horizontal",
          winbar_info = true,
        },

        merge_tool = {
          layout = "diff3_mixed",
          disable_diagnostics = true,
        },

        file_history = {
          layout = "diff2_horizontal",
          winbar_info = true,
        },
      },

      file_panel = {
        listing_style = "list",
        win_config = {
          position = "left",
          width = 32,
        },
      },

      file_history_panel = {
        log_options = {
          git = {
            single_file = {
              diff_merges = "combined",
            },
          },
        },
      },

      hooks = {
        diff_buf_read = function(bufnr)
          vim.opt_local.wrap = false
          vim.opt_local.cursorline = true
        end,

        diff_buf_win_enter = function(bufnr, winid)
          vim.wo[winid].cursorline = true
        end,
      },
    },
  },
}
