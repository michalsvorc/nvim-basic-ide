local M = {
  "luukvbaal/nnn.nvim",
  commit = "83b4476ed699357e7f222161802a60b17267ea46",
  event = "VimEnter"
}

function M.config()
  local nnn = require("nnn")
  local builtin = nnn.builtin
  local mappings = {
    { "<C-t>", builtin.open_in_tab },       -- open file(s) in tab
    { "<C-s>", builtin.open_in_split },     -- open file(s) in split
    { "<C-v>", builtin.open_in_vsplit },    -- open file(s) in vertical split
    { "<C-p>", builtin.open_in_preview },   -- open file in preview split keeping nnn focused
    { "<C-y>", builtin.copy_to_clipboard }, -- copy file(s) to clipboard
    { "<C-w>", builtin.cd_to_path },        -- cd to file directory
    { "<C-e>", builtin.populate_cmdline },  -- populate cmdline (:) with file(s)
  }

  nnn.setup({
    replace_netrw = "picker",
    mappings = mappings,
    explorer = {
      cmd = "nnn",     -- command overrride (-F1 flag is implied, -a flag is invalid!)
      width = 50,        -- width of the vertical split
      side = "botright",  -- or "botright", location of the explorer window
    },
    picker = {
      cmd = "nnn -a",       -- command override (-p flag is implied)
      style = {
        width = 0.9,     -- percentage relative to terminal size when < 1, absolute otherwise
        height = 0.9,    -- ^
        border = "rounded"-- border decoration for example "rounded"(:h nvim_open_win)
      },
    },
  })
end

return M
