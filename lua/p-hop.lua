local status_ok, hop = pcall(require, "hop")
if not status_ok then
	vim.notify("hop not found!")
	return
end
hop.setup({ keys = "etovxqpdygfblzhckisuran" })

-- place this in one of your configuration file(s)
-- enhance f motion
local directions = require("hop.hint").HintDirection
vim.keymap.set("", "f", function()
	hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true })
end, { remap = true })
vim.keymap.set("", "F", function()
	hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true })
end, { remap = true })
vim.keymap.set("", "t", function()
	hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })
end, { remap = true })
vim.keymap.set("", "T", function()
	hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })
end, { remap = true })

-- place this in one of your configuration file(s)
vim.api.nvim_set_keymap("n", "gsw", "<cmd>HopWord<cr>", {})
vim.api.nvim_set_keymap("n", "gsl", "<cmd>HopLine<cr>", {})
vim.api.nvim_set_keymap("n", "gsL", "<cmd>HopLineStart<cr>", {})
vim.api.nvim_set_keymap("n", "gs<leader>", "<cmd>HopChar1<cr>", {})
vim.api.nvim_set_keymap("n", "gss", "<cmd>HopChar2<cr>", {})
