-- go back to last position on buffer
vim.api.nvim_create_autocmd("BufReadPost", {
  pattern = "*",
  callback = function()
    local last_pos = vim.fn.line([['"]])
    if last_pos > 0 and last_pos <= vim.fn.line("$") then
      vim.cmd('normal! g`"')
      vim.cmd('normal! zz')
    end
  end,
})

-- auto-complete
vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(ev)
    local client = vim.lsp.get_client_by_id(ev.data.client_id)
    if client then
      if client:supports_method("textDocument/completion") then
        vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
      end
    end
  end,
})
vim.cmd("set completeopt+=noselect")

-- format on save
vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = {"*.lua", "*.cpp", "*.c", "*.cc", "*.js", "*.ts", "*.jsx", "*.tsx", "*.json", "*.css", "*.scss", "*.html", "*.md", "*.py"},
  callback = function()
    vim.lsp.buf.format()
  end,
})
