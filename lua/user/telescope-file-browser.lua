local M = {
  "nvim-telescope/telescope-file-browser.nvim",
  commit = "ad7b637c72549713b9aaed7c4f9c79c62bcbdff0",
  event = "VimEnter",
  dependencies = {
    {
      "nvim-telescope/telescope.nvim",
    },
    {
      "nvim-lua/plenary.nvim",
      commit = "9a0d3bf7b832818c042aaf30f692b081ddd58bd9",
    }
  },
}

function M.config()
  local telescope = require("telescope");

  telescope.setup {
    extensions = {
      file_browser = {
        grouped = true,
        hidden = true,
        hijack_netrw = false,
        prompt_path = true,
        select_buffer = true
      },
    },
  };

  telescope.load_extension "file_browser"
end

return M

