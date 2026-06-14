return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      background = {
        light = "latte", -- Use Latte flavour for light mode
        dark = "mocha", -- Use Mocha flavour for dark mode
      },
      transparent_background = false,
      term_colors = true,
      integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
      },
    })

    -- Load the colorscheme
    vim.cmd.colorscheme("catppuccin")
  end,
}
