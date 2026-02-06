vim.g.mapleader = " "
local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set("i", "ej", "<ESC>", { silent = true })
keymap.set("v", "ej", "<ESC>", { silent = true })
-- keymap.set("n", "+", "<C-a>")
-- keymap.set("n", "-", "<C-x>")

--Select all
keymap.set("n", "<C-a>", "gg<S-v>G")
--split window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)
--move window
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sl", "<C-w>l")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sk", "<C-w>k")

keymap.set("v", "J", ":m '>+2<CR>gv=gv")
keymap.set("v", "K", ":m '<-1<CR>gv=gv")

keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")

keymap.set("x", "<leader>p", '"_dP')





