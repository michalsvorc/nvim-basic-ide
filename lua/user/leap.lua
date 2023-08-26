local M = {
  "ggandor/leap.nvim",
  commit = "5efe985cf68fac3b6a6dfe7a75fbfaca8db2af9c",
  event = "BufReadPre"
}

function M.config()
  require ("leap").add_default_mappings()
end

return M
