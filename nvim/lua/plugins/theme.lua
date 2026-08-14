return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    style = "storm",
    transparent = false,
    terminal_colors = true,
    styles = {
      comments = { italic = true },
      keywords = { italic = true },
      sidebars = "dark",
      floats = "dark",
    },
    on_highlights = function(hl, c)
      hl.DiffAdd = { bg = c.diff.add }
      hl.DiffDelete = { bg = c.diff.delete }
      hl.DiffChange = { bg = c.diff.change }
      hl.DiffText = { bg = c.diff.text }
    end,
  },
  config = function(_, opts)
    require("tokyonight").setup(opts)
    vim.cmd.colorscheme("tokyonight")
  end,
}
