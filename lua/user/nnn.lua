-- https://github.com/luukvbaal/nnn.nvim
-- File manager for Neovim powered by nnn.
require("nnn").setup({
  replace_netrw = "picker",
  explorer = {
		cmd = "nnn",     -- command overrride (-F1 flag is implied, -a flag is invalid!)
		width = 36,        -- width of the vertical split
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
