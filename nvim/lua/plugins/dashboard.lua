return {
  {
    "folke/snacks.nvim",

    opts = {
      dashboard = {
        enabled = true,

        preset = {
          header = [[
                         .     *       .
              *                    .        *
                         _..._
                    .-""     ""-.
                  .'             '.
                 /    .-""""-.     \
                ;    /   ◉  ◉   \     ;
                |   |     __     |    |
                ;    \   '.__.' /     ;
                 \     '------'      /
                  '.             .'
                    '-._______.-'

                         
          ]],

          keys = {
            {
              icon = " ",
              key = "f",
              desc = "Find File",
              action = ":lua Snacks.picker.files()<CR>",
            },

            {
              icon = "󰉖 ",
              key = "p",
              desc = "Projects",
              action = ":lua Snacks.picker.projects()<CR>",
            },

            {
              icon = " ",
              key = "r",
              desc = "Recent Files",
              action = ":lua Snacks.picker.recent()<CR>",
            },

            {
              icon = "󰊢 ",
              key = "g",
              desc = "Git",
              action = ":lua Snacks.picker.git_files()<CR>",
            },

            {
              icon = " ",
              key = "q",
              desc = "Quit",
              action = ":qa<CR>",
            },
          },
        },

        sections = {
          {
            section = "header",
            padding = 2,
          },

          {
            section = "keys",
            gap = 1,
            padding = 1,
          },

          {
            section = "startup",
            padding = 2,
          },
        },
      },
    },
  },
}
