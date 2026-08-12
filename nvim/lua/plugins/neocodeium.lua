return {
  "monkoose/neocodeium",
  event = "InsertEnter",
  config = function()
    local neocodeium = require("neocodeium")
    neocodeium.setup({
      enabled = true,
    })

    vim.keymap.set("i", "<Tab>", neocodeium.accept)
    vim.keymap.set("i", "<C-l>", neocodeium.accept)
    vim.keymap.set("i", "<M-]>", neocodeium.cycle_or_complete)
    vim.keymap.set("i", "<M-[>", function()
      neocodeium.cycle_or_complete(-1)
    end)
    vim.keymap.set("i", "<C-x>", neocodeium.clear)
  end,
}
