return {
  {
    "Exafunction/codeium.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "hrsh7th/nvim-cmp",
    },
    event = "BufReadPost",
    config = function()
      require("codeium").setup({
        -- Shortcuts for AI suggestions
        keymaps = {
          accept = "<Tab>", -- Press Tab to accept the AI suggestion
          next = "<M-]>", -- Alt + ] for next suggestion
          prev = "<M-[>", -- Alt + [ for previous suggestion
          clear = "<C-x>", -- Ctrl + x to clear suggestion
        },
      })
    end,
  },
}
