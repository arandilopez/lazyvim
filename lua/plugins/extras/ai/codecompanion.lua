vim.env["CODECOMPANION_TOKEN_PATH"] = vim.fn.expand("~/.config")

return {
  {
    "olimorris/codecompanion.nvim",
    enabled = true,
    event = "VeryLazy",
    opts = {
      strategies = {
        chat = {
          adapter = "copilot",
          model = "claude-3-7-sonnet",
        },
        inline = {
          adapter = "copilot",
          model = "claude-3-7-sonnet",
        },
        cmd = {
          adapter = "copilot",
          model = "claude-3-7-sonnet",
        },
      },
      adapters = {
        tavily = function()
          return require("codecompanion.adapters").extend("tavily", {
            env = {
              api_key = "cmd:op read op://Private/Tavily/password --no-newline",
            },
          })
        end,
      },
      display = {
        diff = {
          enabled = true,
          provider = "mini_diff",
        },
      },
      extensions = {
        mcphub = {
          callback = "mcphub.extensions.codecompanion",
          opts = {
            make_vars = true,
            make_slash_commands = true,
            show_result_in_chat = true,
          },
          contextfiles = {
            opts = {
              slash_command = {
                enabled = true,
                name = "context",
                ctx_opts = {
                  context_dir = ".github/instructions",
                  root_markers = { ".git" },
                  gist_ids = {},
                  enable_local = true,
                },
                format_opts = {
                  ---@param context_file ContextFiles.ContextFile the context file to prepend the prefix
                  prefix = function(context_file)
                    return string.format(
                      "Please follow the rules located at `%s`:",
                      vim.fn.fnamemodify(context_file.file, ":.")
                    )
                  end,
                  suffix = "",
                  separator = "",
                },
              },
            },
          },
        },
        history = {
          enabled = true,
          opts = {
            -- Keymap to open history from chat buffer (default: gh)
            keymap = "gh",
            -- Keymap to save the current chat manually (when auto_save is disabled)
            save_chat_keymap = "sc",
            -- Save all chats by default (disable to save only manually using 'sc')
            auto_save = true,
            -- Number of days after which chats are automatically deleted (0 to disable)
            expiration_days = 0,
            -- Picker interface ("telescope" or "snacks" or "fzf-lua" or "default")
            picker = "fzf-lua",
            ---Automatically generate titles for new chats
            auto_generate_title = true,
            title_generation_opts = {
              ---Adapter for generating titles (defaults to active chat's adapter)
              adapter = nil, -- e.g "copilot"
              ---Model for generating titles (defaults to active chat's model)
              model = nil, -- e.g "gpt-4o"
            },
            ---On exiting and entering neovim, loads the last chat on opening chat
            continue_last_chat = false,
            ---When chat is cleared with `gx` delete the chat from history
            delete_on_clearing_chat = false,
            ---Directory path to save the chats
            dir_to_save = vim.fn.stdpath("data") .. "/codecompanion-history",
            ---Enable detailed logging for history extension
            enable_logging = false,
          },
        },
      },
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      "ravitemer/mcphub.nvim",
      "ravitemer/codecompanion-history.nvim",
      "banjo/contextfiles.nvim",
    },
    keys = {
      { "<leader>aa", "<cmd>CodeCompanionChat Toggle<cr>", desc = "Toggle Code Companion Chat" },
      { "gca", "<cmd>CodeCompanion Add<cr>", desc = "Add Code Companion" },
    },
  },
  {
    "ravitemer/mcphub.nvim",
    build = "npm install -g mcp-hub@latest",
    config = function()
      require("mcphub").setup()
    end,
  },
  {
    "echasnovski/mini.diff",
    opts = {
      source = require("mini.diff").gen_source.none(),
    },
  },
  {
    "HakonHarnes/img-clip.nvim",
    opts = {
      filetypes = {
        codecompanion = {
          prompt_for_file_name = false,
          template = "[Image]($FILE_PATH)",
          use_absolute_path = true,
        },
      },
    },
  },
}
