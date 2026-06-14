return {
  {
    "abecodes/tabout.nvim",
    event = "InsertCharPre",
    priority = 1000,
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "hrsh7th/nvim-cmp",
    },
    opts = {
      tabkey = "<Tab>",
      backspacekey = "<S-Tab>",
      act_as_tab = true,
      completion = true,
      tabouts = {
        { open = "'", close = "'" },
        { open = '"', close = '"' },
        { open = "`", close = "`" },
        { open = "(", close = ")" },
        { open = "[", close = "]" },
        { open = "{", close = "}" },
      },
    },
  },
}
