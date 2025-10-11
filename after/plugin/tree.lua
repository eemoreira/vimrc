vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 35,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

vim.keymap.set("n", "<leader><tab>", vim.cmd.NvimTreeToggle)
vim.keymap.set("n", "<leader>o", vim.cmd.NvimTreeFocus)
vim.keymap.set("n", "<leader>-", "<cmd>NvimTreeResize -5<CR>")
vim.keymap.set("n", "<leader>+", "<cmd>NvimTreeResize +5<CR>")
