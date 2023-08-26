local M = {
  "williamboman/mason.nvim",
  tag = "v1.7.0",
  cmd = "Mason",
  event = "BufReadPre",
  dependencies = {
    {
      "williamboman/mason-lspconfig.nvim",
      tag = "v1.13.0",
    },
  },
}

local settings = {
  ui = {
    border = "none",
    icons = {
      package_installed = "◍",
      package_pending = "◍",
      package_uninstalled = "◍",
    },
  },
  log_level = vim.log.levels.INFO,
  max_concurrent_installers = 4,
}

function M.config()
  require("mason").setup(settings)
  require("mason-lspconfig").setup {
    ensure_installed = require("utils").servers,
    automatic_installation = true,
  }
end

return M
