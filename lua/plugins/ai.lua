return {
  {
    "zbirenbaum/copilot.lua",
    opts = {
      copilot_model = "gpt-4o-copilot",
    },
  },
  {
    "MeanderingProgrammer/render-markdown.nvim",
    optional = true,
    opts = {
      file_types = { "markdown", "copilot-chat" },
    },
    ft = { "markdown", "norg", "rmd", "org", "codecompanion", "copilot-chat" },
  },
}
