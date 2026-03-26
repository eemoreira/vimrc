vim.lsp.enable({ "lua_ls", "rust_analyzer", "clangd", "pyright", "tinymist", "gopls", "kotlin_language_server",
    "r_language_server"
})

vim.lsp.buf.hover({
    border = "double",
    height = 120,
    width = 80,
    offset_x = 0,
    offset_y = 0,
})

vim.lsp.config("lua_ls", {
    settings = {
        Lua = {
            workspace = {
                library = vim.api.nvim_get_runtime_file("", true),
            },
        },
    },
})

vim.diagnostic.config({
    virtual_text = {
        prefix = "●",
    },
    float = {
        source = true,
    },
})
