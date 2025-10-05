vim.lsp.enable({ "lua_ls", "clangd" })
vim.lsp.config("lus_ls", {
    settings = {
        Lua = {
            workspace = {
                library = vim.api.nvim_get_runtime_file("", true),
            },
        },
    },
})
