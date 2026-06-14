-- Toggle between light and dark theme using Catppuccin
vim.keymap.set("n", "<leader>tt", function()
  if vim.o.background == "dark" then
    vim.o.background = "light"
    vim.cmd("colorscheme catppuccin-latte")
  else
    vim.o.background = "dark"
    vim.cmd("colorscheme catppuccin-frappe")
  end
end, { desc = "Toggle light/dark theme" })

-- Delete a whole word in Insert mode (Option + Backspace / Alt + Backspace)
vim.keymap.set("i", "<M-BS>", "<C-w>", { desc = "Delete word backward in insert mode" })

-- Better window navigation (Move between splits easily with Ctrl + hjkl)
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Go to left window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Go to lower window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Go to upper window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Go to right window" })

-- Stay in visual mode after indenting text with > or <
vim.keymap.set("v", "<", "<gv", { desc = "Indent line left and keep selection" })
vim.keymap.set("v", ">", ">gv", { desc = "Indent line right and keep selection" })

-- Duplicate lines up and down using Leader + d + j/k (Completely safe layout)
vim.keymap.set("n", "<leader>dj", "<cmd>t .<cr>== ", { desc = "Duplicate line down" })
vim.keymap.set("n", "<leader>dk", "<cmd>t .-1<cr>== ", { desc = "Duplicate line up" })
vim.keymap.set("v", "<leader>dj", ":t '><CR>gv=gv", { desc = "Duplicate selection down" })
vim.keymap.set("v", "<leader>dk", ":t '<-1<CR>gv=gv", { desc = "Duplicate selection up" })
