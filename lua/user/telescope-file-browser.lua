local M = {
  "nvim-telescope/telescope-file-browser.nvim",
  event = "VimEnter",
  dependencies = {
    {
      "nvim-telescope/telescope.nvim",
      commit = "203bf5609137600d73e8ed82703d6b0e320a5f36",
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
        hidden = true,
        hijack_netrw = false,
        prompt_path = true
      },
    },
  };

  telescope.load_extension "file_browser"
end

return M

