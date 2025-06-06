local lsp = vim.g.lazyvim_ruby_lsp or "ruby_lsp"

return {
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        stimulus_ls = {
          enabled = lsp == "ruby_lsp",
        },
      },
    },
  },
  {
    "williamboman/mason.nvim",
    opts = { ensure_installed = { "stimulus-language-server" } },
  },
}
