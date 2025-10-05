vim.lsp.enable({"lua_ls", "clangd", "marksman", "tinymist"})
vim.lsp.config("lua_ls", {
    settings = {
        Lua = {
            workspace = {
                library = vim.api.nvim_get_runtime_file("", true),
            },
        },
    },
})
