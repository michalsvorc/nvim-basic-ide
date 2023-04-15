local M = {
  "ggandor/leap.nvim",
  commit = "98a72ad93c629c49bd7127d342960cc1b159b620",
  event = "BufReadPre"
}

function M.config()
  require ("leap").add_default_mappings()
end

return M
