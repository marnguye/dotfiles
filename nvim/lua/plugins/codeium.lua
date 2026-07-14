return {
  "Exafunction/codeium.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "hrsh7th/nvim-cmp",
  },
  event = "BufReadPost",
  config = function()
    require("codeium").setup({
      enable_cmp_source = false,
      virtual_text = {
        enabled = true,
        keymaps = {
          accept = "<M-l>",
          next = "<M-]>",
          prev = "<M-[>",
          clear = "<C-x>",
        },
      },
    })
  end,
}
