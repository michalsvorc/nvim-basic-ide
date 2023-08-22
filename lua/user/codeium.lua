local M = {
  "Exafunction/codeium.vim",
  event = 'BufEnter'
}

function M.config()
  vim.keymap.set('i', '<M-Tab>', function () return vim.fn['codeium#Accept']() end, { expr = true })
end

return M

