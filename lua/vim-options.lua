vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set number")
-- vim.cmd("set relativenumber")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set smartindent")
vim.cmd("set autoindent")
vim.g.mapleader = " "
-- Explorer
vim.keymap.set("n", "<leader>x", ":Ex<CR>", {})
--Bufferline
vim.keymap.set("n", "<leader>bl", ":BufferLinePick<CR>")
-- Save and quit
vim.keymap.set("n", "<leader>w", ":w<CR>", {})
vim.keymap.set("n", "<leader>q", ":q<CR>", {})
--Delete word
vim.keymap.set("n", "dw", "diw")
-- Select all
vim.keymap.set("n", "<leader>a", "gg<S-v>G")
-- New tab
vim.keymap.set("n", "te", ":tabedit<CR>")
vim.keymap.set("n", "<tab>", ":tabnext<Return>", {})
vim.keymap.set("n", "<s-tab>", ":tabprev<Return>", {})
-- Split window
vim.keymap.set("n", "<leader>ss", ":split<CR>", {})
vim.keymap.set("n", "<leader>sv", ":vsplit<CR>", {})
vim.keymap.set("n", "<leader>sc", ":close<CR>", {})
vim.keymap.set("n", "<leader>so", ":only<CR>", {})
--MOVING BETWEEN WINDOWS
vim.keymap.set("n", "<C-h>", "<C-w>h", {})
vim.keymap.set("n", "<C-j>", "<C-w>j", {})
vim.keymap.set("n", "<C-k>", "<C-w>k", {})
vim.keymap.set("n", "<C-l>", "<C-w>l", {})
-- Harpoon
vim.keymap.set("n", "<leader>hm", ':lua require("harpoon.mark").add_file()<CR>', {})
vim.keymap.set("n", "<leader>ht", ':lua require("harpoon.ui").toggle_quick_menu()<CR>', {})
vim.keymap.set("n", "<leader>hn", ':lua require("harpoon.ui").nav_next()<CR>', {})
vim.keymap.set("n", "<leader>hp", ':lua require("harpoon.ui").nav_prev()<CR>', {})

vim.transparent_window = true

-- todo
vim.keymap.set("n", "<leader>t", ":TodoLocList<CR>")
vim.keymap.set("n", "<leader>tn", function()
	require("todo-comments").jump_next()
end, { desc = "Next todo comment" })
