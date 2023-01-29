-- https://github.com/MattesGroeger/vim-bookmarks
-- Vim bookmark plugin.
vim.g.bookmark_sign = ""
vim.g.bookmark_annotation_sign = ""

-- https://github.com/tom-anders/telescope-vim-bookmarks.nvim
-- Integrates vim-bookmarks into telescope.nvim.
require('telescope').load_extension('vim_bookmarks')
