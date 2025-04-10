return {
  recomended = { ft = { "graphql", "gql" } },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = { ensure_installed = { "graphql" } },
  },
  {
    "mason.nvim",
    opts = { ensure_installed = { "graphql-language-service-cli" } },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        graphql = {},
      },
    },
  },
}
