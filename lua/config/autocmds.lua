-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- Disable formating for text.erb views.
-- Erb Formatter works well for html.erb but not for plain text views like mailers
vim.api.nvim_create_autocmd({ "BufEnter" }, {
  pattern = { "*.text.erb" },
  callback = function()
    vim.b.autoformat = false
  end,
})
