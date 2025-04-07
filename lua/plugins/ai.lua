return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    build = "make tiktoken", -- Only on MacOS or Linux
  },
  -- Temporal fix for copilot.lua
  {
    "zbirenbaum/copilot.lua",
    optional = true,
    opts = function()
      require("copilot.api").status = require("copilot.status")
    end,
  },
}
