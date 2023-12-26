vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set number")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "
-- Explorer
vim.keymap.set("n", "<leader>x", ":Ex<CR>", {})
-- Save and quit
vim.keymap.set("n", "<leader>w", ":w<CR>", {})
vim.keymap.set("n", "<leader>q", ":q<CR>", {})
-- Split window
vim.keymap.set("n", "<leader>ss", ":split<CR>", {})
vim.keymap.set("n", "<leader>sv", ":vsplit<CR>", {})
vim.keymap.set("n", "<leader>sc", ":close<CR>", {})
vim.keymap.set("n", "<leader>so", ":only<CR>", {})
-- MOVING BETWEEN WINDOWS
vim.keymap.set("n", "<C-h>", "<C-w>h", {})
vim.keymap.set("n", "<C-j>", "<C-w>j", {})
vim.keymap.set("n", "<C-k>", "<C-w>k", {})
vim.keymap.set("n", "<C-l>", "<C-w>l", {})
-- Harpoon
vim.keymap.set("n", "hm", ':lua require("harpoon.mark").add_file()<CR>', {})
vim.keymap.set("n", "ht", ':lua require("harpoon.ui").toggle_quick_menu()<CR>', {})
vim.keymap.set("n", "hn", ':lua require("harpoon.ui").nav_next()<CR>', {})
vim.keymap.set("n", "hp", ':lua require("harpoon.ui").nav_prev()<CR>', {})
