return {
  {
    "nvim-telescope/telescope.nvim",
    opts = {
      defaults = {
        layout_strategy = "vertical",
        layout_config = { prompt_position = "bottom" },
        sorting_strategy = "descending",
        winblend = 0,
      },
    },
  },
  {
    "ibhagwan/fzf-lua",
    opts = {
      winopts = {
        layout = "vertical",
        preview = {
          layout = "vertical",
        },
      },
    },
  },
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      sections = {
        lualine_z = {
          { "fileformat", separator = " ", padding = { left = 1, right = 0 } },
          { "encoding", padding = { left = 0, right = 1 } },
        },
      },
    },
  },

  {
    "snacks.nvim",
    opts = {
      dashboard = {
        preset = {
          header = [[
███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
   ]],
        },
      },
    },
  },
}
