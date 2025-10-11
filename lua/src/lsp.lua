vim.lsp.enable({ "lua_ls", "clangd", "basedpyright", "marksman", "tinymist", "gopls", "ts_ls",
    "docker_compose_language_service", "docker_language_server", "phpactor", "vscode-json-language-server" })

vim.lsp.config("lua_ls", {
    settings = {
        Lua = {
            workspace = {
                library = vim.api.nvim_get_runtime_file("", true),
            },
        },
    },
})
