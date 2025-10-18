-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Files
vim.keymap.set("n", "<leader>fy", '<cmd>let @+ = expand("%:t")<cr>', { desc = "Yank file name" })
vim.keymap.set("n", "<leader>fY", '<cmd>let @+ = expand("%")<cr>', { desc = "Yank file pathname" })

-- Editor
vim.keymap.set("n", "]o", function()
  local line = vim.fn.line(".")
  vim.fn.append(line, "")
end, { desc = "Insert line below the cursor" })

vim.keymap.set("n", "[o", function()
  local line = vim.fn.line(".")
  vim.fn.append(line - 1, "")
end, { desc = "Insert line above the cursor" })

-- Code Companion
-- vim.cmd([[cab cc CodeCompanion]])
