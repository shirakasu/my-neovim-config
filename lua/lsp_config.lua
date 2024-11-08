require("mason").setup()
require("mason-lspconfig").setup {
    ensure_installed = { "lua_ls", "docker_compose_language_service", "dockerls" },
}

require("lspconfig").lua_ls.setup {}
require("lspconfig").docker_compose_language_service.setup {}
require("lspconfig").dockerls.setup {}

-- [Warning]: You should install Clangd in your local.
require("lspconfig").clangd.setup {}
