local M = {
  "kylechui/nvim-surround",
  tag = "v2.0.5",
  event = "VeryLazy"
}

function M.config()
  require("nvim-surround").setup({
      -- Configuration here, or leave empty to use defaults
  })
end

return M
