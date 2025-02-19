-- Shorten function name
local keymap = vim.keymap.set
-- Silent keymap option
local opts = { silent = true }

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<A-k>", ":bnext<CR>", opts)
keymap("n", "<A-j>", ":bprevious<CR>", opts)

-- Reorder buffers
keymap("n", "<C-A-k>", ":BufferLineMoveNext<CR>", opts)
keymap("n", "<C-A-j>", ":BufferLineMovePrev<CR>", opts)

-- Select a buffer
keymap("n", "<A-s>", ":BufferLinePick<CR>", opts)

-- Close buffers
keymap("n", "<A-q>", "<cmd>Bdelete!<CR>", opts)
keymap("n", "<A-w>", "<cmd>BufferLinePickClose<CR>", opts)

-- Clear highlights
keymap("n", "<leader>h", "<cmd>nohlsearch<CR>", opts)

-- Better paste
keymap("v", "p", "P", opts)

-- Insert --
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Plugins --

-- NvimTree
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- Telescope
keymap("n", "<leader>ff",  ":Telescope find_files hidden=true <CR>", opts)
keymap("n", "<leader>ft",  ":Telescope live_grep<CR>", opts)
keymap("n", "<leader>fp",  ":Telescope projects<CR>", opts)
keymap("n", "<leader>fb",  ":Telescope buffers<CR>", opts)
keymap("n", "<leader>f/",  ":Telescope current_buffer_fuzzy_find<CR>", opts)
keymap("n", "<leader>fr",  ":Telescope oldfiles<CR>", opts)
keymap("n", "<leader>fk",  ":Telescope keymaps<CR>", opts)
keymap("n", "<leader>fy",  ":Telescope registers<CR>", opts)
keymap("n", "<leader>fs",  ":Telescope treesitter<CR>", opts)
keymap("n", "<leader>fma", ":Telescope vim_bookmarks all<CR>", opts)
keymap("n", "<leader>fmf", ":Telescope vim_bookmarks current_file<CR>", opts)

-- Git
keymap("n", "<leader>gg", "<cmd>lua _LAZYGIT_TOGGLE()<CR>", opts)

-- Comment
keymap("n", "<leader>/", "<cmd>lua require('Comment.api').toggle.linewise.current()<CR>", opts)
keymap("x", "<leader>/", "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>", opts)

-- DAP
keymap("n", "<leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<cr>", opts)
keymap("n", "<leader>dc", "<cmd>lua require'dap'.continue()<cr>", opts)
keymap("n", "<leader>di", "<cmd>lua require'dap'.step_into()<cr>", opts)
keymap("n", "<leader>do", "<cmd>lua require'dap'.step_over()<cr>", opts)
keymap("n", "<leader>dO", "<cmd>lua require'dap'.step_out()<cr>", opts)
keymap("n", "<leader>dr", "<cmd>lua require'dap'.repl.toggle()<cr>", opts)
keymap("n", "<leader>dl", "<cmd>lua require'dap'.run_last()<cr>", opts)
keymap("n", "<leader>du", "<cmd>lua require'dapui'.toggle()<cr>", opts)
keymap("n", "<leader>dt", "<cmd>lua require'dap'.terminate()<cr>", opts)

-- Lsp
keymap("n", "<leader>lf", "<cmd>lua vim.lsp.buf.format{ async = true }<cr>", opts)

-- Terminal
keymap("n", "<leader>t", "<cmd>ToggleTerm<CR>", opts)

-- leap.nvim
keymap({"n", "x", "o"}, "<leader>s", "<Plug>(leap-forward-to)")
keymap({"n", "x", "o"}, "<leader>S", "<Plug>(leap-backward-to)")
keymap({"n", "x", "o"}, "<leader>x", "<Plug>(leap-forward-till)")
keymap({"n", "x", "o"}, "<leader>X", "<Plug>(leap-backward-till)")
keymap({"n", "x", "o"}, "<leader>gs", "<Plug>(leap-cross-window)")

-- telescope-file-browser.nvim
keymap("n", "<leader>fe", ":Telescope file_browser path=%:p:h select_buffer=true<CR>", { noremap = true, silent = true })
