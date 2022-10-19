vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "<leader>q", "<Cmd>q<CR>")
keymap.set("n", "<leader>w", "<Cmd>w<CR>")

keymap.set("n", ">", ">>")
keymap.set("n", "<", "<<")

-- select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- window split
keymap.set("n", "<leader>ss", ":vsplit<Return><C-w>w", { silent = true })
-- move focus
--keymap.set("n", "f", "<C-w>w")
keymap.set("n", "<leader>sh", "<C-w>h")
keymap.set("n", "<leader>sj", "<C-w>j")
keymap.set("n", "<leader>sk", "<C-w>k")
keymap.set("n", "<leader>sl", "<C-w>l")
-- resize window
keymap.set("n", "<leader>s<left>", "<C-w><")
keymap.set("n", "<leader>s<right>", "<C-w>>")
keymap.set("n", "<leader>s<up>", "<C-w>+")
keymap.set("n", "<leader>s<down>", "<C-w>-")
