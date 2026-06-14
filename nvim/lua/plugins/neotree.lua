return {
  -- Disable mini.files completely so it stop showing up as "Explorer"
  {
    "echasnovski/mini.files",
    enabled = false,
  },

  -- Configure Neo-tree as the exclusive file manager
  {
    "nvim-neo-tree/neo-tree.nvim",
    keys = {
      -- Map leader + e to open Neo-tree
      { "<leader>e", "<cmd>Neotree toggle left<cr>", desc = "Toggle Neo-tree" },
    },
    opts = {
      filesystem = {
        -- Take over netrw completely
        hijack_netrw = true,
        filtered_items = {
          visible = true,
          hide_dotfiles = false,
          hide_gitignored = false,
        },
      },
      window = {
        width = 30,
      },
    },
  },
}
