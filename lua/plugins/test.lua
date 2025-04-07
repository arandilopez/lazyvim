return {
  {
    "nvim-neotest/neotest",

    dependencies = {
      "nvim-neotest/nvim-nio",
      "nvim-lua/plenary.nvim",
      "antoinemadec/FixCursorHold.nvim",
      "nvim-treesitter/nvim-treesitter",
      -- Adapters
      "zidhuss/neotest-minitest",
      "olimorris/neotest-rspec",
      "marilari88/neotest-vitest",
    },

    config = function()
      require("neotest").setup({
        adapters = {
          require("neotest-vitest")({
            is_test_file = function(file_path)
              -- Check if the project is "my-peculiar-project"
              if string.match(file_path, "rxv-frontend") then
                return string.match(file_path, ".*%.vi%.test")
              end
              return false
            end,
          }),
          require("neotest-rspec")({
            rspec_cmd = function()
              return vim.tbl_flatten({ "bundle", "exec", "rspec" })
            end,
          }),
          require("neotest-minitest")({
            test_cmd = function()
              return vim.tbl_flatten({ "bundle", "exec", "rails", "test" })
            end,
          }),
        },
      })
    end,
  },
}
