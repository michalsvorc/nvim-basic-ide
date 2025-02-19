local M = {
  "nvim-telescope/telescope-file-browser.nvim",
  commit = "ad7b637c72549713b9aaed7c4f9c79c62bcbdff0",
  event = "VimEnter",
  dependencies = {
    {
      "nvim-telescope/telescope.nvim",
      tag = "0.1.2",
    },
    {
      "nvim-lua/plenary.nvim",
      tag = "v0.1.3",
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

