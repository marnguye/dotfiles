vim.keymap.set("n", "<leader>uL", function()
  if vim.o.background == "dark" then
    vim.o.background = "light"
    vim.cmd.colorscheme("catppuccin-latte")
  else
    vim.o.background = "dark"
    vim.cmd.colorscheme("catppuccin-frappe")
  end
end, { desc = "Toggle light/dark theme" })

vim.keymap.set("i", "<M-BS>", "<C-w>", { desc = "Delete word backward in insert mode" })

vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Go to left window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Go to lower window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Go to upper window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Go to right window" })

vim.keymap.set("v", "<", "<gv", { desc = "Indent line left and keep selection" })
vim.keymap.set("v", ">", ">gv", { desc = "Indent line right and keep selection" })

vim.keymap.set("n", "<leader>dj", "<cmd>t .<cr>== ", { desc = "Duplicate line down" })
vim.keymap.set("n", "<leader>dk", "<cmd>t .-1<cr>== ", { desc = "Duplicate line up" })
vim.keymap.set("v", "<leader>dj", ":t '><CR>gv=gv", { desc = "Duplicate selection down" })
vim.keymap.set("v", "<leader>dk", ":t '<-1<CR>gv=gv", { desc = "Duplicate selection up" })

local map = vim.keymap.set

map("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code actions" })
map("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename symbol" })

map("n", "[d", function()
  vim.diagnostic.jump({ count = -1, float = true })
end, { desc = "Previous diagnostic" })

map("n", "]d", function()
  vim.diagnostic.jump({ count = 1, float = true })
end, { desc = "Next diagnostic" })

map("n", "<leader>dl", function()
  vim.diagnostic.open_float(nil, {
    focusable = true,
    border = "rounded",
    source = true,
  })
end, { desc = "Line diagnostics" })

for i = 1, 5 do
  vim.keymap.set("n", "<leader>" .. i, function()
    require("harpoon"):list():select(i)
  end, { desc = "Harpoon file " .. i })
end
