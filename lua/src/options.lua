vim.o.number = true
vim.o.wrap = false

vim.o.ts = 4
vim.o.sw = 4
vim.o.so = 10
vim.o.et = true
vim.o.ai = true
vim.o.hls = false

vim.o.signcolumn = "yes"
vim.o.swapfile = false
vim.o.undofile = true
vim.o.guicursor = "n-v-c-i-c:block-Cursor"
vim.o.winborder = "rounded"
vim.g.mapleader = " "
vim.o.termguicolors = true

local map = vim.keymap.set


map({ "n", "v", "x" }, "<leader>y", '"+y<CR>')
map({ "n", "v", "x" }, "<leader>d", '"+d<CR>')
map("i", "<C-n>", "<C-x><C-o>")
map("n", "<leader>cpd", "<cmd>Copilot disable<CR>")
map("n", "<C-j>", "<cmd>cnext<CR>")
map("n", "<C-k>", "<cmd>cprev<CR>")
map("n", "<A-c>", "<cmd>cclose<CR>")
map("n", "<leader>lf", vim.lsp.buf.format)
map("n", "<leader>rn", vim.lsp.buf.rename, { desc = "LSP Rename" })
