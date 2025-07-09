return {
  recomended = { ft = { "yaml", "yml" } },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = { ensure_installed = { "yaml" } },
  },
  {
    "mason.nvim",
    opts = { ensure_installed = { "yaml-language-server" } },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        yamlls = {
          settings = {
            yaml = {
              schemas = {
                -- Ruby on Rails schemas
                ["https://www.rubyschema.org/rubocop.json"] = ".rubocop.yml",
                ["https://www.rubyschema.org/rails/cable.json"] = "cable.yml",
                ["https://www.rubyschema.org/rails/cache.json"] = "cache.yml",
                ["https://www.rubyschema.org/rails/database.json"] = "database.yml",
                ["https://www.rubyschema.org/rails/queue.json"] = "queue.yml",
                ["https://www.rubyschema.org/rails/recurring.json"] = "recurring.yml",
                ["https://www.rubyschema.org/rails/storage.json"] = "storage.yml",
                ["https://www.rubyschema.org/rails/deploy.json"] = "deploy.yml",
                ["https://www.rubyschema.org/rails/lefthook.json"] = "lefthook.yml",
              },
            },
          },
        },
      },
    },
  },
}
