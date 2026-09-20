return {
  -- Tokyo Night
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      style = "night",
      transparent = true,
      terminal_colors = true,
      styles = {
        comments = { italic = true },
        keywords = { italic = false },
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },

  -- Catppuccin (4 variants — latte, frappe, macchiato, mocha)
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = true,
    opts = {
      transparent_background = true,
      flavour = "mocha",
    },
  },

  -- Kanagawa
  {
    "rebelot/kanagawa.nvim",
    lazy = true,
    opts = {
      transparent = true,
      theme = "wave", -- wave | dragon | lotus
    },
  },

  -- Rose Pine
  {
    "rose-pine/neovim",
    name = "rose-pine",
    lazy = true,
    opts = {
      variant = "moon", -- auto | main | moon | dawn
      dark_variant = "moon",
      dim_inactive_windows = true,
      extend_background_behind_borders = true,
      styles = {
        transparency = true,
      },
    },
  },

  -- Gruvbox
  {
    "ellisonleao/gruvbox.nvim",
    lazy = true,
    opts = {
      transparent_mode = true,
      contrast = "hard", -- hard | soft | ""
    },
  },

  -- Everforest
  {
    "sainnhe/everforest",
    lazy = true,
    init = function()
      vim.g.everforest_background = "hard"
      vim.g.everforest_enable_italic = 1
      vim.g.everforest_transparent_background = 1
    end,
  },

  -- Nightfox (6 variant)
  {
    "EdenEast/nightfox.nvim",
    lazy = true,
    opts = {
      options = {
        transparent = true,
        styles = {
          comments = "italic",
          keywords = "bold",
        },
      },
    },
  },

  -- Oxocarbon (IBM Research design)
  {
    "nyoom-engineering/oxocarbon.nvim",
    lazy = true,
  },

  -- Nord
  {
    "shaunsingh/nord.nvim",
    lazy = true,
    init = function()
      vim.g.nord_enable_sidebar_background = true
      vim.g.nord_italic = true
    end,
  },

  -- Cyberdream (neon futurstic)
  {
    "scottmckendry/cyberdream.nvim",
    lazy = true,
    opts = {
      transparent = true,
      italic_comments = true,
      borderless_telescope = true,
    },
  },

  -- ── Theme picker (live preview) ────────
  {
    "zaldih/themery.nvim",
    lazy = false,
    keys = {
      { "<leader>ut", "<cmd>Themery<CR>", desc = "Theme browser" },
    },
    opts = {
      livePreview = true,
      themes = {
        -- Tokyo Night varianty
        { name = "Tokyo Night", colorscheme = "tokyonight-night" },
        { name = "Tokyo Storm", colorscheme = "tokyonight-storm" },
        { name = "Tokyo Moon", colorscheme = "tokyonight-moon" },
        { name = "Tokyo Day", colorscheme = "tokyonight-day" },
        -- Catppuccin varianty
        { name = "Catppuccin Mocha", colorscheme = "catppuccin-mocha" },
        { name = "Catppuccin Macchiato", colorscheme = "catppuccin-macchiato" },
        { name = "Catppuccin Frappe", colorscheme = "catppuccin-frappe" },
        { name = "Catppuccin Latte", colorscheme = "catppuccin-latte" },
        -- Kanagawa varianty
        { name = "Kanagawa Wave", colorscheme = "kanagawa-wave" },
        { name = "Kanagawa Dragon", colorscheme = "kanagawa-dragon" },
        { name = "Kanagawa Lotus", colorscheme = "kanagawa-lotus" },
        -- Rose Pine
        { name = "Rose Pine", colorscheme = "rose-pine" },
        { name = "Rose Pine Moon", colorscheme = "rose-pine-moon" },
        { name = "Rose Pine Dawn", colorscheme = "rose-pine-dawn" },
        -- Nightfox varianty
        { name = "Nightfox", colorscheme = "nightfox" },
        { name = "Dayfox", colorscheme = "dayfox" },
        { name = "Dawnfox", colorscheme = "dawnfox" },
        { name = "Duskfox", colorscheme = "duskfox" },
        { name = "Nordfox", colorscheme = "nordfox" },
        { name = "Terafox", colorscheme = "terafox" },
        { name = "Carbonfox", colorscheme = "carbonfox" },
        -- Others
        { name = "Gruvbox Dark", colorscheme = "gruvbox" },
        { name = "Everforest", colorscheme = "everforest" },
        { name = "Oxocarbon", colorscheme = "oxocarbon" },
        { name = "Nord", colorscheme = "nord" },
        { name = "Cyberdream", colorscheme = "cyberdream" },
      },
    },
  },
}
