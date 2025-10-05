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

vim.keymap.set({"n", "v", "x"}, "<leader>y", '"+y<CR>')
vim.keymap.set({"n", "v", "x"}, "<leader>d", '"+d<CR>')
