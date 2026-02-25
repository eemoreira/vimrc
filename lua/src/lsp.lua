vim.lsp.enable({ "lua_ls", "rust_analyzer", "clangd", "basedpyright", "marksman", "tinymist", "gopls", "ts_ls",
    "docker_compose_language_service", "docker_language_server",
    "phpactor", "vscode-json-language-server", "jdtls", "kotlin_language_server",
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
