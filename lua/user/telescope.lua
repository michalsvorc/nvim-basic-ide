local M = {
  "nvim-telescope/telescope.nvim",
  commit = "40c31fdde93bcd85aeb3447bb3e2a3208395a868",
  event = "Bufenter",
  cmd = { "Telescope" },
  dependencies = {
    {
      "ahmedkhalf/project.nvim",
    },
  },
}

local actions = require "telescope.actions"

M.opts = {
  defaults = {
    layout_config = { height = 0.99, width = 0.99 },
    prompt_prefix = " ",
    selection_caret = " ",
    path_display = { "smart" },
    file_ignore_patterns = { ".git/", "node_modules" },
    mappings = {
      i = {
        ["<Down>"] = actions.move_selection_next,
        ["<Up>"] = actions.move_selection_previous,
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
      },
    },
  },
  pickers = {
    live_grep = {
      additional_args = function()
        return {"--hidden"}
      end
    },
    find_files = {
      -- https://github.com/nvim-telescope/telescope.nvim/wiki/Configuration-Recipes#remove--from-fd-results
      find_command = { "fd", "--type", "f", "--strip-cwd-prefix" }
    },
  },
}

return M
