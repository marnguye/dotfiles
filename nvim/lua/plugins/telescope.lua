return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      -- Native fzf extension for performance
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
    keys = {
      -- Keymaps for quick searching
      { "<leader><space>", "<cmd>Telescope find_files<cr>", desc = "Find Files (Root)" },
      { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files (Root)" },
      { "<leader>sg", "<cmd>Telescope live_grep<cr>", desc = "Grep text inside files" },
      { "<leader>sb", "<cmd>Telescope buffers<cr>", desc = "List open buffers" },
      { "<leader>sh", "<cmd>Telescope help_tags<cr>", desc = "Search Help" },
    },
    opts = function()
      local actions = require("telescope.actions")
      return {
        defaults = {
          mappings = {
            i = {
              ["<C-j>"] = actions.move_selection_next,
              ["<C-k>"] = actions.move_selection_previous,
              ["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
            },
          },
        },
      }
    end,
    config = function(_, opts)
      local telescope = require("telescope")
      telescope.setup(opts)
      -- Load the fzf extension
      telescope.load_extension("fzf")
    end,
  },
}
