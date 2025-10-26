local builtin = require('telescope.builtin')
local map = vim.keymap.set
map('n', "<leader>f",  builtin.find_files,           { desc = 'Telescope find files' })
map('n', "<leader>g",  builtin.live_grep,            { desc = 'Telescope live grep' })
map("n", "<leader>si", builtin.grep_string,          { desc = 'Telescope grep string'})
map("n", "<leader>sr", builtin.lsp_references,       { desc = 'Telescope LSP references' })
map("n", "<leader>sd", builtin.lsp_definitions,      { desc = 'Telescope LSP definitions' })
map("n", "<leader>ss", builtin.lsp_document_symbols, { desc = 'Telescope LSP document symbols' })
