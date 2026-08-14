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
  },
}
