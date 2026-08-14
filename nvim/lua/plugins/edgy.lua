return {
  {
    "folke/edgy.nvim",
    event = "VeryLazy",

    opts = {
      animate = {
        enabled = false,
      },

      left = {
        {
          title = "Explorer",
          ft = "neo-tree",
          size = {
            width = 30,
          },
        },
      },

      right = {
        {
          title = "Outline",
          ft = "Outline",
          size = {
            width = 30,
          },
        },
      },

      bottom = {
        {
          ft = "trouble",
          size = {
            height = 10,
          },
        },

        {
          ft = "qf",
          size = {
            height = 10,
          },
        },
      },
    },
  },
}
